.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$CLAHE;
.super Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;
.source "opencv_imgproc.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method public native apply(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native collectGarbage()V
.end method
.method public native getClipLimit()D
.end method
.method public native getTilesGridSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
.end method
.method public native setClipLimit(D)V
.end method
.method public native setTilesGridSize(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)V
.parameter
.end parameter
.end method