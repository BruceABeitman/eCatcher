.class public Lcom/googlecode/javacv/cpp/avcodec$RcOverride;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$RcOverride;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$RcOverride;->allocateArray(I)V
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
.method public native end_frame()I
.end method
.method public native end_frame(I)Lcom/googlecode/javacv/cpp/avcodec$RcOverride;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$RcOverride;->position(I)Lcom/googlecode/javacv/cpp/avcodec$RcOverride;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$RcOverride;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$RcOverride;
return-object v0
.end method
.method public native qscale()I
.end method
.method public native qscale(I)Lcom/googlecode/javacv/cpp/avcodec$RcOverride;
.end method
.method public native quality_factor()F
.end method
.method public native quality_factor(F)Lcom/googlecode/javacv/cpp/avcodec$RcOverride;
.end method
.method public native start_frame()I
.end method
.method public native start_frame(I)Lcom/googlecode/javacv/cpp/avcodec$RcOverride;
.end method