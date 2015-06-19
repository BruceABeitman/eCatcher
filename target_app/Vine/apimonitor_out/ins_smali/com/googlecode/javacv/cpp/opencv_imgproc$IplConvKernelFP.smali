.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;->allocate()V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;->allocateArray(I)V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;->zero()Lcom/googlecode/javacpp/Pointer;
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
.method public native anchorX()I
.end method
.method public native anchorX(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
.end method
.method public native anchorY()I
.end method
.method public native anchorY(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
.end method
.method public native nCols()I
.end method
.method public native nCols(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
.end method
.method public native nRows()I
.end method
.method public native nRows(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
return-object v0
.end method
.method public native values()Lcom/googlecode/javacpp/FloatPointer;
.end method
.method public native values(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernelFP;
.end method