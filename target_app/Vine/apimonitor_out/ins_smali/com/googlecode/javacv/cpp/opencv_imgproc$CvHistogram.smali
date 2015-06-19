.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->allocate()V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->allocateArray(I)V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->zero()Lcom/googlecode/javacpp/Pointer;
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
.method public static create(I[II[[FI)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
.registers 7
invoke-static {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCreateHist(I[II[[FI)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_e
return-object v0
.end method
.method public native bins()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;
.end method
.method public native bins(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
.end method
.method public native mat()Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method
.method public native mat(Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
return-object v0
.end method
.method public release()V
.registers 1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->deallocate()V
return-void
.end method
.method public native thresh(II)F
.end method
.method public native thresh(IIF)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
.end method
.method public native thresh2()Lcom/googlecode/javacpp/PointerPointer;
.end method
.method public native thresh2(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
.end method
.method public native type()I
.end method
.method public native type(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
.end method