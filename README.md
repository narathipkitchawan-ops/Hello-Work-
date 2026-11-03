# Gemini CLI Installer

A small installer for Google's official Gemini CLI npm package. It checks that Node.js 20 or newer and npm are available, then installs `@google/gemini-cli` globally.

## Requirements

- Node.js 20 or newer
- npm (included with Node.js)
- Internet access

## Install on macOS or Linux

Download or clone this repository, then run the script from its directory:

```bash
bash install-gemini.sh
```

The script installs the official package using:

```bash
npm install --global @google/gemini-cli
```

After installation, start Gemini CLI with:

```bash
gemini
```

On first use, follow Gemini CLI's prompts to authenticate. See the [official installation guide](https://geminicli.com/docs/get-started/installation/) for details and other installation options.

## Install on Windows

Install Node.js 20 or newer, open PowerShell, and run:

```powershell
npm install --global @google/gemini-cli
gemini
```

## Troubleshooting

If `npm` reports a permissions error, consult npm's documentation for configuring a user-level global package directory rather than running an unknown installer with elevated privileges. If `gemini` is not found after installation, restart your terminal and check that npm's global package directory is on your `PATH`.
