# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter mobile application project named "моспром" - a social network platform with interest-based communities and content for youth and technology/engineering companies. The app allows users to create and subscribe to communities, and features a feed with posts from user's communities and other interesting content.

The project targets Android and iOS platforms exclusively.

## Technology Stack

- **Framework**: Flutter, Dart
- **State Management**: flutter_bloc
- **Code Generation**: freezed
- **HTTP Client**: dio
- **Dependency Injection**: get_it (GetIt injector)
- **Navigation**: go_router
- **Icons**: flutter_lucide

## Development Workflow

When working on a task, follow this sequence:

1. **Dependencies** - Install/update project dependencies
2. **Code Work** - Implement the required changes
3. **Analysis** - Run static code analysis
4. **Hot Reload** - Apply changes (only if the app is already running; skip if not running)

## Developer Commands

### Dependencies Management
- `flutter pub get` - Install/update dependencies

### Analysis
- `flutter analyze` - Run static analysis on the codebase

### Hot Reload/Restart
- Hot restart the running application to apply changes (only if app is running)

**Note**: Build and start commands are intentionally excluded from this workflow. Use the IDE or manual commands for building and starting the application.

## Architecture Principles

The project follows **Clean Architecture** with three layers:

1. **Data Layer** - Data sources, models, repository implementations
2. **Domain Layer** - Use cases, entities, failures, repository interfaces
3. **Presentation Layer** - Pages, widgets, BLoC components

**Code Quality Guidelines**:
- Follow OOP (Object-Oriented Programming) principles
- Adhere to SOLID principles
- Keep solutions concise and avoid over-engineering
- Maintain clean architecture without excessive complexity

## Navigation System

### go_router Configuration

**CRITICAL**: All navigation in the application MUST be handled through go_router.

### Navigation Rules

1. **Centralized Routing**: All routes are defined in `app/router/`
2. **No Direct Navigation**: Never use `Navigator.push()`, `Navigator.pop()`, or other Navigator methods directly
3. **go_router Methods Only**: Use only go_router methods:
   - `context.go('/path')` - Navigate with replacement
   - `context.push('/path')` - Navigate with stack preservation
   - `context.pop()` - Go back
   - `context.goNamed('routeName')` - Navigate using named routes
   - `context.pushNamed('routeName')` - Push using named routes

### Deep Linking Support

**MANDATORY**: Every page in the application MUST support deep linking.

#### Deep Linking Requirements

1. **Route Configuration**: Each route must have a proper path defined in go_router configuration
2. **Parameter Handling**: Routes with parameters must properly handle URL parameters
3. **State Restoration**: Pages should restore their state when opened via deep link
4. **Validation**: Validate parameters received from deep links
5. **Error Handling**: Handle invalid or expired deep links gracefully

#### Deep Link Structure

```dart
// Example route with deep linking support
GoRoute(
  path: '/community/:communityId',
  name: 'community',
  builder: (context, state) {
    final communityId = state.pathParameters['communityId'];
    return CommunityPage(communityId: communityId);
  },
),
```

#### Deep Link Testing

When implementing a new page:
1. Ensure the route is properly registered in go_router
2. Test navigation via `context.push()` or `context.go()`
3. Test direct URL access (deep link simulation)
4. Verify parameter passing and state restoration

### Navigation Best Practices

1. **Named Routes**: Prefer named routes for better maintainability
2. **Type Safety**: Use route parameters with proper type checking
3. **Analytics**: Consider adding navigation analytics hooks
4. **Transitions**: Configure custom transitions in go_router if needed
5. **Guards**: Implement route guards for authentication/authorization when necessary

