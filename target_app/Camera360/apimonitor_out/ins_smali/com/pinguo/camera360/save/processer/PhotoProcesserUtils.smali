.class public Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;
.super Ljava/lang/Object;
.source "PhotoProcesserUtils.java"
.field public static final KEY_JSON_EXPAND_TIMESTAMP:Ljava/lang/String; = "cet"
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static canTheProjectBeEdited(Ljava/lang/String;)Z
.registers 5
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->select(Ljava/lang/String;)J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-gtz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public static createForEdit(Ljava/lang/String;Z)Lcom/pinguo/camera360/photoedit/PictureInfo;
.registers 12
const/4 v9, 0x1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
new-instance v3, Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-direct {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V
sget-object v7, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v7, v7, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v3, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v9, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
new-instance v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-direct {v2, v7, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
invoke-virtual {v3, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
if-eqz p1, :cond_4b
const/16 v7, 0xca
:goto_2b
invoke-virtual {v3, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V
invoke-virtual {v3, v9}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V
invoke-virtual {v3, v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setTakenTime(J)V
invoke-virtual {v3, p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setOrgPath(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v7
invoke-static {v7, v8, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getPictureSavePath(JLjava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectPath(Ljava/lang/String;)V
return-object v3
:cond_4b
const/16 v7, 0xc9
goto :goto_2b
.end method
.method public static createForPuzzle(Ljava/lang/String;Z)Lcom/pinguo/camera360/photoedit/PictureInfo;
.registers 12
const/4 v9, 0x1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
new-instance v3, Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-direct {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v9, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
new-instance v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-direct {v2, v7, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
invoke-virtual {v3, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
if-eqz p1, :cond_4b
const/16 v7, 0x65
:goto_24
invoke-virtual {v3, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V
if-eqz p1, :cond_4e
const/16 v7, 0x29
:goto_2b
invoke-virtual {v3, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setCameraModeIndex(I)V
invoke-virtual {v3, v9}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V
invoke-virtual {v3, v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setTakenTime(J)V
invoke-virtual {v3, p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setOrgPath(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v7
invoke-static {v7, v8, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getPictureSavePath(JLjava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectPath(Ljava/lang/String;)V
return-object v3
:cond_4b
const/16 v7, 0x66
goto :goto_24
:cond_4e
const/16 v7, 0x2a
goto :goto_2b
.end method
.method public static createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
.registers 7
new-instance v2, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
invoke-direct {v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getCameraModeIndex()I
move-result v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setCameraModeIndex(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setPhotoType(I)V
const/4 v4, 0x0
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setTryCount(I)V
const-string/jumbo v4, "editing"
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setProjectState(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setOrientation(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setWidth(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setHeight(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v4
invoke-virtual {v2, v4, v5}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setElapsedTime(J)V
invoke-static {}, Lcom/pinguo/lib/util/Util;->getVersionCode()I
move-result v4
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setVersion(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getAddTimerWaterMark()Z
move-result v4
iput-boolean v4, v2, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->isTimeWatermark:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getJsonEx()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setJSONExpand(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getSoundInfo()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setExif(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v4
invoke-virtual {v2, v4, v5}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setDateTaken(J)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setDestPath(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setSourcePath(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setEffectAlias(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAppendix()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v1
if-eqz v1, :cond_90
invoke-virtual {v1}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;->toJson()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setEffectAppendix(Ljava/lang/String;)V
:cond_90
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v4
const/4 v5, 0x2
if-eq v4, v5, :cond_b6
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getAddTimerWaterMark()Z
move-result v4
if-eqz v4, :cond_b6
invoke-virtual {v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getExif()Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_b6
:try_start_a3
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v4, "time_water"
const/4 v5, 0x1
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setJSONExpand(Ljava/lang/String;)V
:try_end_b6
.catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b6} :catch_b7
:goto_b6
:cond_b6
return-object v2
:catch_b7
move-exception v0
const/4 v4, 0x0
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setExif(Ljava/lang/String;)V
goto :goto_b6
.end method
.method public static createPictureInfoFromItem(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)Lcom/pinguo/camera360/photoedit/PictureInfo;
.registers 5
new-instance v0, Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-direct {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getCameraMode()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setCameraModeIndex(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getEffectParam()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getEffectParam()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getEffectAppendix()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getEffectAppend(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDestPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectPath(Ljava/lang/String;)V
sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v2
invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setOrgPath(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getPhotoType()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getOrientation()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V
new-instance v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->width:I
iget v3, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->height:I
invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getExif()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setSoundInfo(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setTakenTime(J)V
iget-boolean v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->isTimeWatermark:Z
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setAddTimeWaterMark(Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getJSONExpand()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setJsonEx(Ljava/lang/String;)V
return-object v0
.end method
.method public static getAvilidPath(Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;Ljava/lang/String;)Ljava/lang/String;
.registers 7
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v2
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->select(Ljava/lang/String;)J
move-result-wide v0
sget-object v2, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, " timeStack = "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ", type = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-lez v2, :cond_32
invoke-static {p0, v0, v1}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getSandBoxPath(Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;J)Ljava/lang/String;
move-result-object p1
:cond_32
return-object p1
.end method
.method public static getSystemOrgPhoto(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, -0x4
invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "_org.jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static obtainEmptyForImport()Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
new-instance v1, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
const/16 v4, 0x16
invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;-><init>(JI)V
sget-object v4, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v4, v4, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setEffectAppendix(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getPictureSavePath(JLjava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setDestPath(Ljava/lang/String;)V
return-object v1
.end method
.method public static prepareDataForChangeEffectInEditModel(Ljava/lang/String;)Lorg/json/JSONObject;
.registers 5
sget-object v1, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "check json string : "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p0, :cond_20
const-string/jumbo v1, ""
invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_30
:cond_20
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:goto_25
const-string/jumbo v1, "cet"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
return-object v0
:cond_30
sget-object v1, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "check json string size : "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
goto :goto_25
.end method