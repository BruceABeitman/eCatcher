.class public Lcom/googlecode/javacv/cpp/opencv_core$Cv_iplCreateImageHeader;
.super Lcom/googlecode/javacpp/FunctionPointer;
.source "opencv_core.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/FunctionPointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$Cv_iplCreateImageHeader;->allocate()V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/FunctionPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method
.method public native call(IIILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;IIIIILcom/googlecode/javacv/cpp/opencv_core$IplROI;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplTileInfo;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
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
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method