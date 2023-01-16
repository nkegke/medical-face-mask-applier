# Medical Face Mask Application Tool

![](https://media.giphy.com/media/fuuKND9xnVUAjmi3gP/giphy.gif)

## Prerequisites

Install the required packages below:

```
pip install mediapipe
pip install opencv-python
pip install tqdm
```

### Image

Apply mask on a single image:

```
python mask_on_img.py IMAGE_NAME
```

### Videos

Apply mask on multiple videos, by creating a folder 'videos' in the same directory and running:

```
./mask.sh
```

### Webcam

Apply mask in real-time on multiple faces with webcam input:

```
python mask_webcam.py
```

## How it works

Original |  Face Mesh |  Jawlines | Masked
:-------:|:----------:|:----------:|:-----:
<img src="https://drive.google.com/uc?export=view&id=1bli_MtMRfmgrjP_fod7yrAqUOwd9zi2g" alt="mypic" style="width:200px; height:246px"/>  |   <img src="https://drive.google.com/uc?export=view&id=14nByNCO02DK2uSUE25R8DGnftBThZW_r" alt="mypic" style="width:200px; height:246px"/>  | <img src="https://drive.google.com/uc?export=view&id=1_SSURysITwqF_ZLPJBsWyYCYbeX9_Ug9" alt="mypic" style="width:200px; height:246px"/> | <img src="https://drive.google.com/uc?export=view&id=1l9VkBN0DWTcKt92A6_1SspYOLmMbef09" alt="mypic" style="width:200px; height:246px"/>

* Face Mesh tracking with [Google's MediaPipe Face Mesh](https://google.github.io/mediapipe/solutions/face_mesh).

* Jawline extraction in lines 43-69 in ``` mask.py ``` and ``` face_mesh_model.png ```.
