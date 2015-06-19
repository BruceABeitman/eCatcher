.class public Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvArr;
.source "opencv_core.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;->allocate()V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;->allocateArray(I)V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method
.method private native allocateArray(I)V
.end method
.method public static create(I[II)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.registers 5
invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateSparseMat(I[II)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_e
return-object v0
.end method
.method public clone()Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.registers 3
invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCloneSparseMat(Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_e
return-object v0
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
move-result-object v0
return-object v0
.end method
.method public native dims()I
.end method
.method public native dims(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.end method
.method public native hashsize()I
.end method
.method public native hashsize(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.end method
.method public native hashtable()Lcom/googlecode/javacpp/PointerPointer;
.end method
.method public native hashtable(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.end method
.method public native hdr_refcount()I
.end method
.method public native hdr_refcount(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.end method
.method public native heap()Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.end method
.method public native heap(Lcom/googlecode/javacv/cpp/opencv_core$CvSet;)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.end method
.method public native idxoffset()I
.end method
.method public native idxoffset(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
return-object v0
.end method
.method public native refcount()Lcom/googlecode/javacpp/IntPointer;
.end method
.method public native refcount(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.end method
.method public release()V
.registers 1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;->deallocate()V
return-void
.end method
.method public native size(I)I
.end method
.method public native size(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.end method
.method public native type()I
.end method
.method public native type(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.end method
.method public native valoffset()I
.end method
.method public native valoffset(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.end method