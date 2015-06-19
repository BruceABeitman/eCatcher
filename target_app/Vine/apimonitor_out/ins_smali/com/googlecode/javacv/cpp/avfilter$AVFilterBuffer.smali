.class public Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;->allocateArray(I)V
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
.method public native data(I)Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native data()Lcom/googlecode/javacpp/PointerPointer;
.end method
.method public native data(ILcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method
.method public native extended_data(I)Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native extended_data()Lcom/googlecode/javacpp/PointerPointer;
.end method
.method public native extended_data(ILcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method
.method public native format()I
.end method
.method public native format(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method
.method public native free()Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer$Free_AVFilterBuffer;
.end method
.method public native free(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer$Free_AVFilterBuffer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method
.method public native h()I
.end method
.method public native h(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method
.method public native linesize(I)I
.end method
.method public native linesize()Lcom/googlecode/javacpp/IntPointer;
.end method
.method public native linesize(II)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
return-object v0
.end method
.method public native priv()Lcom/googlecode/javacpp/Pointer;
.end method
.method public native priv(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method
.method public native refcount()I
.end method
.method public native refcount(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method
.method public native w()I
.end method
.method public native w(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method