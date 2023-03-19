from fastapi import FastAPI

app = FastAPI()


@app.get("/test")
async def root():
    return {"message": "WDI23 - Dawid Zając"}