## Project Structure
```
lib/
├── app/                    # Application-level code
│   ├── router/            # go_router configuration (MANDATORY for all navigation)
│   └── services/          # App-wide services
├── core/                   # Core utilities and constants
│   ├── consts/            # Constants (AppColors, AppFonts)
│   │   ├── app_colors.dart
│   │   ├── app_fonts.dart
│   ├── di/                # Dependency injection setup
│   └── services/          # Core services (ColorService, etc.)
├── domain/                 # Business logic layer
│   ├── entities/          # Domain entities
│   ├── failures/          # Error handling
│   ├── repositories/      # Repository interfaces
│   └── usecases/          # Business use cases
├── data/                   # Data layer
│   ├── datasources/       # Remote and local data sources
│   ├── models/            # Data models
│   └── repositories/      # Repository implementations
├── presentation/           # UI layer
│   ├── pages/             # Application pages
│   │   └── [feature]/
│   │       ├── [feature]_page.dart
│   │       └── blocs/     # BLoC components for this page
│   └── widgets/           # Reusable widgets (cards, etc.)
└── ui/                     # Common UI components
    ├── buttons/           # Button components
    ├── text_fields/       # Input components
    └── ...                # Other shared UI elements
```

**Folder Structure Notes**:
- Create subfolders as needed for better organization
- BLoC components are stored at the same level as their corresponding page in a `blocs/` subfolder
- Use relative imports for file references

## Naming Conventions

- **Pages**: All screen files must be named with `_page.dart` suffix (not `_screen.dart`)
- **Example**: `home_page.dart`, `profile_page.dart`, `community_page.dart`

## Design System

### AppColors (`core/consts/app_colors.dart`)
- Stores all color constants used in the application
- **Do not use hardcoded colors elsewhere in the codebase**

### AppFonts (`core/consts/app_fonts.dart`)
- Contains all font family definitions and text styles
- **All text styling must reference AppFonts**

### Icons (`flutter_lucide`)
- Lib with all icon assets and icon data
- **All icons must be referenced through flutter_lucide**

### ColorService (`core/services/color_service.dart`)
- Service that manages color selection based on current theme (light/dark)
- Wraps AppColors constants with theme-aware logic
- **Variables are named by purpose, not by color value** (e.g., `text`, `background`, `primary` instead of `white`, `black`, `blue`)
- This semantic naming ensures theme consistency and makes code more maintainable
- **All color references in widgets and pages must use ColorService**
- Example pattern: `ColorService.instance.text` instead of direct color values or color names

### Loaders
All loaders must be `CupertinoActivityIndicator`

## Using Existing UI Components

### CRITICAL RULE: Always Use Project's Custom UI Components

**MANDATORY**: Before adding ANY UI element, you MUST check if a custom component already exists in the project.

### Where to Look for Existing Components
1. **`ui/` folder** - Contains all reusable UI components (buttons, text fields, cards, etc.)
2. **`presentation/widgets/` folder** - Contains feature-specific reusable widgets

### Component Search Process (REQUIRED)

**Before writing ANY UI widget**, follow this mandatory checklist:

1. ✅ Check `ui/` subfolders for other UI elements
2. ✅ Check `presentation/widgets/` for reusable widgets
3. ✅ If found - USE THE EXISTING COMPONENT
4. ✅ If not found - only then create a new component / call system component.

### Component Replacement Rules

When implementing ANY feature:

1. **Buttons**: Never use `TextButton`, `ElevatedButton`, `OutlinedButton`, `IconButton` - always check `ui/buttons/` first
2. **Text Fields**: Never use `TextField`, `TextFormField` - always check `ui/text_fields/` first
3. **Cards**: Never create custom `Card` widgets - check `ui/` and `presentation/widgets/` first
4. **Containers**: Check if styled containers already exist before creating new ones
5. **Lists**: Check if list items/tiles already exist before creating new ones

### When You Find an Existing Component

1. **Use it as-is** if it fits your needs
2. **Extend it** if it needs minor modifications (add parameters, not new widgets)
3. **Consult** before creating alternatives - maybe the existing component should be enhanced instead

### Component Discovery is NOT Optional

This is a **mandatory workflow step**, not a suggestion:

```
REQUIRED WORKFLOW:
1. Understand the UI requirement
2. → SEARCH for existing components (ui/, presentation/widgets/)
3. → IF found: Use existing component
4. → IF not found: Create new component following project standards
5. Implement the feature
```

**Failure to follow this workflow results in:**
- ❌ Code duplication
- ❌ Inconsistent UI across the app
- ❌ Technical debt
- ❌ Wasted development time

## Working with Figma MCP Server

When using Figma MCP server to generate UI components:

### Critical Guidelines

