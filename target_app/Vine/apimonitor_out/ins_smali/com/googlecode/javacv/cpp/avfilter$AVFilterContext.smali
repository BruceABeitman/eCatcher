.class public Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;->allocateArray(I)V
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
.method public native av_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method
.method public native command_queue()Lcom/googlecode/javacpp/Pointer;
.end method
.method public native command_queue(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native enable()Lcom/googlecode/javacpp/Pointer;
.end method
.method public native enable(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native enable_str()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native enable_str(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native filter()Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method
.method public native graph(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native graph()Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method
.method public native input_pads(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native input_pads()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method
.method public native inputs()Lcom/googlecode/javacpp/PointerPointer;
.end method
.method public native inputs(ILcom/googlecode/javacv/cpp/avfilter$AVFilterLink;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native inputs(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method
.method public native internal(Lcom/googlecode/javacv/cpp/avfilter$AVFilterInternal;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native internal()Lcom/googlecode/javacv/cpp/avfilter$AVFilterInternal;
.end method
.method public native is_disabled()I
.end method
.method public native is_disabled(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native name()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native nb_inputs()I
.end method
.method public native nb_inputs(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native nb_outputs()I
.end method
.method public native nb_outputs(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native output_pads(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native output_pads()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method
.method public native outputs()Lcom/googlecode/javacpp/PointerPointer;
.end method
.method public native outputs(ILcom/googlecode/javacv/cpp/avfilter$AVFilterLink;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native outputs(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
return-object v0
.end method
.method public native priv()Lcom/googlecode/javacpp/Pointer;
.end method
.method public native priv(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native thread_type()I
.end method
.method public native thread_type(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
.method public native var_values()Lcom/googlecode/javacpp/DoublePointer;
.end method
.method public native var_values(Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method