.class public Lcom/googlecode/javacv/cpp/opencv_core$CvStringHashNode;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvStringHashNode;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvStringHashNode;->allocateArray(I)V
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
.method public native hashval()I
.end method
.method public native hashval(I)Lcom/googlecode/javacv/cpp/opencv_core$CvStringHashNode;
.end method
.method public native next()Lcom/googlecode/javacv/cpp/opencv_core$CvStringHashNode;
.end method
.method public native next(Lcom/googlecode/javacv/cpp/opencv_core$CvStringHashNode;)Lcom/googlecode/javacv/cpp/opencv_core$CvStringHashNode;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvStringHashNode;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvStringHashNode;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvStringHashNode;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvStringHashNode;
return-object v0
.end method
.method public native str()Lcom/googlecode/javacv/cpp/opencv_core$CvString;
.end method
.method public native str(Lcom/googlecode/javacv/cpp/opencv_core$CvString;)Lcom/googlecode/javacv/cpp/opencv_core$CvStringHashNode;
.end method