1. **Context Awareness**: Code generated by Figma doesn't know the project context or existing UI elements
2. **Check Existing Components**: Always verify if similar UI elements already exist in the project before creating new ones
3. **Adapt, Don't Copy**: Take Figma-generated widgets and rework them to fit the project structure
4. **Follow Project Rules**: Ensure generated code adheres to all project conventions (ColorService, AppFonts, flutter_lucide)
5. **Avoid Over-complexity**: Don't overload the codebase with unnecessary or overly complex widgets
6. **Responsiveness**: Consider adaptivity and responsive design when implementing Figma designs
7. **Reuse Before Create**: Check `ui/` and `presentation/widgets/` folders for reusable components

### Workflow with Figma
1. Get design from Figma MCP server
2. **MANDATORY**: Analyze existing UI components in the project (ui/, presentation/widgets/)
3. Identify reusable elements
4. Replace Figma's standard widgets with project's custom components
5. Adapt remaining code to project standards
6. Integrate with existing design system (ColorService, AppFonts, flutter_lucide)
7. Ensure responsive and adaptive implementation

**Remember**: Figma output is a starting point, not a final solution. Always refactor to match project architecture and standards. **ALWAYS replace standard Flutter widgets with project's custom components.**

## Code Style

### Comments Policy
- ❌ **DO NOT** leave comments in the code
- Code should be self-documenting through clear naming and structure
- If code requires explanation, refactor it to be more readable instead
- Exception: Public API documentation comments are allowed when necessary

## Strict Rules

1. ❌ **DO NOT** use fonts outside of AppFonts
2. ❌ **DO NOT** use icons outside of flutter_lucide
3. ❌ **DO NOT** use colors outside of ColorService
4. ❌ **DO NOT** use color names in ColorService (use semantic names like `text`, `background`, `primary`)
5. ❌ **DO NOT** leave comments in the code
6. ❌ **DO NOT** blindly copy Figma-generated code without adaptation
7. ❌ **DO NOT** use standard Flutter UI widgets (TextButton, ElevatedButton, TextField, etc.) without first checking if custom components exist
8. ❌ **DO NOT** create new UI components without checking ui/ and presentation/widgets/ folders first
9. ❌ **DO NOT** skip the component discovery step - it is MANDATORY
10. ❌ **DO NOT** use Navigator.push(), Navigator.pop(), or any direct Navigator methods
11. ❌ **DO NOT** implement pages without deep linking support
12. ✅ **ALWAYS** use relative imports when importing local files
13. ✅ **ALWAYS** name pages with `_page.dart` suffix
14. ✅ **ALWAYS** place BLoCs in a `blocs/` folder at the same level as their page
15. ✅ **ALWAYS** check ui/ and presentation/widgets/ folders before adding ANY UI element
16. ✅ **ALWAYS** use existing custom components instead of standard Flutter widgets
17. ✅ **ALWAYS** adapt Figma designs to use project's custom components
18. ✅ **ALWAYS** use go_router for ALL navigation (context.go(), context.push(), context.pop(), etc.)
19. ✅ **ALWAYS** configure routes in app/router/ directory
20. ✅ **ALWAYS** implement deep linking support for every page
21. ✅ **ALWAYS** test both programmatic navigation and deep link access for new pages

## Application Domain Context

**моспром** is a social networking application featuring:

- **Users**: Can create profiles and interact with content
- **Communities**: Interest-based groups that users can create and join
- **Posts**: Content shared within communities
- **Feed**: Personalized stream showing posts from subscribed communities and recommended content
- **Target Audience**: Youth and professionals from technology/engineering companies

When implementing features, consider this social network context and the community-centric approach.

## Platform-Specific Notes

### Android
- Uses Kotlin with Java 11 target
- Application ID should be updated for production
- Configure proper signing for release builds
- Configure Android deep linking in AndroidManifest.xml

### iOS
- Swift-based implementation
- Configure Bundle identifier for production
- Ensure proper certificates and provisioning profiles
- Configure iOS universal links for deep linking

## Code Quality

- Run `flutter analyze` before committing code
- Follow the lints defined in `analysis_options.yaml`
- Ensure code adheres to Clean Architecture principles
- Keep code modular and testable