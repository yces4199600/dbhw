#!/usr/bin/env python3
# coding=utf-8
# -*- coding: UTF-8 -*-
#uvicorn main:app --reload
from xmlrpc.client import boolean
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
import pymysql

app = FastAPI()

origins = ["*"]


db_settings = {
    "host": "127.0.0.1",
    "port": 3306,
    "user": "root",
    "password": "rootroot",
    "db": "new_schema",
    "charset": "utf8",
}

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=[""],
    allow_headers=[""],
)

c = pymysql.connect(**db_settings)
cursor = c.cursor(pymysql.cursors.DictCursor)
cursor2 = c.cursor()


def checkaccount(account):
    command = f"SELECT COUNT(*) FROM `user` WHERE `account` = \"{account}\""
    cursor2.execute(command)
    r1 = cursor2.fetchall()
    if(boolean(r1[0][0])):
        return False
    else:
        return True



@app.get('/')
def index():
    print("on")

@app.get("/signup/{account}/{password}/{email}/{phone}")
async def signup(account, password, email, phone):
    flag = checkaccount(account)
    print(flag)
    if(flag):
        command = f"INSERT INTO `user` (`account`, `password`, `email`, `phone`) VALUES (\"{account}\", \"{password}\", \"{email}\", \"{phone}\");"
        print(command)
        cursor2.execute(command)
        c.commit()
        return "S"
    else:
        return "F"

@app.get("/login/{account}/{password}")
def login(account, password):
    flag = checkaccount(account)
    if(flag):
        return "U"    
    else:
        command = f"SELECT password FROM user WHERE account=\"{account}\";"
        print(command)
        cursor2.execute(command)
        r = cursor2.fetchone()
        if(str(r[0]) != password):
            return "F" 
        else:
            return account

#'http://localhost:8000/login/' + this.account + '/' + this.password
#'http://localhost:8000/checkaccount/' + this.account