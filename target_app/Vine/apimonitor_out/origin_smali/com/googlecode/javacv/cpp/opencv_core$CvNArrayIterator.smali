.class public Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvNArrayIterator"
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;->allocateArray(I)V

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


# virtual methods
.method public native count()I
.end method

.method public native count(I)Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;
.end method

.method public native dims()I
.end method

.method public native dims(I)Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;
.end method

.method public native hdr(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
.end method

.method public native hdr(ILcom/googlecode/javacv/cpp/opencv_core$CvMatND;)Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;

    return-object v0
.end method

.method public native ptr(I)Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uchar*"
        }
    .end annotation
.end method

.method public native ptr(ILcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;
.end method

.method public native size(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;
.end method

.method public native size()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native stack(I)I
.end method

.method public native stack(II)Lcom/googlecode/javacv/cpp/opencv_core$CvNArrayIterator;
.end method
