from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/about/me")
async def about_me():
    name = os.getenv("MYNAME", "mohcine")
    lastname = os.getenv("MYLASTNAME", "tor")
    return {
        "Name": name,
        "LastName": lastname,
        "FullName": f"{name} {lastname}"
    }