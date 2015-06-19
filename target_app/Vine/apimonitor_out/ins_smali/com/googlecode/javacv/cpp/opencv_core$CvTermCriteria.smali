.class public Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;->allocateArray(I)V
return-void
.end method
.method public constructor <init>(IID)V
.registers 6
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;->allocate()V
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;->type(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;->max_iter(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
move-result-object v0
invoke-virtual {v0, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;->epsilon(D)Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
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
.method public native epsilon()D
.end method
.method public native epsilon(D)Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
.end method
.method public native max_iter()I
.end method
.method public native max_iter(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
return-object v0
.end method
.method public native type()I
.end method
.method public native type(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
.end method