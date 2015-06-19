.class  Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "GPULiveEffect.java"
.field private front:Z
.field final synthetic this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
.method private constructor <init>(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->front:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/photoedit/GPULiveEffect;Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;-><init>(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)V
return-void
.end method
.method public rendererAction()V
.registers 26
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->setCleanColor()V
sget-object v4, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->renderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)Z
const/4 v4, 0x0
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->buffer:[B
invoke-static {v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$11(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)[B
move-result-object v5
move-object/from16 v0, p0
iget-object v8, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewWidth:I
invoke-static {v8}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$4(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v8
move-object/from16 v0, p0
iget-object v9, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewHeight:I
invoke-static {v9}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$5(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v9
move-object/from16 v0, p0
invoke-virtual {v0, v4, v5, v8, v9}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->setImageFromYUV420SP(I[BII)Z
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mPreviewRect:Landroid/graphics/Rect;
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$12(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Landroid/graphics/Rect;
move-result-object v16
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lockSetFrame:[B
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$0(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)[B
move-result-object v13
monitor-enter v13
:try_start_39
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewFrame:I
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$3(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v4
#calls: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->getPreviewScale(I)F
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$13(I)F
move-result v15
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewWidth:I
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$4(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v4
int-to-float v4, v4
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewHeight:I
invoke-static {v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$5(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v5
int-to-float v5, v5
div-float v17, v4, v5
invoke-static {}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$14()F
move-result v4
const/high16 v5, 0x3f80
cmpg-float v4, v4, v5
if-gez v4, :cond_68
const/high16 v4, 0x3f80
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$15(F)V
:cond_68
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewFrame:I
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$3(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v4
if-eqz v4, :cond_81
const v4, 0x3c23d70a
cmpg-float v4, v15, v4
if-ltz v4, :cond_81
move/from16 v0, v17
#calls: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->isEqual(FF)Z
invoke-static {v15, v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$16(FF)Z
move-result v4
if-eqz v4, :cond_1ac
:cond_81
const/high16 v4, 0x3f80
invoke-static {}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$14()F
move-result v5
div-float v22, v4, v5
const/high16 v4, 0x3f80
sub-float v4, v4, v22
const/high16 v5, 0x4000
div-float v21, v4, v5
const/high16 v4, 0x3f80
add-float v4, v4, v22
const/high16 v5, 0x4000
div-float v20, v4, v5
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
new-instance v8, Lus/pinguo/androidsdk/PGRect;
move/from16 v0, v21
move/from16 v1, v21
move/from16 v2, v20
move/from16 v3, v20
invoke-direct {v8, v0, v1, v2, v3}, Lus/pinguo/androidsdk/PGRect;-><init>(FFFF)V
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
move-object/from16 v4, p0
invoke-virtual/range {v4 .. v12}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z
:goto_b2
monitor-exit v13
:try_end_b3
.catchall {:try_start_39 .. :try_end_b3} :catchall_1ef
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lock:[B
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$17(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)[B
move-result-object v13
monitor-enter v13
:try_start_bc
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->loadedTexture:Z
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$18(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Z
move-result v4
if-nez v4, :cond_151
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lastTextureIndex:I
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$19(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_de
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lastTextureIndex:I
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$19(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v4
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->clearImage(I)Z
:cond_de
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effect:Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$20(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getTexture()Lcom/pinguo/camera360/effect/model/entity/Texture;
move-result-object v23
invoke-static/range {v23 .. v23}, Lcom/pinguo/camera360/effect/model/entity/Texture;->isLegal(Lcom/pinguo/camera360/effect/model/entity/Texture;)Z
move-result v4
if-eqz v4, :cond_280
invoke-static/range {v23 .. v23}, Lcom/pinguo/camera360/photoedit/TextureManager;->getTexturePath(Lcom/pinguo/camera360/effect/model/entity/Texture;)Ljava/lang/String;
move-result-object v24
if-eqz v24, :cond_276
const-string/jumbo v4, ".jpg"
move-object/from16 v0, v24
invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_231
move-object/from16 v0, v23
iget v4, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
move-object/from16 v0, p0
move-object/from16 v1, v24
invoke-virtual {v0, v4, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->setImageFromPath(ILjava/lang/String;)Z
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
move-object/from16 v0, v23
iget v5, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lastTextureIndex:I
invoke-static {v4, v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$21(Lcom/pinguo/camera360/photoedit/GPULiveEffect;I)V
:goto_117
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lastTextureIndex:I
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$19(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_149
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->orientation:I
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$22(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v4
rsub-int v4, v4, 0x168
add-int/lit16 v4, v4, 0x10e
rem-int/lit16 v7, v4, 0x168
rem-int/lit16 v4, v7, 0xb4
if-eqz v4, :cond_261
const/4 v6, 0x1
:goto_135
move-object/from16 v0, p0
iget-boolean v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->front:Z
if-eqz v4, :cond_264
move-object/from16 v0, v23
iget v5, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
const/4 v8, 0x0
const/4 v9, 0x1
const/4 v10, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
move-object/from16 v4, p0
invoke-virtual/range {v4 .. v12}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z
:goto_149
:cond_149
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
const/4 v5, 0x1
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->loadedTexture:Z
invoke-static {v4, v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$23(Lcom/pinguo/camera360/photoedit/GPULiveEffect;Z)V
:cond_151
monitor-exit v13
:try_end_152
.catchall {:try_start_bc .. :try_end_152} :catchall_254
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->orientation:I
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$22(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v4
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->effect:Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-static {v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$20(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v5
move-object/from16 v0, p0
iget-boolean v8, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->front:Z
invoke-static {v4, v5, v8}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->resetRenderEffectParam(ILcom/pinguo/camera360/effect/model/entity/Effect;Z)Ljava/lang/String;
move-result-object v14
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Effect="
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->setEffect(Ljava/lang/String;)Z
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->make()Z
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mirror:I
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$24(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v9
move-object/from16 v0, v16
iget v10, v0, Landroid/graphics/Rect;->left:I
move-object/from16 v0, v16
iget v11, v0, Landroid/graphics/Rect;->top:I
move-object/from16 v0, v16
iget v4, v0, Landroid/graphics/Rect;->right:I
move-object/from16 v0, v16
iget v5, v0, Landroid/graphics/Rect;->left:I
sub-int v12, v4, v5
move-object/from16 v0, v16
iget v4, v0, Landroid/graphics/Rect;->bottom:I
move-object/from16 v0, v16
iget v5, v0, Landroid/graphics/Rect;->top:I
sub-int v13, v4, v5
move-object/from16 v8, p0
invoke-virtual/range {v8 .. v13}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->getMakedImage2Screen(IIIII)Z
return-void
:cond_1ac
cmpl-float v4, v17, v15
if-lez v4, :cond_1f2
div-float v4, v15, v17
:try_start_1b2
invoke-static {}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$14()F
move-result v5
div-float v18, v4, v5
const/high16 v4, 0x3f80
invoke-static {}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$14()F
move-result v5
div-float v19, v4, v5
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
new-instance v8, Lus/pinguo/androidsdk/PGRect;
const/high16 v4, 0x3f80
sub-float v4, v4, v18
const/high16 v9, 0x4000
div-float/2addr v4, v9
const/high16 v9, 0x3f80
sub-float v9, v9, v19
const/high16 v10, 0x4000
div-float/2addr v9, v10
const/high16 v10, 0x3f80
add-float v10, v10, v18
const/high16 v11, 0x4000
div-float/2addr v10, v11
const/high16 v11, 0x3f80
add-float v11, v11, v19
const/high16 v12, 0x4000
div-float/2addr v11, v12
invoke-direct {v8, v4, v9, v10, v11}, Lus/pinguo/androidsdk/PGRect;-><init>(FFFF)V
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
move-object/from16 v4, p0
invoke-virtual/range {v4 .. v12}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z
goto/16 :goto_b2
:catchall_1ef
move-exception v4
monitor-exit v13
:try_end_1f1
.catchall {:try_start_1b2 .. :try_end_1f1} :catchall_1ef
throw v4
:cond_1f2
div-float v4, v17, v15
:try_start_1f4
invoke-static {}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$14()F
move-result v5
div-float v19, v4, v5
const/high16 v4, 0x3f80
invoke-static {}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$14()F
move-result v5
div-float v18, v4, v5
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
new-instance v8, Lus/pinguo/androidsdk/PGRect;
const/high16 v4, 0x3f80
sub-float v4, v4, v18
const/high16 v9, 0x4000
div-float/2addr v4, v9
const/high16 v9, 0x3f80
sub-float v9, v9, v19
const/high16 v10, 0x4000
div-float/2addr v9, v10
const/high16 v10, 0x3f80
add-float v10, v10, v18
const/high16 v11, 0x4000
div-float/2addr v10, v11
const/high16 v11, 0x3f80
add-float v11, v11, v19
const/high16 v12, 0x4000
div-float/2addr v11, v12
invoke-direct {v8, v4, v9, v10, v11}, Lus/pinguo/androidsdk/PGRect;-><init>(FFFF)V
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
move-object/from16 v4, p0
invoke-virtual/range {v4 .. v12}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z
:try_end_22f
.catchall {:try_start_1f4 .. :try_end_22f} :catchall_1ef
goto/16 :goto_b2
:try_start_231
:cond_231
const-string/jumbo v4, ".png"
move-object/from16 v0, v24
invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_257
move-object/from16 v0, v23
iget v4, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
move-object/from16 v0, p0
move-object/from16 v1, v24
invoke-virtual {v0, v4, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->setSupportImageFromPNGPath(ILjava/lang/String;)Z
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
move-object/from16 v0, v23
iget v5, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lastTextureIndex:I
invoke-static {v4, v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$21(Lcom/pinguo/camera360/photoedit/GPULiveEffect;I)V
goto/16 :goto_117
:catchall_254
move-exception v4
monitor-exit v13
:try_end_256
.catchall {:try_start_231 .. :try_end_256} :catchall_254
throw v4
:try_start_257
:cond_257
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
const/4 v5, -0x1
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lastTextureIndex:I
invoke-static {v4, v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$21(Lcom/pinguo/camera360/photoedit/GPULiveEffect;I)V
goto/16 :goto_117
:cond_261
const/4 v6, 0x0
goto/16 :goto_135
:cond_264
if-eqz v7, :cond_149
move-object/from16 v0, v23
iget v5, v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
move-object/from16 v4, p0
invoke-virtual/range {v4 .. v12}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z
goto/16 :goto_149
:cond_276
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
const/4 v5, -0x1
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lastTextureIndex:I
invoke-static {v4, v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$21(Lcom/pinguo/camera360/photoedit/GPULiveEffect;I)V
goto/16 :goto_149
:cond_280
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
const/4 v5, -0x1
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lastTextureIndex:I
invoke-static {v4, v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$21(Lcom/pinguo/camera360/photoedit/GPULiveEffect;I)V
:try_end_288
.catchall {:try_start_257 .. :try_end_288} :catchall_254
goto/16 :goto_149
.end method
.method public setFront(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->front:Z
return-void
.end method
.method protected setScreenSize(ZII)V
.registers 12
if-lez p2, :cond_41
if-lez p3, :cond_41
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->lockSetFrame:[B
invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$0(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)[B
move-result-object v6
monitor-enter v6
:try_start_b
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenWidth:I
invoke-static {v0, p2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$1(Lcom/pinguo/camera360/photoedit/GPULiveEffect;I)V
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenHeight:I
invoke-static {v0, p3}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$2(Lcom/pinguo/camera360/photoedit/GPULiveEffect;I)V
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewFrame:I
invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$3(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v0
if-nez v0, :cond_45
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
iget-object v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewWidth:I
invoke-static {v2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$4(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewHeight:I
invoke-static {v3}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$5(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v3
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenWidth:I
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$6(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v4
iget-object v5, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenHeight:I
invoke-static {v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$7(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v5
#calls: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setSize(IIII)Landroid/graphics/Rect;
invoke-static {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$8(Lcom/pinguo/camera360/photoedit/GPULiveEffect;IIII)Landroid/graphics/Rect;
move-result-object v1
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mPreviewRect:Landroid/graphics/Rect;
invoke-static {v0, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$9(Lcom/pinguo/camera360/photoedit/GPULiveEffect;Landroid/graphics/Rect;)V
:goto_40
monitor-exit v6
:try_end_41
.catchall {:try_start_b .. :try_end_41} :catchall_6f
:cond_41
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->enableNeedCleanColor()V
return-void
:try_start_45
:cond_45
iget-object v7, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewWidth:I
invoke-static {v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$4(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v1
iget-object v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewHeight:I
invoke-static {v2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$5(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenWidth:I
invoke-static {v3}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$6(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v3
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenHeight:I
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$7(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v4
iget-object v5, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUNormalLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewFrame:I
invoke-static {v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$3(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v5
#calls: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setPreviewFrameSize(IIIII)Landroid/graphics/Rect;
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$10(Lcom/pinguo/camera360/photoedit/GPULiveEffect;IIIII)Landroid/graphics/Rect;
move-result-object v0
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mPreviewRect:Landroid/graphics/Rect;
invoke-static {v7, v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$9(Lcom/pinguo/camera360/photoedit/GPULiveEffect;Landroid/graphics/Rect;)V
goto :goto_40
:catchall_6f
move-exception v0
monitor-exit v6
:try_end_71
.catchall {:try_start_45 .. :try_end_71} :catchall_6f
throw v0
.end method