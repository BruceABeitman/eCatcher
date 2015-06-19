.class Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram$ReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
.source "opencv_imgproc.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReleaseDeallocator"
.end annotation


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public deallocate()V
    .registers 1

    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvReleaseHist(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V

    return-void
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;

    move-result-object v0

    return-object v0
.end method
