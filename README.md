# Jenkins-Pipeline Go App

This is a simple Go project that demonstrates continuous integration using **GitHub Actions**. It builds, tests, and archives the Go binary whenever code is pushed or a pull request is opened on the `main` branch.

---

## 🛠️ Project Structure

```bash
.
├── main.go              # Your Go application
├── go.mod               # Go module file
├── go.sum               # Go dependency checksums
└── .github
    └── workflows
        └── go.yml       # GitHub Actions CI Workflow
