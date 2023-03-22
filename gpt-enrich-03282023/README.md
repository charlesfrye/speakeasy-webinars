```bash
docker run -p 80:8080 -e SWAGGER_JSON=/specs/start.yaml -v $(pwd):/specs/  swaggerapi/swagger-ui
```
