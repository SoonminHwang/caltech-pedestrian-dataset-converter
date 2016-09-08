## Caltech Pedestrian Dataset Converter
forked from Shunta Saito's [repo.](https://github.com/mitmul/caltech-pedestrian-dataset-converter )

### Features 
compatible with [KAIST Multispectral Pedestrian Dataset](http://multispectral.kaist.ac.kr) 

### Requirements

- OpenCV 3.0+ (with Python binding)
- Python 2.7+, 3.4+, 3.5+
- NumPy 1.10+
- SciPy 0.16+

### KAIST Multispectral Pedestrian Dataset
![KAIST](https://sites.google.com/site/pedestrianbenchmark/home/main_img.png)

	$ bash shells/download_kaist.sh
	$ python scripts/convert_annotations_kaist.py
	$ python scripts/convert_seqs_kaist.py



### Caltech Pedestrian Dataset
![Caltech](http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/files/peds01_web.jpg)
![Caltech](http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/files/peds02_web.jpg)
![Caltech](http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/files/peds03_web.jpg)
![Caltech](http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/files/peds04_web.jpg)


	$ bash shells/download_caltech.sh
	$ python scripts/convert_annotations_caltech.py
	$ python scripts/convert_seqs_caltech.py


Each `.seq` movie is separated into `.png` images (4-ch image for KAIST Dataset).   
Each image's filename is consisted of `{set**}_{V***}_{frame_num}.png`. 

- [KAIST Dataset, official site](http://multispectral.kaist.ac.kr), `set06`~`set11` are for test dataset, while the rest are for training dataset.
- [Caltech Dataset, official site](http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/), `set06`~`set10` are for test dataset, while the rest are for training dataset. 


### Draw Bounding Boxes

	$ python tests/test_plot_annotations.py

