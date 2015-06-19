.class public Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;
.super Ljava/lang/Object;
.source "EditReplaceEffectImageSaveStrategy.java"

# interfaces
.implements Lcom/pinguo/camera360/save/IImageSaveStrategy;


# instance fields
.field private mEffectPrevBitmap:Landroid/graphics/Bitmap;

.field private mOrgPrevBitmap:Landroid/graphics/Bitmap;

.field private mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public save([BLcom/pinguo/camera360/photoedit/PictureInfo;)Z
    .registers 18

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J

    move-result-wide v8

    sget-object v13, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    invoke-static {v13, v8, v9}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_27

    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v13, :cond_25

    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v13, v0, v14}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    :cond_25
    const/4 v13, 0x0

    :goto_26
    return v13

    :cond_27
    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_32

    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    const/16 v14, 0x5f

    invoke-static {v6, v13, v14}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    :cond_32
    invoke-static {}, Lcom/pinguo/lib/UIContants;->getAbsoluteWidth()I

    move-result v7

    div-int/lit8 v12, v7, 0x4

    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    invoke-static {v13, v12, v14}, Lcom/pinguo/lib/image/BitmapUtils;->makeThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v13, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    invoke-static {v13, v8, v9}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_55

    const/16 v13, 0x5f

    invoke-static {v11, v10, v13}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->saveBitmapToSandBox(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v13, :cond_55

    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    invoke-interface {v13, v10}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onThumbNailSaved(Landroid/graphics/Bitmap;)V

    :cond_55
    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_61

    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v13, 0x0

    iput-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    :cond_61
    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_6d

    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v13, 0x0

    iput-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;

    :cond_6d
    sget-object v13, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    invoke-static {v13, v8, v9}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;

    move-result-object v4

    :try_start_77
    invoke-static {v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->updateForReplaceEffect(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_96

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setOrgPath(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->makeEffectPicture(Lcom/pinguo/camera360/photoedit/PictureInfo;)V

    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    if-eqz v13, :cond_94

    iget-object v13, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-interface {v13, v0, v14}, Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V

    :cond_94
    const/4 v13, 0x1

    goto :goto_26

    :catch_96
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v13, 0x0

    goto :goto_26
.end method

.method public setCallback(Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;

    return-void
.end method

.method public setPreviewData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mOrgPrevBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/pinguo/camera360/save/strategy/EditReplaceEffectImageSaveStrategy;->mEffectPrevBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
