# Voxel-based-3D-object-classification
### A focus on orientation boosting and fast hybrid cascade network

The 3D object classification task is gaining increasing
interest nowadays, with its application ranging from
video and 3D scene segmentation to automatic robot navigation
in real world scenarios. In this report, we present a
convolutional approach to 3D object classification based on the
VoxNet architecture. Then, we take a step further towards
the study on the relevance of object orientation to improve
classification performances, resulting in the implementation of
the Orion architecture. We show that a convolutional neural
network is able to achieve good results on the ModelNet10
and ModelNet40 datasets. On the other hand, we find that the
magnitude of the improvements introduced by Orion is below
our expectations. The convolutional approach is effective but
it is quite computational and time demanding. We present a
solution to tackle this problem, introducing a hybrid cascade
network composed of a multilayer perceptron and the Orion
architecture. We show that this approach is effective in reaching
lower inference time while maintaning a high accuracy.

Reference papers:
D. Maturana and S. Scherer, "VoxNet: A 3D Convolutional Neural Network for real-time object recognition," 2015 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS), Hamburg, Germany, 2015, pp. 922-928, doi: 10.1109/IROS.2015.7353481.
N. Sedaghat, M. Zolfaghari, E. Amiri, T. Brox, "Orientation-boosted Voxel Nets for 3D Object Recognition", doi: arXiv.1604.03351
J. Luo, H. Cao, J. Wang, S. Zhang, S. Cai, "A Fast Hybrid Cascade Network for Voxel-based 3D Object Classification, doi: arXiv.2011.04522
