# MLflow Model Serving

This runs container for provide model serving managed by [MLflow](https://mlflow.org/) server.

[![Run](https://staroid.com/api/run/button.svg)](https://staroid.com/api/run)

## Development

Run locally with [skaffold](https://skaffold.dev) command.

```
$ skaffold dev --port-forward -p minikube
```

and browse `http://localhost:5000`
