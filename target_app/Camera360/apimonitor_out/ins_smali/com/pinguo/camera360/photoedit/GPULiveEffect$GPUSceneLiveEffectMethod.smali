.class  Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "GPULiveEffect.java"
.field private front:Z
.field final synthetic this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
.method private constructor <init>(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->front:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/photoedit/GPULiveEffect;Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;-><init>(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)V
return-void
.end method
.method public rendererAction()V
.registers 10
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->setCleanColor()V
sget-object v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_SCENE:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->renderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)Z
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->buffer:[B
invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$11(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)[B
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewWidth:I
invoke-static {v2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$4(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->previewHeight:I
invoke-static {v3}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$5(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v3
invoke-virtual {p0, v1, v0, v2, v3}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->setImageFromYUV420SP(I[BII)Z
iget-boolean v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->front:Z
if-eqz v0, :cond_2d
const/4 v4, 0x0
const/4 v5, 0x1
move-object v0, p0
move v2, v1
move v3, v1
move v6, v1
move v7, v1
move v8, v1
invoke-virtual/range {v0 .. v8}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z
:cond_2d
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneFilePath:Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$28(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneParam:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$29(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->loadTemplate(Ljava/lang/String;Ljava/lang/String;)Z
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->loadTemplateSuccess()Z
move-result v0
if-eqz v0, :cond_9c
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->getTemplateWidth()I
move-result v1
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->getTemplateHeight()I
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenWidth:I
invoke-static {v3}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$6(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v3
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenHeight:I
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$7(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v4
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setSceneSize(IIII)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->make()Z
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mirror:I
invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$24(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v1
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneRect:Landroid/graphics/Rect;
invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$30(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Landroid/graphics/Rect;
move-result-object v0
iget v2, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneRect:Landroid/graphics/Rect;
invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$30(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Landroid/graphics/Rect;
move-result-object v0
iget v3, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneRect:Landroid/graphics/Rect;
invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$30(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Landroid/graphics/Rect;
move-result-object v0
iget v0, v0, Landroid/graphics/Rect;->bottom:I
iget-object v4, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneRect:Landroid/graphics/Rect;
invoke-static {v4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$30(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Landroid/graphics/Rect;
move-result-object v4
iget v4, v4, Landroid/graphics/Rect;->top:I
sub-int v4, v0, v4
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneRect:Landroid/graphics/Rect;
invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$30(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Landroid/graphics/Rect;
move-result-object v0
iget v0, v0, Landroid/graphics/Rect;->right:I
iget-object v5, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneRect:Landroid/graphics/Rect;
invoke-static {v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$30(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)Landroid/graphics/Rect;
move-result-object v5
iget v5, v5, Landroid/graphics/Rect;->left:I
sub-int v5, v0, v5
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->getMakedImage2Screen(IIIII)Z
:cond_9c
return-void
.end method
.method public setFront(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->front:Z
return-void
.end method
.method protected setScreenSize(ZII)V
.registers 8
if-lez p2, :cond_25
if-lez p3, :cond_25
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenWidth:I
invoke-static {v0, p2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$1(Lcom/pinguo/camera360/photoedit/GPULiveEffect;I)V
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mScreenHeight:I
invoke-static {v0, p3}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$2(Lcom/pinguo/camera360/photoedit/GPULiveEffect;I)V
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
iget-object v2, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->procScreenWidth:I
invoke-static {v2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$25(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->this$0:Lcom/pinguo/camera360/photoedit/GPULiveEffect;
#getter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->procScreenHeight:I
invoke-static {v3}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$26(Lcom/pinguo/camera360/photoedit/GPULiveEffect;)I
move-result v3
#calls: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setSize(IIII)Landroid/graphics/Rect;
invoke-static {v1, p2, p3, v2, v3}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$8(Lcom/pinguo/camera360/photoedit/GPULiveEffect;IIII)Landroid/graphics/Rect;
move-result-object v1
#setter for: Lcom/pinguo/camera360/photoedit/GPULiveEffect;->mSceneRect:Landroid/graphics/Rect;
invoke-static {v0, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->access$27(Lcom/pinguo/camera360/photoedit/GPULiveEffect;Landroid/graphics/Rect;)V
:cond_25
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect$GPUSceneLiveEffectMethod;->enableNeedCleanColor()V
return-void
.end method