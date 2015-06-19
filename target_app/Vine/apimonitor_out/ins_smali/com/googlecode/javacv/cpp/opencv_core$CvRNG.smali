.class public Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;
.super Lcom/googlecode/javacpp/LongPointer;
.source "opencv_core.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;-><init>(Lcom/googlecode/javacpp/Pointer;)V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;->allocate()V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/LongPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method