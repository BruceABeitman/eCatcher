.class public Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvArr;
.source "opencv_core.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;->allocate()V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;->allocateArray(I)V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;->zero()Lcom/googlecode/javacpp/Pointer;
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
.method public static create(I[II)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.registers 5
invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateMatND(I[II)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_e
return-object v0
.end method
.method public clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.registers 3
invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCloneMatND(Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_e
return-object v0
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
move-result-object v0
return-object v0
.end method
.method public native data_db()Lcom/googlecode/javacpp/DoublePointer;
.end method
.method public native data_db(Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method
.method public native data_fl()Lcom/googlecode/javacpp/FloatPointer;
.end method
.method public native data_fl(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method
.method public native data_i()Lcom/googlecode/javacpp/IntPointer;
.end method
.method public native data_i(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method
.method public native data_ptr()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native data_ptr(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method
.method public native data_s()Lcom/googlecode/javacpp/ShortPointer;
.end method
.method public native data_s(Lcom/googlecode/javacpp/ShortPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method
.method public native dim_size(I)I
.end method
.method public native dim_size(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method
.method public native dim_step(I)I
.end method
.method public native dim_step(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method
.method public native dims()I
.end method
.method public native dims(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method
.method public native hdr_refcount()I
.end method
.method public native hdr_refcount(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
return-object v0
.end method
.method public native refcount()Lcom/googlecode/javacpp/IntPointer;
.end method
.method public native refcount(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method
.method public release()V
.registers 1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;->deallocate()V
return-void
.end method
.method public native type()I
.end method
.method public native type(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method