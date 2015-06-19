.class public Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;
.super Lus/pinguo/androidsdk/pgedit/PGEditController;
.source "PGEditCamera360Controller.java"
.field public static final RESULT_CODE_CAMERA360_CHANGE:I = 0x1001001
.field public static final RESULT_CODE_CAMERA360_OVERLAY:I = 0x1001002
.field private static final SAVE_PHOTO_FINISH_FOR_CAMERA360:I = 0x2
.field private static final SAVE_PHOTO_FINISH_FOR_OTHER:I = 0x1
.field private hasOrgPath:Z
.field private index:I
.field private isCamera360:Z
.field private isShowOrg:Z
.field private mCamera360Handler:Landroid/os/Handler;
.field private mFirstBackTipView:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
.field protected mOrgPath:Ljava/lang/String;
.field private sharePath:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Landroid/content/Context;Landroid/util/DisplayMetrics;Landroid/support/v4/app/FragmentTransaction;Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;)V
.registers 8
invoke-direct/range {p0 .. p6}, Lus/pinguo/androidsdk/pgedit/PGEditController;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/content/Context;Landroid/util/DisplayMetrics;Landroid/support/v4/app/FragmentTransaction;Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;)V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$1;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mCamera360Handler:Landroid/os/Handler;
const/4 v0, 0x1
iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->canClickMoreEffect:Z
return-void
.end method
.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->sharePath:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)Z
.registers 2
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->isShowOrg:Z
return v0
.end method
.method static synthetic access$2(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;Z)V
.registers 2
iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->hasOrgPath:Z
return-void
.end method
.method public static startEditFromCamera360(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ZZI)V
.registers 10
new-instance v0, Landroid/content/Intent;
const-class v1, Lus/pinguo/androidsdk/pgedit/PGEditActivity;
invoke-direct {v0, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "photo_path"
invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
if-eqz p1, :cond_15
const-string/jumbo v1, "org_path"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_15
if-eqz p2, :cond_1d
const-string/jumbo v1, "share_path"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_1d
const-string/jumbo v1, "is_camera360"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string/jumbo v1, "is_show_org"
invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string/jumbo v1, "index"
invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string/jumbo v1, "entry_type"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected changePhotoQuality(Ljava/lang/String;)V
.registers 5
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getPosition()I
move-result v0
iget-boolean v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->hasOrgPath:Z
if-eqz v1, :cond_17
if-nez v0, :cond_17
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mExecutorService:Ljava/util/concurrent/ExecutorService;
new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;
invoke-direct {v2, p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;Ljava/lang/String;)V
invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
:goto_16
return-void
:cond_17
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$5;
invoke-direct {v2, p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$5;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;Ljava/lang/String;)V
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffectForPGImageSDK(Lus/pinguo/androidsdk/PGRendererMethod;)V
goto :goto_16
.end method
.method public keyBack()V
.registers 3
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mFirstBackTipView:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
if-eqz v0, :cond_14
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mFirstBackTipView:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->getVisibility()I
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mFirstBackTipView:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->setVisibility(I)V
:goto_13
return-void
:cond_14
invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->keyBack()V
goto :goto_13
.end method
.method protected loadEditPhoto()V
.registers 3
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mExecutorService:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;
invoke-direct {v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public needShowQuitDialog()Z
.registers 5
const/4 v2, 0x0
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
if-eqz v3, :cond_d
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getNowStep()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
move-result-object v3
if-nez v3, :cond_e
:goto_d
:cond_d
return v2
:cond_e
iget-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->hasOrgPath:Z
if-eqz v3, :cond_1a
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getPosition()I
move-result v1
if-eqz v1, :cond_d
:cond_1a
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getNowStep()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
move-result-object v3
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->getBigPhoto()Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_d
const/4 v2, 0x1
goto :goto_d
.end method
.method public savePhotoFinishForCamera360(Landroid/app/Activity;)V
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->index:I
invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->setGalleryShowPosition(Landroid/content/Context;I)Z
invoke-virtual {p1}, Landroid/app/Activity;->finish()V
return-void
.end method
.method public savePhotoFinishForOther(Landroid/app/Activity;)V
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
const/4 v1, 0x0
invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->setGalleryShowPosition(Landroid/content/Context;I)Z
invoke-virtual {p1}, Landroid/app/Activity;->finish()V
return-void
.end method
.method protected savePhotoForNoChanged()V
.registers 2
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->sendBroadCastForCancel()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mControllerActionListener:Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;
invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;->activityFinish()V
return-void
.end method
.method protected savePhotoInThread(Ljava/lang/String;I)V
.registers 48
:try_start_0
move-object/from16 v0, p0
iget-boolean v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->isCamera360:Z
if-eqz v3, :cond_2e0
new-instance v31, Lorg/pinguo/richpicture/RichPictureInterface;
invoke-direct/range {v31 .. v31}, Lorg/pinguo/richpicture/RichPictureInterface;-><init>()V
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
move-object/from16 v0, v31
invoke-virtual {v0, v3}, Lorg/pinguo/richpicture/RichPictureInterface;->getAudioInfosFromFile(Ljava/lang/String;)Ljava/util/List;
move-result-object v23
if-eqz v23, :cond_27
invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I
move-result v3
if-eqz v3, :cond_27
invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_21
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_184
:cond_27
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-static {v3}, Lcom/pinguo/lib/image/Exif;->getExifData(Ljava/lang/String;)[B
move-result-object v17
new-instance v3, Ljava/io/File;
move-object/from16 v0, p0
iget-object v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v7, Ljava/io/File;
new-instance v8, Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v9, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, ".bat"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
if-nez p2, :cond_1dd
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-static {v0, v3, v1}, Lcom/pinguo/lib/image/Exif;->exifToJpegFile(Ljava/lang/String;Ljava/lang/String;[B)V
:goto_65
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v3
move-object/from16 v0, p0
iget-object v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-virtual {v3, v7}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->selectPhotoProject(Ljava/lang/String;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
move-result-object v26
invoke-static/range {v26 .. v26}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createPictureInfoFromItem(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v27
const/4 v3, 0x0
move-object/from16 v0, v26
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setOrientation(I)V
:try_end_7b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7b} :catch_195
:try_start_7b
invoke-virtual/range {v27 .. v27}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getJsonEx()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->prepareDataForChangeEffectInEditModel(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v22
if-eqz v22, :cond_109
invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v27
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setJsonEx(Ljava/lang/String;)V
const-string/jumbo v3, "cet"
const-wide/16 v7, 0x0
move-object/from16 v0, v22
invoke-virtual {v0, v3, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
move-result-wide v41
const-wide/16 v7, 0x0
cmp-long v3, v41, v7
if-eqz v3, :cond_109
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v29
new-instance v44, Landroid/content/ContentValues;
invoke-direct/range {v44 .. v44}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v3, "jsonExpand"
invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v7
move-object/from16 v0, v44
invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getPosition()I
move-result v28
move-object/from16 v0, p0
iget-boolean v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->hasOrgPath:Z
if-eqz v3, :cond_213
if-nez v28, :cond_213
const-string/jumbo v3, "eftAlias"
sget-object v7, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_EDIT_ORG:Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v7, v7, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
move-object/from16 v0, v44
invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_d4
:goto_d4
const-string/jumbo v3, "direct"
const/4 v7, 0x0
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
move-object/from16 v0, v44
invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
sget-object v3, Lcom/pinguo/camera360/gallery/data/model/C360Photo;->CONTENT_URI:Landroid/net/Uri;
const-string/jumbo v7, "effectPhotoSavePath=?"
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/String;
const/4 v9, 0x0
invoke-virtual/range {v26 .. v26}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDestPath()Ljava/lang/String;
move-result-object v10
aput-object v10, v8, v9
move-object/from16 v0, v29
move-object/from16 v1, v44
invoke-virtual {v0, v3, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
new-instance v3, Ljava/io/File;
move-object/from16 v0, p0
iget-object v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
move-object/from16 v0, v26
invoke-static {v3, v0, v7}, Lcom/pinguo/camera360/save/Storage;->updateWithRotation(Ljava/io/File;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Landroid/content/Context;)V
:try_end_109
.catch Lorg/json/JSONException; {:try_start_7b .. :try_end_109} :catch_255
.catch Ljava/lang/Exception; {:try_start_7b .. :try_end_109} :catch_195
:goto_109
:cond_109
:try_start_109
invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I
move-result v37
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
move/from16 v0, v37
invoke-static {v3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
move-result-object v16
sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-virtual/range {v26 .. v26}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v7
invoke-static {v3, v7, v8}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v34
if-eqz v16, :cond_14c
const/16 v3, 0x5f
move-object/from16 v0, v34
move-object/from16 v1, v16
invoke-static {v0, v1, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
div-int/lit8 v40, v37, 0x4
const/4 v3, 0x0
move-object/from16 v0, v16
move/from16 v1, v40
invoke-static {v0, v1, v3}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v38
sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-virtual/range {v26 .. v26}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->getDateTaken()J
move-result-wide v7
invoke-static {v3, v7, v8}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v39
if-eqz v38, :cond_14c
const/16 v3, 0x5f
move-object/from16 v0, v39
move-object/from16 v1, v38
invoke-static {v0, v1, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
:cond_14c
new-instance v3, Ljava/io/File;
move-object/from16 v0, p0
iget-object v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mOrgPath:Ljava/lang/String;
invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_25e
new-instance v3, Ljava/io/File;
new-instance v7, Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, ".bat"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->delete()Z
:goto_17b
:cond_17b
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mCamera360Handler:Landroid/os/Handler;
const/4 v7, 0x2
invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:goto_183
return-void
:cond_184
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v20
check-cast v20, Lorg/pinguo/richpicture/AudioInfo;
move-object/from16 v0, v31
move-object/from16 v1, p1
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Lorg/pinguo/richpicture/RichPictureInterface;->setAudioInfoToFile(Ljava/lang/String;Lorg/pinguo/richpicture/AudioInfo;)Z
:try_end_193
.catch Ljava/lang/Exception; {:try_start_109 .. :try_end_193} :catch_195
goto/16 :goto_21
:catch_195
move-exception v13
invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
new-instance v11, Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, ".bat"
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v11}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_1d4
new-instance v3, Ljava/io/File;
move-object/from16 v0, p0
iget-object v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->delete()Z
new-instance v3, Ljava/io/File;
move-object/from16 v0, p0
iget-object v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v11, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
:cond_1d4
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mEditHandler:Landroid/os/Handler;
const/4 v7, 0x3
invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_183
:try_start_1dd
:cond_1dd
new-instance v25, Lcom/pinguo/lib/image/PGExifInfo;
move-object/from16 v0, v25
move-object/from16 v1, v17
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;-><init>([B)V
move-object/from16 v0, p0
iget-boolean v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->hasOrgPath:Z
if-eqz v3, :cond_20c
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getPosition()I
move-result v3
if-nez v3, :cond_20c
move-object/from16 v0, v25
move/from16 v1, p2
invoke-virtual {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->setOrientation(I)V
:goto_1fd
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-virtual/range {v25 .. v25}, Lcom/pinguo/lib/image/PGExifInfo;->getExifData()[B
move-result-object v7
move-object/from16 v0, p1
invoke-static {v0, v3, v7}, Lcom/pinguo/lib/image/Exif;->exifToJpegFile(Ljava/lang/String;Ljava/lang/String;[B)V
goto/16 :goto_65
:cond_20c
const/4 v3, 0x0
move-object/from16 v0, v25
invoke-virtual {v0, v3}, Lcom/pinguo/lib/image/PGExifInfo;->setOrientation(I)V
:try_end_212
.catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_212} :catch_195
goto :goto_1fd
:try_start_213
:cond_213
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getList()Ljava/util/List;
move-result-object v35
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getPosition()I
move-result v36
move/from16 v19, v36
:goto_225
if-ltz v19, :cond_d4
move-object/from16 v0, v35
move/from16 v1, v19
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->getEffectProgressBean()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;
move-result-object v3
if-eqz v3, :cond_25b
move-object/from16 v0, v35
move/from16 v1, v19
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->getEffectProgressBean()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;
move-result-object v3
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;->getEffectKey()Ljava/lang/String;
move-result-object v15
if-eqz v15, :cond_25b
const-string/jumbo v3, "eftAlias"
move-object/from16 v0, v44
invoke-virtual {v0, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:try_end_253
.catch Lorg/json/JSONException; {:try_start_213 .. :try_end_253} :catch_255
.catch Ljava/lang/Exception; {:try_start_213 .. :try_end_253} :catch_195
goto/16 :goto_d4
:catch_255
move-exception v13
:try_start_256
invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V
goto/16 :goto_109
:cond_25b
add-int/lit8 v19, v19, -0x1
goto :goto_225
:cond_25e
new-instance v3, Ljava/io/File;
new-instance v7, Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, ".bat"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v7, Ljava/io/File;
move-object/from16 v0, p0
iget-object v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mOrgPath:Ljava/lang/String;
invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
:try_end_287
.catch Ljava/lang/Exception; {:try_start_256 .. :try_end_287} :catch_195
move-result v30
if-nez v30, :cond_17b
:try_start_28a
new-instance v3, Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, ".bat"
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
iget-object v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mOrgPath:Ljava/lang/String;
invoke-static {v3, v7}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Ljava/io/File;
move-object/from16 v0, p0
iget-object v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mOrgPath:Ljava/lang/String;
invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_17b
new-instance v3, Ljava/io/File;
new-instance v7, Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, ".bat"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->delete()Z
:try_end_2d8
.catch Ljava/lang/Exception; {:try_start_28a .. :try_end_2d8} :catch_2da
goto/16 :goto_17b
:catch_2da
move-exception v13
:try_start_2db
invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_17b
:cond_2e0
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;
move-result-object v14
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-static {v3, v5, v6}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v34
new-instance v18, Ljava/io/File;
move-object/from16 v0, v18
move-object/from16 v1, v34
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v12
invoke-static {v12}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
move-result v3
if-nez v3, :cond_30e
new-instance v3, Ljava/lang/Exception;
const-string/jumbo v7, "\u521b\u5efa\u6587\u4ef6\u5939\u5931\u8d25"
invoke-direct {v3, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v3
:cond_30e
const/16 v3, 0x5f
move-object/from16 v0, v34
invoke-static {v0, v14, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
sget-object v7, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-static {v7, v5, v6}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v7
invoke-static {v3, v7}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I
move-result v37
div-int/lit8 v40, v37, 0x4
const/4 v3, 0x0
move/from16 v0, v40
invoke-static {v14, v0, v3}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v38
sget-object v3, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-static {v3, v5, v6}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v39
if-eqz v38, :cond_340
const/16 v3, 0x5f
move-object/from16 v0, v39
move-object/from16 v1, v38
invoke-static {v0, v1, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
:cond_340
invoke-static {v5, v6}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getPictureSavePath(J)Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;
invoke-static {v3}, Lcom/pinguo/lib/image/Exif;->getExifData(Ljava/lang/String;)[B
move-result-object v17
new-instance v25, Lcom/pinguo/lib/image/PGExifInfo;
move-object/from16 v0, v25
move-object/from16 v1, v17
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;-><init>([B)V
const/4 v3, 0x0
move-object/from16 v0, v25
invoke-virtual {v0, v3}, Lcom/pinguo/lib/image/PGExifInfo;->setOrientation(I)V
invoke-virtual/range {v25 .. v25}, Lcom/pinguo/lib/image/PGExifInfo;->getExifData()[B
move-result-object v3
move-object/from16 v0, p1
invoke-static {v0, v4, v3}, Lcom/pinguo/lib/image/Exif;->exifToJpegFile(Ljava/lang/String;Ljava/lang/String;[B)V
new-instance v27, Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-direct/range {v27 .. v27}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V
move-object/from16 v0, v27
invoke-virtual {v0, v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setTakenTime(J)V
const/16 v3, 0x18
move-object/from16 v0, v27
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setCameraModeIndex(I)V
const/16 v3, 0xcb
move-object/from16 v0, v27
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V
const/4 v3, 0x0
move-object/from16 v0, v27
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V
move-object/from16 v0, v27
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectPath(Ljava/lang/String;)V
new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I
move-result v7
invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I
move-result v8
invoke-direct {v3, v7, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
move-object/from16 v0, v27
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v7, "{\"cet\":"
invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v7, ")"
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v27
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setJsonEx(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getList()Ljava/util/List;
move-result-object v35
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getPosition()I
move-result v36
move/from16 v19, v36
:goto_3cb
if-gez v19, :cond_431
:goto_3cd
invoke-static/range {v27 .. v27}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
move-result-object v21
const-string/jumbo v3, "finished"
move-object/from16 v0, v21
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->setProjectState(Ljava/lang/String;)V
:try_start_3d9
:try_end_3d9
.catch Ljava/lang/Exception; {:try_start_2db .. :try_end_3d9} :catch_195
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
move-object/from16 v0, v21
invoke-static {v3, v0}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->insertIntoSandBoxDB(Landroid/content/Context;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)V
:try_end_3e2
.catch Ljava/lang/Exception; {:try_start_3d9 .. :try_end_3e2} :catch_460
:goto_3e2
:try_start_3e2
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
const-string/jumbo v7, "image/jpeg"
const/4 v8, 0x0
new-instance v9, Ljava/io/File;
invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/4 v10, 0x0
invoke-static/range {v3 .. v10}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;ILjava/io/File;Landroid/location/Location;)Landroid/net/Uri;
move-result-object v43
if-nez v43, :cond_427
new-instance v33, Landroid/content/Intent;
const-string/jumbo v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
move-object/from16 v0, v33
invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
new-instance v32, Ljava/io/File;
move-object/from16 v0, v32
invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/16 v24, 0x0
invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_427
invoke-static/range {v32 .. v32}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v24
move-object/from16 v0, v33
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
move-object/from16 v0, v33
invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
:cond_427
move-object/from16 v0, p0
iget-object v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mCamera360Handler:Landroid/os/Handler;
const/4 v7, 0x1
invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto/16 :goto_183
:cond_431
move-object/from16 v0, v35
move/from16 v1, v19
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->getEffectProgressBean()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;
move-result-object v3
if-eqz v3, :cond_45c
move-object/from16 v0, v35
move/from16 v1, v19
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->getEffectProgressBean()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;
move-result-object v3
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;->getEffectKey()Ljava/lang/String;
move-result-object v15
if-eqz v15, :cond_45c
move-object/from16 v0, v27
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V
goto/16 :goto_3cd
:cond_45c
add-int/lit8 v19, v19, -0x1
goto/16 :goto_3cb
:catch_460
move-exception v13
invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
:try_end_464
.catch Ljava/lang/Exception; {:try_start_3e2 .. :try_end_464} :catch_195
goto/16 :goto_3e2
.end method
.method public setIndex(I)V
.registers 2
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->index:I
return-void
.end method
.method public setIsCamera360(Z)V
.registers 2
iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->isCamera360:Z
return-void
.end method
.method public setIsShowOrg(Z)V
.registers 2
iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->isShowOrg:Z
return-void
.end method
.method public setOrgPath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mOrgPath:Ljava/lang/String;
return-void
.end method
.method public setSharePath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->sharePath:Ljava/lang/String;
return-void
.end method
.method protected showFirstForOrg(Landroid/graphics/Bitmap;)V
.registers 10
invoke-super {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditController;->showFirstForOrg(Landroid/graphics/Bitmap;)V
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->hasOrgPath:Z
if-eqz v0, :cond_74
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->isShowBackTip(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_74
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
invoke-direct {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mFirstBackTipView:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mRootView:Landroid/view/View;
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mFirstBackTipView:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mFirstBackTipView:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$3;
invoke-direct {v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$3;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)V
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_back_relativelayout_width"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getDimen(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F
move-result v6
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_back_width_height"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getDimen(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F
move-result v7
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mFirstBackTipView:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mDisplayMetrics:Landroid/util/DisplayMetrics;
iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-static {v6}, Ljava/lang/Math;->round(F)I
move-result v2
invoke-static {v7}, Ljava/lang/Math;->round(F)I
move-result v3
const/high16 v4, 0x4248
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mDisplayMetrics:Landroid/util/DisplayMetrics;
iget v5, v5, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v4, v5
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v4
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mDisplayMetrics:Landroid/util/DisplayMetrics;
invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->measureTipMargin(IIIILandroid/util/DisplayMetrics;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mContext:Landroid/content/Context;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->showedBackTip(Landroid/content/Context;)Z
:cond_74
return-void
.end method