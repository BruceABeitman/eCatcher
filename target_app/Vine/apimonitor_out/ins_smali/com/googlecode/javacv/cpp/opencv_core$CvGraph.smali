.class public Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.source "opencv_core.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSet;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;->allocate()V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSet;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;->allocateArray(I)V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSet;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method
.method private native allocateArray(I)V
.end method
.method public static create(IIIILcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
.registers 6
invoke-static {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateGraph(IIIILcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
move-result-object v0
return-object v0
.end method
.method public native edges(Lcom/googlecode/javacv/cpp/opencv_core$CvSet;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
.end method
.method public native edges()Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSet;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
return-object v0
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
move-result-object v0
return-object v0
.end method