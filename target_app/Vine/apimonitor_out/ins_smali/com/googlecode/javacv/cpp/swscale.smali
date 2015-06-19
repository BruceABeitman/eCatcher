.class public Lcom/googlecode/javacv/cpp/swscale;
.super Ljava/lang/Object;
.source "swscale.java"
.field public static final SWS_ACCURATE_RND:I = 0x40000
.field public static final SWS_AREA:I = 0x20
.field public static final SWS_BICUBIC:I = 0x4
.field public static final SWS_BICUBLIN:I = 0x40
.field public static final SWS_BILINEAR:I = 0x2
.field public static final SWS_BITEXACT:I = 0x80000
.field public static final SWS_CPU_CAPS_3DNOW:I = 0x40000000
.field public static final SWS_CPU_CAPS_ALTIVEC:I = 0x10000000
.field public static final SWS_CPU_CAPS_BFIN:I = 0x1000000
.field public static final SWS_CPU_CAPS_MMX:I = -0x80000000
.field public static final SWS_CPU_CAPS_MMX2:I = 0x20000000
.field public static final SWS_CPU_CAPS_MMXEXT:I = 0x20000000
.field public static final SWS_CPU_CAPS_SSE2:I = 0x2000000
.field public static final SWS_CS_DEFAULT:I = 0x5
.field public static final SWS_CS_FCC:I = 0x4
.field public static final SWS_CS_ITU601:I = 0x5
.field public static final SWS_CS_ITU624:I = 0x5
.field public static final SWS_CS_ITU709:I = 0x1
.field public static final SWS_CS_SMPTE170M:I = 0x5
.field public static final SWS_CS_SMPTE240M:I = 0x7
.field public static final SWS_DIRECT_BGR:I = 0x8000
.field public static final SWS_ERROR_DIFFUSION:I = 0x800000
.field public static final SWS_FAST_BILINEAR:I = 0x1
.field public static final SWS_FULL_CHR_H_INP:I = 0x4000
.field public static final SWS_FULL_CHR_H_INT:I = 0x2000
.field public static final SWS_GAUSS:I = 0x80
.field public static final SWS_LANCZOS:I = 0x200
.field public static final SWS_MAX_REDUCE_CUTOFF:D = 0.0020
.field public static final SWS_PARAM_DEFAULT:I = 0x1e240
.field public static final SWS_POINT:I = 0x10
.field public static final SWS_PRINT_INFO:I = 0x1000
.field public static final SWS_SINC:I = 0x100
.field public static final SWS_SPLINE:I = 0x400
.field public static final SWS_SRC_V_CHR_DROP_MASK:I = 0x30000
.field public static final SWS_SRC_V_CHR_DROP_SHIFT:I = 0x10
.field public static final SWS_X:I = 0x8
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
.method public static native sws_addVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;Lcom/googlecode/javacv/cpp/swscale$SwsVector;)V
.end method
.method public static native sws_allocVec(I)Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method
.method public static native sws_alloc_context()Lcom/googlecode/javacv/cpp/swscale$SwsContext;
.end method
.method public static native sws_cloneVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;)Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method
.method public static native sws_convVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;Lcom/googlecode/javacv/cpp/swscale$SwsVector;)V
.end method
.method public static native sws_convertPalette8ToPacked24(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native sws_convertPalette8ToPacked24(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native sws_convertPalette8ToPacked24([B[BI[B)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native sws_convertPalette8ToPacked32(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacpp/BytePointer;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native sws_convertPalette8ToPacked32(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native sws_convertPalette8ToPacked32([B[BI[B)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public static native sws_freeContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;)V
.end method
.method public static native sws_freeFilter(Lcom/googlecode/javacv/cpp/swscale$SwsFilter;)V
.end method
.method public static native sws_freeVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;)V
.end method
.method public static native sws_getCachedContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;IIIIIIILcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/swscale$SwsContext;
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
.method public static native sws_getCachedContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;IIIIIIILcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;Ljava/nio/DoubleBuffer;)Lcom/googlecode/javacv/cpp/swscale$SwsContext;
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
.method public static native sws_getCachedContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;IIIIIIILcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;[D)Lcom/googlecode/javacv/cpp/swscale$SwsContext;
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
.method public static native sws_getCoefficients(I)Lcom/googlecode/javacpp/IntPointer;
.end method
.method public static native sws_getColorspaceDetails(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;)I
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
.method public static native sws_getColorspaceDetails(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/IntPointer;)I
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
.method public static native sws_getColorspaceDetails(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
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
.method public static native sws_getColorspaceDetails(Lcom/googlecode/javacv/cpp/swscale$SwsContext;[I[I[I[I[I[I[I)I
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
.method public static native sws_getConstVec(DI)Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method
.method public static native sws_getContext(IIIIIIILcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/swscale$SwsContext;
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
.method public static native sws_getContext(IIIIIIILcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;Ljava/nio/DoubleBuffer;)Lcom/googlecode/javacv/cpp/swscale$SwsContext;
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
.method public static native sws_getContext(IIIIIIILcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;[D)Lcom/googlecode/javacv/cpp/swscale$SwsContext;
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
.method public static native sws_getDefaultFilter(FFFFFFI)Lcom/googlecode/javacv/cpp/swscale$SwsFilter;
.end method
.method public static native sws_getGaussianVec(DD)Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method
.method public static native sws_getIdentityVec()Lcom/googlecode/javacv/cpp/swscale$SwsVector;
.end method
.method public static native sws_get_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method
.method public static native sws_init_context(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;)I
.end method
.method public static native sws_isSupportedEndiannessConversion(I)I
.parameter
.end parameter
.end method
.method public static native sws_isSupportedInput(I)I
.parameter
.end parameter
.end method
.method public static native sws_isSupportedOutput(I)I
.parameter
.end parameter
.end method
.method public static native sws_normalizeVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;D)V
.end method
.method public static native sws_printVec2(Lcom/googlecode/javacv/cpp/swscale$SwsVector;Lcom/googlecode/javacv/cpp/avutil$AVClass;I)V
.end method
.method public static native sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;)I
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
.method public static native sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;)I
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
.method public static native sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;IILjava/nio/ByteBuffer;Ljava/nio/IntBuffer;)I
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
.method public static native sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;[B[III[B[I)I
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
.method public static native sws_scaleVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;D)V
.end method
.method public static native sws_setColorspaceDetails(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/IntPointer;ILcom/googlecode/javacpp/IntPointer;IIII)I
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
.method public static native sws_setColorspaceDetails(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Ljava/nio/IntBuffer;ILjava/nio/IntBuffer;IIII)I
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
.method public static native sws_setColorspaceDetails(Lcom/googlecode/javacv/cpp/swscale$SwsContext;[II[IIIII)I
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
.method public static native sws_shiftVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;I)V
.end method
.method public static native sws_subVec(Lcom/googlecode/javacv/cpp/swscale$SwsVector;Lcom/googlecode/javacv/cpp/swscale$SwsVector;)V
.end method
.method public static native swscale_configuration()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public static native swscale_license()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public static native swscale_version()I
.end method