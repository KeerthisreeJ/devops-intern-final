# devops-intern-final

![CI Pipeline](https://github.com/KeerthisreeJ/devops-intern-final/workflows/CI%20Pipeline/badge.svg)


DevOps Final Assessment Project

## Project Description

This repository demonstrates a complete DevOps workflow including Git, Linux scripting, Docker, CI/CD with GitHub Actions, Nomad job deployment, and monitoring with Grafana Loki.

---

## Repository Structure
```
devops-intern-final/
├── .github/
│   └── workflows/
│       └── ci.yml              # GitHub Actions CI/CD pipeline
├── scripts/
│   └── sysinfo.sh              # Linux system info script
├── nomad/
│   └── hello.nomad             # Nomad job configuration
├── monitoring/
│   └── loki_setup.txt          # Loki monitoring setup guide
├── Dockerfile                   # Container configuration
├── hello.py                     # Python application
└── README.md                    # This file
```

---

## How to Run Each Component

### 1. Run the Python Script
```bash
python hello.py
```

### 2. Run the System Info Script
```bash
chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh
```

### 3. Build and Run Docker Container
```bash
# Build the image
docker build -t hello-devops .

# Run the container
docker run hello-devops
```

### 4. CI/CD Pipeline

The GitHub Actions workflow runs automatically on every push to the main branch.

View it at: `https://github.com/YOUR_USERNAME/devops-intern-final/actions`

### 5. Nomad Deployment
```bash
# Validate the job file
nomad job validate nomad/hello.nomad

# Run the job (requires Nomad cluster)
nomad job run nomad/hello.nomad

# Check status
nomad job status hello-devops
```

### 6. Monitoring with Loki

See detailed setup instructions in `monitoring/loki_setup.txt`

Quick start:
```bash
docker run -d --name=loki -p 3100:3100 grafana/loki:latest
docker run -d --name=grafana -p 3000:3000 --link loki grafana/grafana:latest
```

Access Grafana at: http://localhost:3000 (admin/admin)

---

## Technologies Used

- **Git & GitHub**: Version control and repository hosting
- **Linux Bash**: System scripting and automation
- **Python**: Application development
- **Docker**: Containerization
- **GitHub Actions**: CI/CD automation
- **HashiCorp Nomad**: Container orchestration
- **Grafana Loki**: Log aggregation and monitoring

---

## Assessment Checklist

- [x] Git repository initialized
- [x] README with name and date
- [x] hello.py script created
- [x] Linux sysinfo.sh script created
- [x] Dockerfile for containerization
- [x] GitHub Actions CI/CD pipeline
- [x] Nomad job configuration
- [x] Loki monitoring documentation

---

## Learning Outcomes

Through this project, I demonstrated:

- Version control with Git and GitHub
- Linux command line and shell scripting
- Container creation and management with Docker
- Automated testing with CI/CD pipelines
- Infrastructure as Code with Nomad
- Log management and monitoring concepts

---
