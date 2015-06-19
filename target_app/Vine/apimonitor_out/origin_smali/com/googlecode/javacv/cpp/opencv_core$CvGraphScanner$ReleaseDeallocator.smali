.class public Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner$ReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.source "opencv_core.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReleaseDeallocator"
.end annotation


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public deallocate()V
    .registers 1

    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReleaseGraphScanner(Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;)V

    return-void
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;

    move-result-object v0

    return-object v0
.end method
