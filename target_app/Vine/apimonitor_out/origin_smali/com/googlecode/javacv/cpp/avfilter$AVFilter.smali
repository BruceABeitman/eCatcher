.class public Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.super Lcom/googlecode/javacpp/Pointer;
.source "avfilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avfilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Init_opaque_AVFilterContext_Pointer;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Process_command_AVFilterContext_BytePointer_BytePointer_BytePointer_int_int;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Query_formats_AVFilterContext;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Uninit_AVFilterContext;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Init_dict_AVFilterContext_PointerPointer;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Init_AVFilterContext;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVFilter;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilter;->allocateArray(I)V

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


# virtual methods
.method public native description()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method

.method public native init()Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Init_AVFilterContext;
.end method

.method public native init(Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Init_AVFilterContext;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method

.method public native init_dict()Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Init_dict_AVFilterContext_PointerPointer;
.end method

.method public native init_dict(Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Init_dict_AVFilterContext_PointerPointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method

.method public native init_opaque()Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Init_opaque_AVFilterContext_Pointer;
.end method

.method public native init_opaque(Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Init_opaque_AVFilterContext_Pointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method

.method public native inputs()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native next()Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/avfilter$AVFilter;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method

.method public native outputs()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilter;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVFilter;

    return-object v0
.end method

.method public native priv_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native priv_size()I
.end method

.method public native priv_size(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method

.method public native process_command()Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Process_command_AVFilterContext_BytePointer_BytePointer_BytePointer_int_int;
.end method

.method public native process_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Process_command_AVFilterContext_BytePointer_BytePointer_BytePointer_int_int;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method

.method public native query_formats()Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Query_formats_AVFilterContext;
.end method

.method public native query_formats(Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Query_formats_AVFilterContext;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method

.method public native uninit()Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Uninit_AVFilterContext;
.end method

.method public native uninit(Lcom/googlecode/javacv/cpp/avfilter$AVFilter$Uninit_AVFilterContext;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method
