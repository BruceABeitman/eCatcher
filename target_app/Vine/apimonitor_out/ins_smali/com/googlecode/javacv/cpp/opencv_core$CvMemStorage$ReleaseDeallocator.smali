.class public Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage$ReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.source "opencv_core.java"
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method public deallocate()V
.registers 1
invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReleaseMemStorage(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)V
return-void
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
move-result-object v0
return-object v0
.end method