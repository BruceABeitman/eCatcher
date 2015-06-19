.class public Lcom/googlecode/javacv/cpp/opencv_core$MatVector;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Name;
    value = {
        "std::vector<cv::Mat>"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatVector"
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$MatVector;->allocate()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$MatVector;->allocate(J)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .registers 4

    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$MatVector;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$MatVector;->put([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$MatVector;

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(J)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native getCvMat(J)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Index;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/ValueGetter;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public native getCvMatND(J)Lcom/googlecode/javacv/cpp/opencv_core$CvMatND;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Index;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/ValueGetter;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public native getIplImage(J)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Index;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/ValueGetter;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public native put(JLcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$MatVector;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Index;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/ValueSetter;
    .end annotation
.end method

.method public varargs put([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$MatVector;
    .registers 7

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$MatVector;->size()J

    move-result-wide v1

    array-length v3, p1

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_f

    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$MatVector;->resize(J)V

    :cond_f
    const/4 v0, 0x0

    :goto_10
    array-length v1, p1

    if-ge v0, v1, :cond_1c

    int-to-long v1, v0

    aget-object v3, p1, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$MatVector;->put(JLcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$MatVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public native resize(J)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method

.method public native size()J
.end method
