.class public Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;->allocateArray(I)V
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
.method public native nb_ranges()I
.end method
.method public native nb_ranges(I)Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;->position(I)Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;
return-object v0
.end method
.method public native range()Lcom/googlecode/javacpp/PointerPointer;
.end method
.method public native range(I)Lcom/googlecode/javacv/cpp/avutil$AVOptionRange;
.end method
.method public native range(ILcom/googlecode/javacv/cpp/avutil$AVOptionRange;)Lcom/googlecode/javacv/cpp/avutil$AVOptionRanges;
.end method