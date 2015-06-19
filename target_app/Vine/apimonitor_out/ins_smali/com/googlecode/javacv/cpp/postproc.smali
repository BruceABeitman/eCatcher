.class public Lcom/googlecode/javacv/cpp/postproc;
.super Ljava/lang/Object;
.source "postproc.java"
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
.end method
.method public static native postproc_license()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public static native postproc_version()I
.end method
.method public static native pp_free_context(Lcom/googlecode/javacpp/Pointer;)V
.parameter
.end parameter
.end method
.method public static native pp_free_mode(Lcom/googlecode/javacpp/Pointer;)V
.parameter
.end parameter
.end method
.method public static native pp_get_context(III)Lcom/googlecode/javacpp/Pointer;
.end method
.method public static native pp_get_mode_by_name_and_quality(Lcom/googlecode/javacpp/BytePointer;I)Lcom/googlecode/javacpp/Pointer;
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native pp_get_mode_by_name_and_quality(Ljava/lang/String;I)Lcom/googlecode/javacpp/Pointer;
.end method
.method public static native pp_help(I)B
.end method
.method public static native pp_help()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public static native pp_postprocess(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;I)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native pp_postprocess(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;I)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native pp_postprocess(Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;IILcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;I)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native pp_postprocess([B[I[B[IIILcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;I)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method