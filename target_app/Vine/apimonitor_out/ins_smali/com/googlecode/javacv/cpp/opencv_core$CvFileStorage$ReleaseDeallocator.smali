.class public Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage$ReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;
.source "opencv_core.java"
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method public deallocate()V
.registers 1
invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReleaseFileStorage(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
return-void
.end method