import fastapi
from fastapi import FastAPI
import requests
import regex as re

import handlers
from cfg import cur, conn


app = FastAPI()
