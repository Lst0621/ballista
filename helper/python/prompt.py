#!/usr/bin/python
# -*- coding: utf-8 -*-

import random

pro = {
        0:"٩(•̮̮̃•̃)۶",
        1:"⚆_⚆",
        2:"✿",
        3:"☃",
        4:"ʕ•ᴥ•ʔ",
        5:"☀",
        6:"❅",
        7:"♥",
        8:"♪",
        9:"❀",
        10:"◣_◢",
        11:"✧",
        12:"(ง'̀-'́)ง",
        13:"■-■",
        14:"(◕‿◕)",
        15:"٩◔̯◔۶"
}

num  = len(pro)
ind = random.randint(0,num)
face = pro[ind]

print face
