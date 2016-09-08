#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import glob
import numpy as np
import cv2 as cv

def save_img(dname, fn, i, frame_visible, frame_lwir):
    setName = os.path.basename(dname)
    vidName = os.path.basename(fn).split('_')[1].split('.')[0]    
    imgDir = out_dir + '/' + setName

    cv.imwrite('{}/{}_{}_{:06d}.png'.format(
        imgDir, setName, vidName, i), np.concatenate((frame_visible, frame_lwir), axis=2))

out_dir = 'data/kaist/images'
if not os.path.exists(out_dir):
    os.makedirs(out_dir)

for dname in sorted(glob.glob('data/kaist/videos/set*')):
    visible_seq = sorted(glob.glob('{}/Visible_*.seq'.format(dname)))
    lwir_seq = sorted(glob.glob('{}/LWIR_*.seq'.format(dname)))

    for fn in zip(visible_seq, lwir_seq):
        visible = cv.VideoCapture(fn[0])
        lwir = cv.VideoCapture(fn[1])
        i = 0
        while True:
            ret1, frame_visible = visible.read()
            ret2, frame_lwir = lwir.read()

            assert ret1 == ret2

            if not ret1:
                break
            save_img(dname, fn[0], i, frame_visible, frame_lwir)
            i += 1
        print(fn)
