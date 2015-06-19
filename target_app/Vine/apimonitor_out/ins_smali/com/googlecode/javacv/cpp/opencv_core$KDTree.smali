.class public Lcom/googlecode/javacv/cpp/opencv_core$KDTree;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$KDTree;->allocate()V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
.registers 4
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$KDTree;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
.registers 3
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$KDTree;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
return-void
.end method
.method private native allocate()V
.end method
.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native build(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native build(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native dims()I
.end method
.method public native findNearest(Lcom/googlecode/javacpp/FloatPointer;IILcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/IntPointer;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native findNearest(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native findOrthoRange(Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacpp/IntPointer;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native findOrthoRange(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native getPoint(I[I)Lcom/googlecode/javacpp/FloatPointer;
.end method
.method public native getPoints(Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacpp/IntPointer;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native getPoints(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native labels()Lcom/googlecode/javacpp/IntPointer;
.end method
.method public native labels(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_core$KDTree;
.end method
.method public native maxDepth()I
.end method
.method public native maxDepth(I)Lcom/googlecode/javacv/cpp/opencv_core$KDTree;
.end method
.method public native nodes()Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;
.end method
.method public native nodes(Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;)Lcom/googlecode/javacv/cpp/opencv_core$KDTree;
.end method
.method public native normType()I
.end method
.method public native normType(I)Lcom/googlecode/javacv/cpp/opencv_core$KDTree;
.end method
.method public native points()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public native points(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$KDTree;
.end method