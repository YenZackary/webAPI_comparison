from fastapi import FastAPI

app = FastAPI()

@app.get("/api/greet")
def greet(name: str = 'World'):
    return {"message": f"Hello, {name}!"}