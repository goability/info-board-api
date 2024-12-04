from fastapi import FastAPI
from app.routes import users

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Welcome to the Infoboard API"}

# Import and include your route files here

app.include_router(users.router)
# app.include_router(tasks.router)
# app.include_router(events.router)
# app.include_router(grocery.router)
# app.include_router(messages.router)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
