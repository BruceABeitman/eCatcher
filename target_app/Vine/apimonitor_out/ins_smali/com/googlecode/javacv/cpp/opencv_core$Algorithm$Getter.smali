.class public Lcom/googlecode/javacv/cpp/opencv_core$Algorithm$Getter;
.super Lcom/googlecode/javacpp/FunctionPointer;
.source "opencv_core.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/FunctionPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method public native call(Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;)I
.end method