# Getting Started

To set up the development environment, run:

```bash
bin/setup
```

This will install dependencies and prepare the database for development.

## Tech Stack

- **Ruby**: 3.4.7
- **Rails**: 8.1.1
- **Javascript dependencies**: Import maps
- **Styling**: Tailwind CSS
- **UI Components**: Daisy UI
- **Hot Reloading**: Hotwire Spark (automatically reloads the dev environment when files change)

## Development

The application uses Hotwire Spark to proactively reload your development environment. Simply edit your files and the changes will be automatically applied.

## About This Project

This application was built for a workshop presented at the Melbourne Ruby Meetup on November 27, 2025.

The git history is structured intentionally: the commit `basic application` represents the finished, fully-featured delivery app. Each subsequent commit removes functionality, gradually stripping the application back to a barebones state. This structure allows workshop participants to start with a minimal app and progressively add features, or to review how each feature is implemented by examining the corresponding commits.
