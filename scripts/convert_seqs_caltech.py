#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import glob
import cv2 as cv

def save_img(dname, fn, i, frame):
    setName = os.path.basename(dname)
    vidName = os.path.basename(fn).split('.')[0]
    imgDir = out_dir + '/' + setName

    cv.imwrite('{}/{}_{}_{:06d}.png'.format(
        imgDir, setName, vidName, i), frame)

out_dir = 'data/caltech/images'
if not os.path.exists(out_dir):
    os.makedirs(out_dir)
for dname in sorted(glob.glob('data/caltech/videos/set*')):
    for fn in sorted(glob.glob('{}/*.seq'.format(dname))):
        cap = cv.VideoCapture(fn)
        i = 0
        while True:
            ret, frame = cap.read()
            if not ret:
                break
            save_img(dname, fn, i, frame)
            i += 1
        print(fn)
