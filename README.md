# Medical Face Mask Application Tool

![](https://media.giphy.com/media/fuuKND9xnVUAjmi3gP/giphy.gif)

### Prerequisites

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

Apply mask on multiple faces with webcam input:

```
python mask_webcam.py
```
