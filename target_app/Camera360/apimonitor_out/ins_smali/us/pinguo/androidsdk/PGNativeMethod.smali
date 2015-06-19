.class public Lus/pinguo/androidsdk/PGNativeMethod;
.super Ljava/lang/Object;
.source "PGNativeMethod.java"
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "PinguoImageSDK"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final native adjustImage(IIZIFFFFZZIZ)Z
.end method
.method public static final native clearImage(II)Z
.end method
.method public static final native createAndroidSDK(Ljava/lang/String;Landroid/content/Context;[B)I
.end method
.method public static final native createEGLDisplay()I
.end method
.method public static final native createExternalOESTexture()I
.end method
.method public static final native destroyAndroidSDK(I)V
.end method
.method public static final native destroyEGLDisplay(I)V
.end method
.method public static final native destroyExternalOESTexture(I)V
.end method
.method public static final native getMakedImage2Buffer(I)[I
.end method
.method public static final native getMakedImage2BufferHeight(I)I
.end method
.method public static final native getMakedImage2BufferWidth(I)I
.end method
.method public static final native getMakedImage2JpegFile(ILjava/lang/String;I)Z
.end method
.method public static final native getMakedImage2PngFile(ILjava/lang/String;Z)Z
.end method
.method public static final native getMakedImage2Screen(IIIIII)Z
.end method
.method public static final native getMakedImagePreview(II)[I
.end method
.method public static final native getMakedImagePreviewHeight(I)I
.end method
.method public static final native getMakedImagePreviewJpeg(III)[B
.end method
.method public static final native getMakedImagePreviewWidth(I)I
.end method
.method public static final native getSupportLength(I)I
.end method
.method public static final native getTemplateHeight(I)I
.end method
.method public static final native getTemplateLoadResult(I)Z
.end method
.method public static final native getTemplateWidth(I)I
.end method
.method public static final native loadResource(I[B)Z
.end method
.method public static final native loadTemplate(ILjava/lang/String;Ljava/lang/String;)Z
.end method
.method public static final native make(I)Z
.end method
.method public static final native makeWithSize(III)Z
.end method
.method public static final native renderType(II)Z
.end method
.method public static final native setAutoClearShaderCache(IZ)Z
.end method
.method public static final native setBackground(IFFFF)V
.end method
.method public static final native setCleanColor(I)V
.end method
.method public static final native setEffect(ILjava/lang/String;)Z
.end method
.method public static final native setEffectParams(ILjava/lang/String;Ljava/lang/String;)Z
.end method
.method public static final native setImageFromARGB(II[IIIFF)Z
.end method
.method public static final native setImageFromJPEG(II[BFFI)Z
.end method
.method public static final native setImageFromPath(IILjava/lang/String;FFI)Z
.end method
.method public static final native setImageFromTexture(IIIII)Z
.end method
.method public static final native setImageFromYUV(II[BIIFF)Z
.end method
.method public static final native setResultImageToInput(II)Z
.end method
.method public static final native setSupportImageFromPNG(II[BFF)Z
.end method
.method public static final native setSupportImageFromPNGPath(IILjava/lang/String;FF)Z
.end method