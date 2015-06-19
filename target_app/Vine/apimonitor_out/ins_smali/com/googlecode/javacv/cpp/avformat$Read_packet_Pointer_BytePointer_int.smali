.class public Lcom/googlecode/javacv/cpp/avformat$Read_packet_Pointer_BytePointer_int;
.super Lcom/googlecode/javacpp/FunctionPointer;
.source "avformat.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/FunctionPointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$Read_packet_Pointer_BytePointer_int;->allocate()V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/FunctionPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method
.method public native call(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I)I
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method