.class public abstract Lus/pinguo/androidsdk/PGRendererMethod;
.super Ljava/lang/Object;
.source "PGRendererMethod.java"
.field private static synthetic $SWITCH_TABLE$us$pinguo$androidsdk$PGRendererMethod$EM_MAKE_TYPE:[I
.field private lastParamsString:I
.field private lastPngFilename:I
.field private mRendererPointer:I
.field private needCleanColor:Z
.method static synthetic $SWITCH_TABLE$us$pinguo$androidsdk$PGRendererMethod$EM_MAKE_TYPE()[I
.registers 3
sget-object v0, Lus/pinguo/androidsdk/PGRendererMethod;->$SWITCH_TABLE$us$pinguo$androidsdk$PGRendererMethod$EM_MAKE_TYPE:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->values()[Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23
:goto_15
sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_SCENE:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21
:goto_1e
sput-object v0, Lus/pinguo/androidsdk/PGRendererMethod;->$SWITCH_TABLE$us$pinguo$androidsdk$PGRendererMethod$EM_MAKE_TYPE:[I
goto :goto_4
:catch_21
move-exception v1
goto :goto_1e
:catch_23
move-exception v1
goto :goto_15
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
const/4 v0, 0x1
iput-boolean v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->needCleanColor:Z
iput v1, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastPngFilename:I
iput v1, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastParamsString:I
return-void
.end method
.method protected adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z
.registers 21
if-nez p4, :cond_7
new-instance p4, Lus/pinguo/androidsdk/PGRect;
invoke-direct/range {p4 .. p4}, Lus/pinguo/androidsdk/PGRect;-><init>()V
:cond_7
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-virtual/range {p4 .. p4}, Lus/pinguo/androidsdk/PGRect;->getX_1()F
move-result v4
invoke-virtual/range {p4 .. p4}, Lus/pinguo/androidsdk/PGRect;->getY_1()F
move-result v5
invoke-virtual/range {p4 .. p4}, Lus/pinguo/androidsdk/PGRect;->getX_2()F
move-result v6
invoke-virtual/range {p4 .. p4}, Lus/pinguo/androidsdk/PGRect;->getY_2()F
move-result v7
move v1, p1
move v2, p2
move v3, p3
move/from16 v8, p5
move/from16 v9, p6
move/from16 v10, p7
move/from16 v11, p8
invoke-static/range {v0 .. v11}, Lus/pinguo/androidsdk/PGNativeMethod;->adjustImage(IIZIFFFFZZIZ)Z
move-result v0
return v0
.end method
.method protected clearImage(I)Z
.registers 3
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0, p1}, Lus/pinguo/androidsdk/PGNativeMethod;->clearImage(II)Z
move-result v0
return v0
.end method
.method public enableNeedCleanColor()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->needCleanColor:Z
return-void
.end method
.method protected getMakedImage2Buffer()Lus/pinguo/androidsdk/PGColorBuffer;
.registers 4
iget v2, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v2}, Lus/pinguo/androidsdk/PGNativeMethod;->getMakedImage2Buffer(I)[I
move-result-object v0
if-nez v0, :cond_a
const/4 v1, 0x0
:goto_9
return-object v1
:cond_a
new-instance v1, Lus/pinguo/androidsdk/PGColorBuffer;
invoke-direct {v1}, Lus/pinguo/androidsdk/PGColorBuffer;-><init>()V
invoke-virtual {v1, v0}, Lus/pinguo/androidsdk/PGColorBuffer;->setColorBuffer([I)V
iget v2, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v2}, Lus/pinguo/androidsdk/PGNativeMethod;->getMakedImage2BufferWidth(I)I
move-result v2
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/PGColorBuffer;->setImageWidth(I)V
iget v2, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v2}, Lus/pinguo/androidsdk/PGNativeMethod;->getMakedImage2BufferHeight(I)I
move-result v2
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/PGColorBuffer;->setImageHeight(I)V
goto :goto_9
.end method
.method protected getMakedImage2JpegFile(Ljava/lang/String;I)Z
.registers 4
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0, p1, p2}, Lus/pinguo/androidsdk/PGNativeMethod;->getMakedImage2JpegFile(ILjava/lang/String;I)Z
move-result v0
return v0
.end method
.method protected getMakedImage2PngFile(Ljava/lang/String;Z)Z
.registers 4
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0, p1, p2}, Lus/pinguo/androidsdk/PGNativeMethod;->getMakedImage2PngFile(ILjava/lang/String;Z)Z
move-result v0
return v0
.end method
.method protected getMakedImage2Screen(IIIII)Z
.registers 12
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-static/range {v0 .. v5}, Lus/pinguo/androidsdk/PGNativeMethod;->getMakedImage2Screen(IIIIII)Z
move-result v0
return v0
.end method
.method protected getMakedImagePreview(I)Lus/pinguo/androidsdk/PGColorBuffer;
.registers 5
iget v2, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v2, p1}, Lus/pinguo/androidsdk/PGNativeMethod;->getMakedImagePreview(II)[I
move-result-object v0
if-nez v0, :cond_a
const/4 v1, 0x0
:goto_9
return-object v1
:cond_a
new-instance v1, Lus/pinguo/androidsdk/PGColorBuffer;
invoke-direct {v1}, Lus/pinguo/androidsdk/PGColorBuffer;-><init>()V
invoke-virtual {v1, v0}, Lus/pinguo/androidsdk/PGColorBuffer;->setColorBuffer([I)V
iget v2, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v2}, Lus/pinguo/androidsdk/PGNativeMethod;->getMakedImagePreviewWidth(I)I
move-result v2
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/PGColorBuffer;->setImageWidth(I)V
iget v2, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v2}, Lus/pinguo/androidsdk/PGNativeMethod;->getMakedImagePreviewHeight(I)I
move-result v2
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/PGColorBuffer;->setImageHeight(I)V
goto :goto_9
.end method
.method protected getMakedImagePreviewJpeg(II)[B
.registers 4
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0, p1, p2}, Lus/pinguo/androidsdk/PGNativeMethod;->getMakedImagePreviewJpeg(III)[B
move-result-object v0
return-object v0
.end method
.method protected getRendererPointer()I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
return v0
.end method
.method protected getTemplateHeight()I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0}, Lus/pinguo/androidsdk/PGNativeMethod;->getTemplateHeight(I)I
move-result v0
return v0
.end method
.method protected getTemplateWidth()I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0}, Lus/pinguo/androidsdk/PGNativeMethod;->getTemplateWidth(I)I
move-result v0
return v0
.end method
.method protected loadTemplate(Ljava/lang/String;Ljava/lang/String;)Z
.registers 7
const/4 v3, -0x1
const/4 v0, 0x0
iget v1, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastPngFilename:I
invoke-virtual {p1}, Ljava/lang/String;->hashCode()I
move-result v2
if-ne v1, v2, :cond_12
iget v1, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastParamsString:I
invoke-virtual {p2}, Ljava/lang/String;->hashCode()I
move-result v2
if-eq v1, v2, :cond_34
:cond_12
iget v1, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v1, p1, p2}, Lus/pinguo/androidsdk/PGNativeMethod;->loadTemplate(ILjava/lang/String;Ljava/lang/String;)Z
move-result v0
iget v1, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v1}, Lus/pinguo/androidsdk/PGNativeMethod;->getTemplateLoadResult(I)Z
move-result v1
if-eqz v1, :cond_2e
invoke-virtual {p1}, Ljava/lang/String;->hashCode()I
move-result v1
iput v1, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastPngFilename:I
invoke-virtual {p2}, Ljava/lang/String;->hashCode()I
move-result v1
iput v1, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastParamsString:I
const/4 v0, 0x1
:goto_2d
return v0
:cond_2e
iput v3, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastPngFilename:I
iput v3, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastParamsString:I
const/4 v0, 0x0
goto :goto_2d
:cond_34
const/4 v0, 0x1
goto :goto_2d
.end method
.method protected loadTemplateSuccess()Z
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0}, Lus/pinguo/androidsdk/PGNativeMethod;->getTemplateLoadResult(I)Z
move-result v0
return v0
.end method
.method protected make()Z
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0}, Lus/pinguo/androidsdk/PGNativeMethod;->make(I)Z
move-result v0
return v0
.end method
.method protected renderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)Z
.registers 6
const/4 v3, -0x1
const/4 v0, 0x0
invoke-static {}, Lus/pinguo/androidsdk/PGRendererMethod;->$SWITCH_TABLE$us$pinguo$androidsdk$PGRendererMethod$EM_MAKE_TYPE()[I
move-result-object v1
invoke-virtual {p1}, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_22
iput v3, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastParamsString:I
iput v3, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastPngFilename:I
:goto_13
iget v1, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v1, v0}, Lus/pinguo/androidsdk/PGNativeMethod;->renderType(II)Z
move-result v1
return v1
:pswitch_1a
const/4 v0, 0x0
iput v3, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastParamsString:I
iput v3, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastPngFilename:I
goto :goto_13
:pswitch_20
const/4 v0, 0x1
goto :goto_13
:pswitch_data_22
.packed-switch 0x1
:pswitch_1a
:pswitch_20
.end packed-switch
.end method
.method public abstract rendererAction()V
.end method
.method public resetRenderMethod()V
.registers 2
const/4 v0, -0x1
iput v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastParamsString:I
iput v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->lastPngFilename:I
return-void
.end method
.method protected setAutoClearShaderCache(Z)Z
.registers 3
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0, p1}, Lus/pinguo/androidsdk/PGNativeMethod;->setAutoClearShaderCache(IZ)Z
move-result v0
return v0
.end method
.method protected setBackground(FFFF)V
.registers 6
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0, p1, p2, p3, p4}, Lus/pinguo/androidsdk/PGNativeMethod;->setBackground(IFFFF)V
return-void
.end method
.method protected setCleanColor()V
.registers 2
iget-boolean v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->needCleanColor:Z
if-eqz v0, :cond_10
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0}, Lus/pinguo/androidsdk/PGNativeMethod;->setCleanColor(I)V
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_X86:Z
if-eqz v0, :cond_10
const/4 v0, 0x0
iput-boolean v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->needCleanColor:Z
:cond_10
return-void
.end method
.method protected setEffect(Ljava/lang/String;)Z
.registers 3
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0, p1}, Lus/pinguo/androidsdk/PGNativeMethod;->setEffect(ILjava/lang/String;)Z
move-result v0
return v0
.end method
.method protected setEffectParams(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0, p1, p2}, Lus/pinguo/androidsdk/PGNativeMethod;->setEffectParams(ILjava/lang/String;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method protected setImageFromARGB(I[III)Z
.registers 12
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
const/4 v5, 0x0
const/high16 v6, 0x3f80
move v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-static/range {v0 .. v6}, Lus/pinguo/androidsdk/PGNativeMethod;->setImageFromARGB(II[IIIFF)Z
move-result v0
return v0
.end method
.method protected setImageFromJPEG(I[B)Z
.registers 9
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
const/4 v3, 0x0
const/high16 v4, 0x3f80
const/4 v5, 0x0
move v1, p1
move-object v2, p2
invoke-static/range {v0 .. v5}, Lus/pinguo/androidsdk/PGNativeMethod;->setImageFromJPEG(II[BFFI)Z
move-result v0
return v0
.end method
.method protected setImageFromJPEG(I[BFF)Z
.registers 11
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
const/4 v5, 0x0
move v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-static/range {v0 .. v5}, Lus/pinguo/androidsdk/PGNativeMethod;->setImageFromJPEG(II[BFFI)Z
move-result v0
return v0
.end method
.method protected setImageFromJPEG(I[BFFI)Z
.registers 12
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
move v1, p1
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-static/range {v0 .. v5}, Lus/pinguo/androidsdk/PGNativeMethod;->setImageFromJPEG(II[BFFI)Z
move-result v0
return v0
.end method
.method protected setImageFromJPEG(I[BI)Z
.registers 10
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
const/4 v3, 0x0
const/high16 v4, 0x3f80
move v1, p1
move-object v2, p2
move v5, p3
invoke-static/range {v0 .. v5}, Lus/pinguo/androidsdk/PGNativeMethod;->setImageFromJPEG(II[BFFI)Z
move-result v0
return v0
.end method
.method protected setImageFromPath(ILjava/lang/String;)Z
.registers 9
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
const/4 v3, 0x0
const/high16 v4, 0x3f80
const/4 v5, 0x0
move v1, p1
move-object v2, p2
invoke-static/range {v0 .. v5}, Lus/pinguo/androidsdk/PGNativeMethod;->setImageFromPath(IILjava/lang/String;FFI)Z
move-result v0
return v0
.end method
.method protected setImageFromPath(ILjava/lang/String;FF)Z
.registers 11
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
const/4 v5, 0x0
move v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-static/range {v0 .. v5}, Lus/pinguo/androidsdk/PGNativeMethod;->setImageFromPath(IILjava/lang/String;FFI)Z
move-result v0
return v0
.end method
.method protected setImageFromPath(ILjava/lang/String;FFI)Z
.registers 12
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
move v1, p1
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-static/range {v0 .. v5}, Lus/pinguo/androidsdk/PGNativeMethod;->setImageFromPath(IILjava/lang/String;FFI)Z
move-result v0
return v0
.end method
.method protected setImageFromPath(ILjava/lang/String;I)Z
.registers 10
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
const/4 v3, 0x0
const/high16 v4, 0x3f80
move v1, p1
move-object v2, p2
move v5, p3
invoke-static/range {v0 .. v5}, Lus/pinguo/androidsdk/PGNativeMethod;->setImageFromPath(IILjava/lang/String;FFI)Z
move-result v0
return v0
.end method
.method protected setImageFromYUV420SP(I[BII)Z
.registers 12
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
const/4 v5, 0x0
const/high16 v6, 0x3f80
move v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-static/range {v0 .. v6}, Lus/pinguo/androidsdk/PGNativeMethod;->setImageFromYUV(II[BIIFF)Z
move-result v0
return v0
.end method
.method public setRendererPointer(I)V
.registers 3
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
if-eq p1, v0, :cond_9
iput p1, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
const/4 v0, 0x1
iput-boolean v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->needCleanColor:Z
:cond_9
return-void
.end method
.method protected setScreenSize(ZII)V
.registers 4
return-void
.end method
.method protected setSupportImageFromPNG(I[B)Z
.registers 6
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-static {v0, p1, p2, v1, v2}, Lus/pinguo/androidsdk/PGNativeMethod;->setSupportImageFromPNG(II[BFF)Z
move-result v0
return v0
.end method
.method protected setSupportImageFromPNG(I[BFF)Z
.registers 6
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0, p1, p2, p3, p4}, Lus/pinguo/androidsdk/PGNativeMethod;->setSupportImageFromPNG(II[BFF)Z
move-result v0
return v0
.end method
.method protected setSupportImageFromPNGPath(ILjava/lang/String;)Z
.registers 6
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-static {v0, p1, p2, v1, v2}, Lus/pinguo/androidsdk/PGNativeMethod;->setSupportImageFromPNGPath(IILjava/lang/String;FF)Z
move-result v0
return v0
.end method
.method protected setSupportImageFromPNGPath(ILjava/lang/String;FF)Z
.registers 6
iget v0, p0, Lus/pinguo/androidsdk/PGRendererMethod;->mRendererPointer:I
invoke-static {v0, p1, p2, p3, p4}, Lus/pinguo/androidsdk/PGNativeMethod;->setSupportImageFromPNGPath(IILjava/lang/String;FF)Z
move-result v0
return v0
.end method