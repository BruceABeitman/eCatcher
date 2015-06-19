.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_imgproc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_imgproc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvMoments"
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;->allocateArray(I)V

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

.method public static createThreadLocal()Ljava/lang/ThreadLocal;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments$1;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public native inv_sqrt_m00()D
.end method

.method public native inv_sqrt_m00(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native m00()D
.end method

.method public native m00(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native m01()D
.end method

.method public native m01(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native m02()D
.end method

.method public native m02(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native m03()D
.end method

.method public native m03(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native m10()D
.end method

.method public native m10(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native m11()D
.end method

.method public native m11(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native m12()D
.end method

.method public native m12(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native m20()D
.end method

.method public native m20(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native m21()D
.end method

.method public native m21(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native m30()D
.end method

.method public native m30(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native mu02()D
.end method

.method public native mu02(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native mu03()D
.end method

.method public native mu03(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native mu11()D
.end method

.method public native mu11(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native mu12()D
.end method

.method public native mu12(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native mu20()D
.end method

.method public native mu20(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native mu21()D
.end method

.method public native mu21(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public native mu30()D
.end method

.method public native mu30(D)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;

    return-object v0
.end method
