.class public Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->allocate()V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->allocateArray(I)V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->zero()Lcom/googlecode/javacpp/Pointer;
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
.method public static create()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.registers 1
const/4 v0, 0x0
invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->create(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
move-result-object v0
return-object v0
.end method
.method public static create(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.registers 3
invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateMemStorage(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_e
return-object v0
.end method
.method public native block_size()I
.end method
.method public native block_size(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method
.method public native bottom()Lcom/googlecode/javacv/cpp/opencv_core$CvMemBlock;
.end method
.method public native bottom(Lcom/googlecode/javacv/cpp/opencv_core$CvMemBlock;)Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method
.method public native free_space()I
.end method
.method public native free_space(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method
.method public native parent()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method
.method public native parent(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
return-object v0
.end method
.method public release()V
.registers 1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->deallocate()V
return-void
.end method
.method public native signature()I
.end method
.method public native signature(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method
.method public native top()Lcom/googlecode/javacv/cpp/opencv_core$CvMemBlock;
.end method
.method public native top(Lcom/googlecode/javacv/cpp/opencv_core$CvMemBlock;)Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method