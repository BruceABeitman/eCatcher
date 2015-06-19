.class public abstract Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "PGEditRendererMethod.java"
.implements Ljava/lang/Cloneable;
.field protected static final CHANGE_EFFECT:I = 0x1
.field protected static final DEFAULT_MIRRORX:Z = false
.field protected static final DEFAULT_MIRRORY:Z = false
.field protected static final DST_MAX_DEFAULT:I = 0x0
.field protected static final MAKE_EFFECT:I = 0x2
.field protected canStop:Z
.field protected isStop:Z
.field protected mActionType:I
.field protected mBitmap:Landroid/graphics/Bitmap;
.field protected mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
.field protected mEffect:Ljava/lang/String;
.field protected mPath:Ljava/lang/String;
.field protected mQuality:I
.field protected mSavePath:Ljava/lang/String;
.field protected mShowHeight:I
.field protected mShowWidth:I
.method public constructor <init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
.registers 6
const/4 v0, 0x1
invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V
iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mActionType:I
iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->canStop:Z
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mEffect:Ljava/lang/String;
iput p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mShowWidth:I
iput p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mShowHeight:I
iput-object p4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method public changeEffect()V
.registers 2
const/4 v0, 0x1
iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mActionType:I
return-void
.end method
.method protected clearIndex()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->clearImage(I)Z
return-void
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->clone()Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
move-result-object v0
return-object v0
.end method
.method public clone()Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.registers 3
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
:goto_6
:try_end_6
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7
return-object v1
:catch_7
move-exception v0
const/4 v1, 0x0
goto :goto_6
.end method
.method protected init()V
.registers 2
sget-object v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->renderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)Z
return-void
.end method
.method public makeEffect(Ljava/lang/String;Ljava/lang/String;ILus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
.registers 6
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mPath:Ljava/lang/String;
iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mSavePath:Ljava/lang/String;
iput p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mQuality:I
iput-object p4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
const/4 v0, 0x2
iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mActionType:I
return-void
.end method
.method public rendererAction()V
.registers 5
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->init()V
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mActionType:I
const/4 v3, 0x1
if-ne v2, v3, :cond_c
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->rendererActionForChange()Z
:goto_b
:cond_b
return-void
:cond_c
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mActionType:I
const/4 v3, 0x2
if-ne v2, v3, :cond_b
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->rendererActionForMake()Z
move-result v0
iget-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->isStop:Z
if-nez v2, :cond_b
const/4 v2, 0x0
iput-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->canStop:Z
if-nez v0, :cond_24
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
invoke-interface {v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->fail()V
goto :goto_b
:cond_24
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mSavePath:Ljava/lang/String;
sget v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoSize:I
invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
move-result-object v1
if-nez v1, :cond_34
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
invoke-interface {v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->fail()V
goto :goto_b
:cond_34
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mSavePath:Ljava/lang/String;
invoke-interface {v2, v1, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->success(Landroid/graphics/Bitmap;Ljava/lang/String;)V
goto :goto_b
.end method
.method protected rendererActionForChange()Z
.registers 9
const/4 v7, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->clearIndex()V
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->isStop:Z
if-eqz v0, :cond_a
:cond_9
:goto_9
return v1
:cond_a
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v0
if-nez v0, :cond_9
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mBitmap:Landroid/graphics/Bitmap;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getARGB(Landroid/graphics/Bitmap;)[I
move-result-object v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
invoke-virtual {p0, v1, v0, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->setImageFromARGB(I[III)Z
move-result v0
if-nez v0, :cond_31
const-string/jumbo v0, "setImageFromARGB is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_9
:cond_31
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->isStop:Z
if-nez v0, :cond_9
invoke-virtual {p0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->rendererActionProcess(Z)Z
move-result v6
if-eqz v6, :cond_9
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->isStop:Z
if-nez v0, :cond_9
iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mShowWidth:I
iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mShowHeight:I
move-object v0, p0
move v2, v1
move v3, v1
invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->getMakedImage2Screen(IIIII)Z
move-result v0
if-nez v0, :cond_53
const-string/jumbo v0, "getMakedImage2Screen failed"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_9
:cond_53
move v1, v7
goto :goto_9
.end method
.method protected rendererActionForMake()Z
.registers 13
const/4 v8, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->clearIndex()V
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->isStop:Z
if-eqz v0, :cond_a
:goto_9
:cond_9
return v1
:cond_a
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mPath:Ljava/lang/String;
invoke-virtual {p0, v1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->setImageFromPath(ILjava/lang/String;)Z
move-result v0
if-nez v0, :cond_19
const-string/jumbo v0, "setImageFromPath is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_9
:cond_19
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->isStop:Z
if-nez v0, :cond_9
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mPath:Ljava/lang/String;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getRotatedDegree(Ljava/lang/String;)I
move-result v3
if-eqz v3, :cond_40
const/16 v0, 0xb4
if-eq v3, v0, :cond_2b
if-nez v3, :cond_3e
:cond_2b
move v2, v1
:goto_2c
const/4 v4, 0x0
move-object v0, p0
move v5, v1
move v6, v1
move v7, v1
invoke-virtual/range {v0 .. v8}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->adjustImage(IZILus/pinguo/androidsdk/PGRect;ZZIZ)Z
move-result v0
if-nez v0, :cond_40
const-string/jumbo v0, "rotateMirror is fail"
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_9
:cond_3e
move v2, v8
goto :goto_2c
:cond_40
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->isStop:Z
if-nez v0, :cond_9
invoke-virtual {p0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->rendererActionProcess(Z)Z
move-result v9
if-eqz v9, :cond_9
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->isStop:Z
if-nez v0, :cond_9
new-instance v10, Ljava/io/File;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mSavePath:Ljava/lang/String;
invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_7d
invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v2, "mkdirs "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
:cond_7d
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mSavePath:Ljava/lang/String;
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mQuality:I
invoke-virtual {p0, v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->getMakedImage2JpegFile(Ljava/lang/String;I)Z
move-result v11
if-eqz v11, :cond_9
move v1, v8
goto :goto_9
.end method
.method protected rendererActionProcess(Z)Z
.registers 5
const/4 v1, 0x0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mEffect:Ljava/lang/String;
invoke-virtual {p0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->setEffect(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_10
const-string/jumbo v2, "setEffect is fail"
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
:goto_f
:cond_f
return v1
:cond_10
invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->setPersonalValue(Z)Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->make()Z
move-result v2
if-nez v2, :cond_23
const-string/jumbo v2, "make is fail"
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V
goto :goto_f
:cond_23
const/4 v1, 0x1
goto :goto_f
.end method
.method public setEffectValue(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mEffect:Ljava/lang/String;
return-void
.end method
.method public setPGEditRendererMethodActionListener(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->mEditRendererMethodActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
return-void
.end method
.method protected abstract setPersonalValue(Z)Z
.end method
.method public stopRendererAction()Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->isStop:Z
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->canStop:Z
return v0
.end method