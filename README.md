# ADK Workshop - Basketball Agent Setup Guide

Welcome to the ADK (Agent Development Kit) workshop! This guide will help you set up your development environment and create a basketball agent application.


## Veo 3 Prompting Tips: 

**Composition**: How the shot is framed (wide shot, close-up, low angle)
**Camera Motion**: What the camera is doing (tracking shot, POV)
**Subject** Description: Clearly identify characters, objects, or elements  (a woman in her 20s with blond hair)
**Action**: Describe the movements or events occurring (singing, running, discussing)
**Location**: Specify the environment or setting
**Style**: Overall aesthetic (3D animation, Film Noir etc)
**Dialogue**: Provide character speech in transcript format (using quotation marks).
**Implicit or Explicit Audio Cues**: Hints about desired sound elements can be beneficial.

### Example Basketball Scene:

```bash
Create a video with the following characteristics: 

**Composition:** Wide shot capturing the full court, then dramatic close-up on the player's determined face
**Camera Motion:** Dynamic tracking shot following the ball, then slow-motion POV from the player's perspective during the final shot
**Subject Description:** A tall African-American basketball player in his early 20s with muscular build, wearing a red #23 jersey, sweat glistening on his face
**Action:** Player dribbles down the court with lightning speed, performs a crossover move to evade defenders, then leaps for a spectacular slam dunk
**Location:** Professional basketball arena with bright LED lighting, packed crowd in the background, wooden court with gleaming finish
**Style:** Cinematic sports photography with dramatic lighting, slow-motion effects during key moments, vibrant colors
**Dialogue:** "This is it! Time to show them what we're made of!" (player's internal monologue)
**Audio Cues:** Crowd cheering building to a crescendo, sneakers squeaking on the court, the satisfying swish of the net, dramatic orchestral music building tension
```

## Prerequisites

- Python 3.8 or higher
- Google Cloud Console access
- A GCP project with storage bucket access

## Setup Instructions

### 1. Create Virtual Environment

```bash
python -m venv .venv
```

### 2. Activate Virtual Environment

```bash
source .venv/bin/activate
```

### 3. Install Google ADK

```bash
sudo python3 -m pip install google-adk==1.2.1
```

### 4. Install Dependencies

```bash
cd adk-workshop-3Jul2025
sudo python3 -m pip install -r requirements.txt
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

