.class public Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;->allocateArray(I)V
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
.method public native comp()Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;
.end method
.method public native comp(I)Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;
.end method
.method public native comp(ILcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;)Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
.end method
.method public native flags()B
.end method
.method public native flags(B)Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
.end method
.method public native log2_chroma_h()B
.end method
.method public native log2_chroma_h(B)Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
.end method
.method public native log2_chroma_w()B
.end method
.method public native log2_chroma_w(B)Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
.end method
.method public native name()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native nb_components()B
.end method
.method public native nb_components(B)Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;->position(I)Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avutil$AVPixFmtDescriptor;
return-object v0
.end method