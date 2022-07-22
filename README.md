# Game or book cover classifier
Classify if it's game or book cover with this neural network model created using Tensorflow library

![covers](https://user-images.githubusercontent.com/77151129/153773157-2fc59af1-bfe3-469b-91a0-b39f8285cb78.PNG)

In this project, I created and trained a neural network to classify computer game covers from book covers.

For dataset used, I downloaded the covers from various sources and combined them together. I created the labels directly in the notebook.
The dataset contained a total of 3400 cover images, 1700 for each of the two classes.

Covers dataset can be found directly on this repository in the 'data' folder.

## Model demo
You can try to make a prediction yourself using this model, as it has been deployed on hugging face spaces here:
https://huggingface.co/spaces/gracjans/Game-or-book-cover-classifier

Just drop any cover picture from the internet, or upload it from your disc and click 'Submit'. You can also try example covers from below.

### Screenshot from demo
![demo](https://user-images.githubusercontent.com/77151129/153781706-4036fc2b-0f08-4be4-897b-9e6983dd7d50.PNG)

## Brief summary
The model created, classified computer game covers from book covers with an accuracy of over 82% on the test set. Accuracy on the training set was over 92% (due to lack of data model is overfitting). An important element in improving the prediction accuracy on the test set was the addition of a dropout layer after each of the dense layers, as there is a strong tendency for the training set to memorize each of the cover, not to generalize. I consider this a pretty good result considering how small the dataset was.

## Technologies
Project was created using:
* cv2
* sklearn
* tensorflow
