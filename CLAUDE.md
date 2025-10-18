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

## Project Structure
```
lib/
├── app/                    # Application-level code
│   ├── router/            # go_router configuration
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
2. Analyze existing UI components in the project
3. Identify reusable elements
4. Adapt generated code to project standards
5. Integrate with existing design system (ColorService, AppFonts, flutter_lucide)
6. Ensure responsive and adaptive implementation

**Remember**: Figma output is a starting point, not a final solution. Always refactor to match project architecture and standards.

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
7. ✅ **ALWAYS** use relative imports when importing local files
8. ✅ **ALWAYS** name pages with `_page.dart` suffix
9. ✅ **ALWAYS** place BLoCs in a `blocs/` folder at the same level as their page
10. ✅ **ALWAYS** check for existing UI components before creating new ones
11. ✅ **ALWAYS** adapt Figma designs to project context and standards

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

### iOS
- Swift-based implementation
- Configure Bundle identifier for production
- Ensure proper certificates and provisioning profiles

## Code Quality

- Run `flutter analyze` before committing code
- Follow the lints defined in `analysis_options.yaml`
- Ensure code adheres to Clean Architecture principles
- Keep code modular and testable