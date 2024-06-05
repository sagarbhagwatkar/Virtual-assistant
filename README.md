# Gmail Virtual Assistant

## Overview
The Gmail Virtual Assistant is a Dockerized application designed to automate the process of generating customized emails based on user inputs. It utilizes a Streamlit interface for user interactions and connects to the Ollama service for natural language processing and email content generation.

## Features
- **Automated Email Generation:** Generate customized emails based on a provided topic, job description, and resume.
- **User-Friendly Interface:** Simple and intuitive web interface powered by Streamlit.
- **Gmail Integration:** Authenticate with Gmail API to create email drafts directly in your Gmail account.
- **Dockerized Setup:** Easily deploy and run the application using Docker Compose.

## Requirements
- Docker
- Docker Compose

## Setup Instructions

### Prerequisites
1. **Google Account:** Ensure you have a Google account with Gmail enabled.
2. **Gmail API:** Enable the Gmail API for your Google account and download the `credentials.json` file.

### Installation

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/gmail-virtual-assistant.git
   cd gmail-virtual-assistant
   ```

2. **Create the `credentials.json` file:**
   Place your `credentials.json` file in the project directory.

3. **Build and Run the Docker Containers:**
   Use Docker Compose to build and run the containers.
   ```bash
   docker-compose up --build
   ```

### Configuration
- **Environment Variables:**
  The `docker-compose.yml` file specifies an environment variable `OLLAMA_API_URL` for the Streamlit service to communicate with the Ollama service.

### Accessing the Application
After starting the containers, the Streamlit application will be accessible at `http://localhost:8501`.

## Project Structure

```
gmail-virtual-assistant/
├── Dockerfile.ollama
├── Dockerfile.streamlit
├── entrypoint.sh
├── app.py
├── requirements.txt
├── credentials.json
├── token.json
└── docker-compose.yml
```

- **Dockerfile.ollama:** Builds the Ollama service container.
- **Dockerfile.streamlit:** Builds the Streamlit service container.
- **entrypoint.sh:** Entrypoint script for the Ollama service container.
- **app.py:** Streamlit application script.
- **requirements.txt:** Python dependencies.
- **credentials.json:** Gmail API credentials file.
- **token.json:** Gmail API token file.
- **docker-compose.yml:** Docker Compose configuration file.

## Usage

### Generating an Email
1. **Open the Streamlit App:** Access `http://localhost:8501` in your web browser.
2. **Fill in the Email Details:** Provide the email topic, subject, sender name, recipient email, recipient name, writing style, job description, and upload a resume (PDF or Word).
3. **Generate the Email:** Click the "Generate" button to create an email draft. The draft will be created in your Gmail account, and the draft content will be displayed in the app.

## Contributing
If you wish to contribute to the project, please fork the repository and create a pull request with your changes. Ensure that your code follows the project's coding standards and includes appropriate documentation.

## Acknowledgments
- Thanks to the contributors and the open-source community for their support.
- Special thanks to Google for providing the Gmail API.

## Contact
For any questions or suggestions, please reach out to sagarbhagwatkar99@gmail.com
