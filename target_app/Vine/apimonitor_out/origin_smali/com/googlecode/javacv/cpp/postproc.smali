.class public Lcom/googlecode/javacv/cpp/postproc;
.super Ljava/lang/Object;
.source "postproc.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    inherit = {
        Lcom/googlecode/javacv/cpp/avutil;
    }
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libpostproc/postprocess.h>"
            }
            link = {
                "postproc@.52"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            preload = {
                "postproc-52"
            }
            value = {
                "windows"
            }
        .end subannotation
    }
.end annotation


# static fields
.field public static final PP_CPU_CAPS_3DNOW:I = 0x40000000

.field public static final PP_CPU_CAPS_ALTIVEC:I = 0x10000000

.field public static final PP_CPU_CAPS_AUTO:I = 0x80000

.field public static final PP_CPU_CAPS_MMX:I = -0x80000000

.field public static final PP_CPU_CAPS_MMX2:I = 0x20000000

.field public static final PP_FORMAT:I = 0x8

.field public static final PP_FORMAT_411:I = 0xa

.field public static final PP_FORMAT_420:I = 0x19

.field public static final PP_FORMAT_422:I = 0x9

.field public static final PP_FORMAT_444:I = 0x8

.field public static final PP_PICT_TYPE_QP2:I = 0x10

.field public static final PP_QUALITY_MAX:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native postproc_configuration()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native postproc_license()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native postproc_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native pp_free_context(Lcom/googlecode/javacpp/Pointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "pp_context*"
            }
        .end annotation
    .end parameter
.end method

.method public static native pp_free_mode(Lcom/googlecode/javacpp/Pointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "pp_mode*"
            }
        .end annotation
    .end parameter
.end method

.method public static native pp_get_context(III)Lcom/googlecode/javacpp/Pointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "pp_context*"
        }
    .end annotation
.end method

.method public static native pp_get_mode_by_name_and_quality(Lcom/googlecode/javacpp/BytePointer;I)Lcom/googlecode/javacpp/Pointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "pp_mode*"
        }
    .end annotation
.end method

.method public static native pp_get_mode_by_name_and_quality(Ljava/lang/String;I)Lcom/googlecode/javacpp/Pointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "pp_mode*"
        }
    .end annotation
.end method

.method public static native pp_help(I)B
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native pp_help()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public static native pp_postprocess(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "pp_mode*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "pp_context*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native pp_postprocess(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "pp_mode*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "pp_context*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native pp_postprocess(Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;IILcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "pp_mode*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "pp_context*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native pp_postprocess([B[I[B[IIILcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "pp_mode*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "pp_context*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method
