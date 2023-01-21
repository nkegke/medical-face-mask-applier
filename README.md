# Medical Face Mask Application Tool

This is a tool that can be used to create masked versions of existing image datasets and study visual recognition problems, such as face identification/verification or emotion recognition in the presence of medical face masks.

It also has fast ML inference & processing accelerated even on common hardware and can be utilized in real-time applications.

Input | Output
:----:|:------:
<img src="https://github.com/nkegke/files/blob/main/mask/def.gif" alt="def" style="width: 25vw;"/>  |   <img src="https://github.com/nkegke/files/blob/main/mask/mask.gif" alt="mask" style="width: 25vw;"/> 

## Prerequisites

Install the required packages below:

```
pip install mediapipe
pip install opencv-python
pip install tqdm
```

## How to run
### Image

Apply mask on a single image:

```
python mask_on_img.py IMAGE_NAME
```

### Videos (preserving audio)

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
<img src="https://github.com/nkegke/files/blob/main/mask/original.png" alt="orig" style="width:200px; height:246px"/>  |   <img src="https://github.com/nkegke/files/blob/main/mask/face_mesh.png" alt="mesh" style="width:200px; height:246px"/>  | <img src="https://github.com/nkegke/files/blob/main/mask/jawlines.png" alt="jaw" style="width:200px; height:246px"/> | <img src="https://github.com/nkegke/files/blob/main/mask/masked.png" alt="masked" style="width:200px; height:246px"/>

* Face Mesh tracking with [Google's MediaPipe Face Mesh](https://google.github.io/mediapipe/solutions/face_mesh).

* Jawline extraction in lines 43-69 in ``` mask.py ``` and [face_mesh_model.png](face_mesh_model.png)
