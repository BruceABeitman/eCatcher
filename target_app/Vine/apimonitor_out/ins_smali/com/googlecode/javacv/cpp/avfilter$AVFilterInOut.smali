.class public Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;
.super Lcom/googlecode/javacpp/Pointer;
.source "avfilter.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;->allocateArray(I)V
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
.method public native filter_ctx()Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native filter_ctx(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;
.end method
.method public native name()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;
.end method
.method public native next()Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;
.end method
.method public native next(Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;
.end method
.method public native pad_idx()I
.end method
.method public native pad_idx(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;
return-object v0
.end method