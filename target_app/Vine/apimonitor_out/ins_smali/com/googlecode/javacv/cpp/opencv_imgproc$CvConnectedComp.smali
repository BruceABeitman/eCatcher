.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_imgproc.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;->allocateArray(I)V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method
.method private native allocateArray(I)V
.end method
.method public native area()D
.end method
.method public native area(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;
.end method
.method public native contour()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method
.method public native contour(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;
return-object v0
.end method
.method public native rect()Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
.end method
.method public native rect(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;
.end method
.method public native value()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
.end method
.method public native value(Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;
.end method