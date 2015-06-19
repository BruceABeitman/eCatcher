.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_imgproc.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method public native anchor()I
.end method
.method public native anchor(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;
.end method
.method public native filter(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/BytePointer;III)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native ksize()I
.end method
.method public native ksize(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;
.end method
.method public native reset()V
.end method