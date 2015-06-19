.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_imgproc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_imgproc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IplConvKernel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;->zero()Lcom/googlecode/javacpp/Pointer;

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

.method public static create(IIIII[I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;
    .registers 8

    invoke-static/range {p0 .. p5}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCreateStructuringElementEx(IIIII[I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    :cond_e
    return-object v0
.end method


# virtual methods
.method public native anchorX()I
.end method

.method public native anchorX(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;
.end method

.method public native anchorY()I
.end method

.method public native anchorY(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;
.end method

.method public native nCols()I
.end method

.method public native nCols(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;
.end method

.method public native nRows()I
.end method

.method public native nRows(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;
.end method

.method public native nShiftR()I
.end method

.method public native nShiftR(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;

    return-object v0
.end method

.method public release()V
    .registers 1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;->deallocate()V

    return-void
.end method

.method public native values()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native values(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;
.end method
