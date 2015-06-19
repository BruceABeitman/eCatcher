.class public Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvSet"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSet;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSet;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSet;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSet;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create(IIILcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateSet(IIILcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public native active_count()I
.end method

.method public native active_count(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.end method

.method public native free_elems(Lcom/googlecode/javacv/cpp/opencv_core$CvSetElem;)Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.end method

.method public native free_elems()Lcom/googlecode/javacv/cpp/opencv_core$CvSetElem;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSet;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSet;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSet;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvSet;

    return-object v0
.end method
