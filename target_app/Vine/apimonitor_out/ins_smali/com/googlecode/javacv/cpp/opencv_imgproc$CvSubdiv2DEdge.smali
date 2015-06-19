.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;
.super Lcom/googlecode/javacpp/SizeTPointer;
.source "opencv_imgproc.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/googlecode/javacpp/SizeTPointer;-><init>(I)V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/SizeTPointer;-><init>(I)V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/SizeTPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method