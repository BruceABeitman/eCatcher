.class  Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram$ReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;
.source "opencv_imgproc.java"
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
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