.class public Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;
.super Ljava/lang/Object;
.source "EditSuperimposeEffectImageSaveStrategy.java"
.implements Lcom/pinguo/camera360/save/IImageSaveStrategy;
.field private static final TAG:Ljava/lang/String;
.field private mEffectPrevBitmap:Landroid/graphics/Bitmap;
.field private mOrgPrevBitmap:Landroid/graphics/Bitmap;
.field private mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public save([BLcom/pinguo/camera360/photoedit/PictureInfo;)Z
.registers 19
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v9
sget-object v14, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-static {v14, v9, v10}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v6
new-instance v3, Ljava/io/File;
invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z
move-result v14
if-nez v14, :cond_2b
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
if-eqz v14, :cond_29
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
const/4 v15, 0x0
move-object/from16 v0, p2
invoke-interface {v14, v0, v15}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
:cond_29
const/4 v14, 0x0
:goto_2a
return v14
:cond_2b
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
if-eqz v14, :cond_3a
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
const/16 v15, 0x5f
invoke-static {v6, v14, v15}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
:cond_3a
invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I
move-result v8
div-int/lit8 v13, v8, 0x4
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
const/4 v15, 0x0
invoke-static {v14, v13, v15}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v11
sget-object v14, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-static {v14, v9, v10}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v12
if-eqz v11, :cond_63
const/16 v14, 0x5f
invoke-static {v12, v11, v14}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
if-eqz v14, :cond_63
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
invoke-interface {v14, v11}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onThumbNailSaved(Landroid/graphics/Bitmap;)V
:cond_63
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
if-eqz v14, :cond_75
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
const/4 v14, 0x0
move-object/from16 v0, p0
iput-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
:cond_75
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
if-eqz v14, :cond_87
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
const/4 v14, 0x0
move-object/from16 v0, p0
iput-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
:cond_87
sget-object v14, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-static {v14, v9, v10}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;
move-result-object v5
:try_start_8d
invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;
move-result-object v7
invoke-static {v7, v5}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)V
:goto_94
:try_end_94
.catch Ljava/io/IOException; {:try_start_8d .. :try_end_94} :catch_bb
invoke-static/range {p2 .. p2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
move-result-object v4
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v14
invoke-static {v14, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->insertIntoSandBoxDB(Landroid/content/Context;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)V
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v14
move-object/from16 v0, p2
invoke-virtual {v14, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->makeEffectPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
if-eqz v14, :cond_b8
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
const/4 v15, 0x1
move-object/from16 v0, p2
invoke-interface {v14, v0, v15}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
:cond_b8
const/4 v14, 0x1
goto/16 :goto_2a
:catch_bb
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_94
.end method
.method public setCallback(Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
return-void
.end method
.method public setPreviewData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;
iput-object p2, p0, Lcom/pinguo/camera360/save/strategy/EditSuperimposeEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;
return-void
.end method