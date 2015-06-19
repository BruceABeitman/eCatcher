.class public Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;->allocateArray(I)V
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
.method public native h()I
.end method
.method public native h(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
.end method
.method public native interlaced()I
.end method
.method public native interlaced(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
.end method
.method public native key_frame()I
.end method
.method public native key_frame(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
.end method
.method public native pict_type()I
.end method
.method public native pict_type(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
return-object v0
.end method
.method public native qp_table()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native qp_table(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
.end method
.method public native qp_table_linesize()I
.end method
.method public native qp_table_linesize(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
.end method
.method public native qp_table_size()I
.end method
.method public native qp_table_size(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
.end method
.method public native sample_aspect_ratio(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
.end method
.method public native sample_aspect_ratio()Lcom/googlecode/javacv/cpp/avutil$AVRational;
.end method
.method public native top_field_first()I
.end method
.method public native top_field_first(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
.end method
.method public native w()I
.end method
.method public native w(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;
.end method