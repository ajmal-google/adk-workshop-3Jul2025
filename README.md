# ADK Workshop - Basketball Agent Setup Guide

Welcome to the ADK (Agent Development Kit) workshop! This guide will help you set up your development environment and create a basketball agent application.

## Prerequisites

- Python 3.8 or higher
- Google Cloud Console access
- A GCP project with storage bucket access

## Setup Instructions

### 1. Create Virtual Environment

```bash
python -m venv .venv
```

### 2. Install Google ADK

```bash
sudo python3 -m pip install google-adk==1.2.1
```

### 3. Activate Virtual Environment

```bash
source .venv/bin/activate
```

### 4. Download and Extract Project Files

```bash
# Replace YOUR_GCP_PROJECT_ID with your actual project ID
gcloud storage cp gs://YOUR_GCP_PROJECT_ID-bucket/adk_project.zip ./adk_project.zip
unzip adk_project.zip
```

### 5. Install Dependencies

```bash
sudo python3 -m pip install -r adk_project/requirements.txt
pip install google-adk toolbox-core
```

### 6. Create Basketball Agent Application

```bash
adk create basketball-agent-app
```

## Cloud Console Setup

**Note:** The following commands should be executed in a Google Cloud Console Shell.

### 7. Download Toolbox

```bash
export VERSION=0.6.0
curl -O https://storage.googleapis.com/genai-toolbox/v$VERSION/linux/amd64/toolbox
chmod +x toolbox
```

### 8. Create Tools Configuration

Create a `tools.yaml` file in your project directory with the required configuration.

### 9. Run Toolbox

```bash
./toolbox --tools-file "tools.yaml"
```

Append `/api/toolset` to the end URL to check the tools available.


### 10. Let's create our agent scaffolding

```bash
adk create basketball-agents
```

Paste the following into the `agent.py`

```python
from google.adk.agents import Agent
from toolbox_core import ToolboxSyncClient

toolbox = ToolboxSyncClient("http://127.0.0.1:5000")

# Load all the tools
tools = toolbox.load_toolset('basketball-toolset')

root_agent = Agent(
    name="basketball_agent",
    model="gemini-2.0-flash",
    description=(
        "Agent to answer questions about basketball games."
    ),
    instruction=(
        "You are a helpful agent who can answer user questions about basketball games."
    ),
    tools=tools,
)
```

## Quick Reference

| Step | Command | Description |
|------|---------|-------------|
| 1 | `python -m venv .venv` | Create virtual environment |
| 2 | `sudo python3 -m pip install google-adk==1.2.1` | Install Google ADK |
| 3 | `source .venv/bin/activate` | Activate virtual environment |
| 4 | `gcloud storage cp gs://YOUR_GCP_PROJECT_ID-bucket/adk_project.zip ./adk_project.zip` | Download project files |
| 5 | `unzip adk_project.zip` | Extract project files |
| 6 | `sudo python3 -m pip install -r adk_project/requirements.txt` | Install project dependencies |
| 7 | `pip install google-adk toolbox-core` | Install additional packages |
| 8 | `adk create basketball-agent-app` | Create basketball agent |
| 9 | `curl -O https://storage.googleapis.com/genai-toolbox/v$VERSION/linux/amd64/toolbox` | Download toolbox (Cloud Console) |
| 10 | `chmod +x toolbox` | Make toolbox executable |
| 11 | `./toolbox --tools-file "tools.yaml"` | Run toolbox |

## Troubleshooting

- **Permission Issues**: Use `sudo` for system-wide installations
- **Virtual Environment**: Always activate your virtual environment before running ADK commands
- **GCP Project**: Ensure you have the correct project ID and bucket access
- **Toolbox Version**: Replace `$VERSION` with the actual version number provided

## Support

If you encounter any issues during setup, please refer to the workshop materials or contact your instructor.

---

**Workshop Date:** 3rd July 2025  
**Contact:** 0451 664 698

