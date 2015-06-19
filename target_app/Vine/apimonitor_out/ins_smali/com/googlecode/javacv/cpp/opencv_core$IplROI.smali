.class public Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->allocateArray(I)V
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
.method public native coi()I
.end method
.method public native coi(I)Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
.end method
.method public native height()I
.end method
.method public native height(I)Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
return-object v0
.end method
.method public native width()I
.end method
.method public native width(I)Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
.end method
.method public native xOffset()I
.end method
.method public native xOffset(I)Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
.end method
.method public native yOffset()I
.end method
.method public native yOffset(I)Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
.end method