.class public Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
.super Lcom/googlecode/javacpp/Pointer;
.source "avutil.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;->allocateArray(I)V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method
.method private native allocateArray(I)V
.end method
.method public native buffer()Lcom/googlecode/javacv/cpp/avutil$AVBuffer;
.end method
.method public native buffer(Lcom/googlecode/javacv/cpp/avutil$AVBuffer;)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
.end method
.method public native data()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;->position(I)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
return-object v0
.end method
.method public native size()I
.end method
.method public native size(I)Lcom/googlecode/javacv/cpp/avutil$AVBufferRef;
.end method