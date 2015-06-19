.class public Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;
.super Ljava/lang/Object;
.source "CPUPreviewMethod.java"
.field private jni:LvStudio/Android/GPhoto/GPhotoJNI;
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
new-instance v0, LvStudio/Android/GPhoto/GPhotoJNI;
invoke-direct {v0}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
return-void
.end method
.method protected makePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;Z)V
.registers 29
if-eqz p1, :cond_4
if-nez p3, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v19
invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->isValidSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Z
move-result v3
if-nez v3, :cond_13
invoke-static/range {p2 .. p2}, Lcom/pinguo/lib/image/BitmapUtils;->getPictureSize([B)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v19
:cond_13
invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->isValidSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Z
move-result v3
if-nez v3, :cond_23
const/4 v3, 0x0
const/4 v4, 0x0
move-object/from16 v0, p3
move-object/from16 v1, p1
invoke-interface {v0, v1, v3, v4}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
goto :goto_4
:cond_23
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPreviewLength()I
move-result v17
if-lez v17, :cond_31
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getMaxLength()I
move-result v3
move/from16 v0, v17
if-lt v0, v3, :cond_47
:cond_31
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v7
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v8
:goto_39
if-lez v8, :cond_3d
if-gtz v7, :cond_77
:cond_3d
const/4 v3, 0x0
const/4 v4, 0x0
move-object/from16 v0, p3
move-object/from16 v1, p1
invoke-interface {v0, v1, v3, v4}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
goto :goto_4
:cond_47
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v23
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v16
move/from16 v0, v23
move/from16 v1, v16
if-le v0, v1, :cond_66
move/from16 v7, v17
move/from16 v0, v23
int-to-float v3, v0
move/from16 v0, v17
int-to-float v4, v0
div-float v21, v3, v4
move/from16 v0, v16
int-to-float v3, v0
div-float v3, v3, v21
float-to-int v8, v3
goto :goto_39
:cond_66
move/from16 v8, v17
move/from16 v0, v16
int-to-float v3, v0
move/from16 v0, v17
int-to-float v4, v0
div-float v21, v3, v4
move/from16 v0, v23
int-to-float v3, v0
div-float v3, v3, v21
float-to-int v7, v3
goto :goto_39
:cond_77
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v6
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v3
const/16 v4, 0xc9
if-ne v3, v4, :cond_8a
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->isFromCamera360()Z
move-result v3
if-eqz v3, :cond_8a
const/4 v6, 0x0
:cond_8a
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicFrame()I
move-result v3
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v4
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v5
invoke-static {v3, v4, v5}, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->getCpuPicFramef(IILcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)F
move-result v11
if-eqz p2, :cond_cb
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
move-object/from16 v0, p2
array-length v5, v0
const/16 v9, 0x32
const/16 v10, 0x32
move-object/from16 v4, p2
invoke-virtual/range {v3 .. v11}, LvStudio/Android/GPhoto/GPhotoJNI;->beginProcessPreview([BIIIIIIF)Z
:goto_ac
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
invoke-virtual {v3}, LvStudio/Android/GPhoto/GPhotoJNI;->getPreviewWidth()I
move-result v7
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
invoke-virtual {v3}, LvStudio/Android/GPhoto/GPhotoJNI;->getPreviewHeight()I
move-result v8
if-lez v8, :cond_c0
if-gtz v7, :cond_d9
:cond_c0
const/4 v3, 0x0
const/4 v4, 0x0
move-object/from16 v0, p3
move-object/from16 v1, p1
invoke-interface {v0, v1, v3, v4}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
goto/16 :goto_4
:cond_cb
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;
move-result-object v4
const/16 v5, 0x32
invoke-virtual {v3, v4, v6, v7, v5}, LvStudio/Android/GPhoto/GPhotoJNI;->beginProcessPreview(Ljava/lang/String;III)Z
goto :goto_ac
:cond_d9
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffect()Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v12
if-nez v12, :cond_eb
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v12
:cond_eb
if-nez v12, :cond_158
const-string/jumbo v14, ""
:goto_f0
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "effect="
invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_15b
const-string/jumbo v3, "effect="
move-object/from16 v0, v20
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, v20
invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_10b
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAppendix()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v13
if-eqz v13, :cond_12b
const/4 v3, 0x0
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v4
invoke-virtual {v13, v3, v4, v12}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;->getEffectAppendParam(ZILcom/pinguo/camera360/effect/model/entity/Effect;)Ljava/lang/String;
move-result-object v22
if-eqz v22, :cond_12b
const-string/jumbo v3, ";"
move-object/from16 v0, v20
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, v20
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_12b
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v7, v8, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v15
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
const/4 v4, 0x0
invoke-virtual {v3, v15, v14, v4}, LvStudio/Android/GPhoto/GPhotoJNI;->ProcessPrevImageEX(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicFrame()I
move-result v3
invoke-static {v15, v3}, Lcom/pinguo/lib/image/BitmapUtils;->getCropImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v15
if-nez p4, :cond_161
const/4 v3, 0x0
move-object/from16 v0, p3
move-object/from16 v1, p1
invoke-interface {v0, v1, v15, v3}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
:goto_14f
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
invoke-virtual {v3}, LvStudio/Android/GPhoto/GPhotoJNI;->EndProcessPrevImage()V
goto/16 :goto_4
:cond_158
iget-object v14, v12, Lcom/pinguo/camera360/effect/model/entity/Effect;->cpuCmd:Ljava/lang/String;
goto :goto_f0
:cond_15b
move-object/from16 v0, v20
invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_10b
:cond_161
sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v7, v8, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v18
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
move-object/from16 v0, v18
invoke-virtual {v3, v0}, LvStudio/Android/GPhoto/GPhotoJNI;->GetOrgPrevImageEX(Landroid/graphics/Bitmap;)Z
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicFrame()I
move-result v3
move-object/from16 v0, v18
invoke-static {v0, v3}, Lcom/pinguo/lib/image/BitmapUtils;->getCropImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v18
move-object/from16 v0, p3
move-object/from16 v1, p1
move-object/from16 v2, v18
invoke-interface {v0, v1, v15, v2}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
goto :goto_14f
.end method
.method protected makeScenePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;)V
.registers 14
const/4 v6, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
array-length v2, p2
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
invoke-virtual {v1}, LvStudio/Android/GPhoto/GPhotoJNI;->GetSceneTemplateWidth()I
move-result v3
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
invoke-virtual {v1}, LvStudio/Android/GPhoto/GPhotoJNI;->GetSceneTemplateHeight()I
move-result v4
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getSceneParam()Ljava/lang/String;
move-result-object v5
move-object v1, p2
invoke-virtual/range {v0 .. v6}, LvStudio/Android/GPhoto/GPhotoJNI;->MakeSceneImage([BIIILjava/lang/String;Ljava/lang/String;)[I
move-result-object v7
if-eqz v7, :cond_3b
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
invoke-virtual {v0}, LvStudio/Android/GPhoto/GPhotoJNI;->GetSceneTemplateWidth()I
move-result v0
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->jni:LvStudio/Android/GPhoto/GPhotoJNI;
invoke-virtual {v1}, LvStudio/Android/GPhoto/GPhotoJNI;->GetSceneTemplateHeight()I
move-result v1
sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v7, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v8
const/16 v0, 0x5a
invoke-static {v8, v0}, Lcom/pinguo/lib/image/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v9
if-eq v9, v8, :cond_38
invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
:cond_38
invoke-interface {p3, p1, v9, v6}, Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
:cond_3b
return-void
.end method