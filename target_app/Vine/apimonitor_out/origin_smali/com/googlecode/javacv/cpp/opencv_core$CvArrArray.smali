.class public Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Name;
    value = {
        "CvArr*"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvArrArray"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;->put([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;

    return-void
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native get()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;

    return-object v0
.end method

.method public native put(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;
.end method

.method public varargs put([Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;->put(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvArrArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-object p0
.end method
