.class public Lcom/googlecode/javacv/cpp/opencv_core$IplImage$HeaderReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.source "opencv_core.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HeaderReleaseDeallocator"
.end annotation


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->clone()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public deallocate()V
    .registers 1

    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReleaseImageHeader(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    return-void
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method
