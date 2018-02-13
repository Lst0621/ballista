#!/usr/bin/python
# -*- coding: utf-8 -*-

import random

pro = [
"✿",
"☃",
"☀",
"❅",
"♥",
"♪",
"❀",
"✧",
"■-■",
"⚆_⚆",
"◣_◢",
"٩◔̯◔۶",
"(◕‿◕)",
"ʕ•ᴥ•ʔ",
"٩(•̮̮̃•̃)۶",
"(ง'̀-'́)ง",
"(・ω・)",
]
num  = len(pro)
ind = random.randint(0,num-1)
face = pro[ind]

print face
