.class public Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;->allocateArray(I)V
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
.method public native all_channel_counts()I
.end method
.method public native all_channel_counts(I)Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
.end method
.method public native channel_counts()Lcom/googlecode/javacpp/IntPointer;
.end method
.method public native channel_layouts()Lcom/googlecode/javacpp/LongPointer;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
return-object v0
.end method
.method public native sample_fmts()Lcom/googlecode/javacpp/IntPointer;
.end method
.method public native sample_rates()Lcom/googlecode/javacpp/IntPointer;
.end method
.method public native sample_rates(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
.end method