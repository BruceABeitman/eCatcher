.class public Lcom/pinguo/camera360/camera/model/PicturePreviewModel;
.super Ljava/lang/Object;
.source "PicturePreviewModel.java"

# interfaces
.implements Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;


# instance fields
.field private count:I

.field private makedCount:I

.field private saveFinishCount:I

.field private saveStartCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->count:I

    iput v0, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->makedCount:I

    iput v0, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->saveStartCount:I

    iput v0, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->saveFinishCount:I

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/model/PicturePreviewModel;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->makedCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/model/PicturePreviewModel;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->makedCount:I

    return-void
.end method


# virtual methods
.method public discard()V
    .registers 1

    return-void
.end method

.method public makePreview([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/photoedit/callback/PreCallback;ZZ)V
    .registers 12

    iget v0, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->count:I

    const-string/jumbo v0, "makePreview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start make Picture preview count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    new-instance v3, Lcom/pinguo/camera360/camera/model/PicturePreviewModel$1;

    invoke-direct {v3, p0, p3}, Lcom/pinguo/camera360/camera/model/PicturePreviewModel$1;-><init>(Lcom/pinguo/camera360/camera/model/PicturePreviewModel;Lcom/pinguo/camera360/photoedit/callback/PreCallback;)V

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->makePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V

    return-void
.end method

.method public makePreviewAndSave([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->makePreviewAndSave(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V

    return-void
.end method

.method public makePreviewNew([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/photoedit/callback/PreCallback;ZZ)V
    .registers 12

    iget v0, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->count:I

    const-string/jumbo v0, "makePreview"

    const-string/jumbo v1, "start make"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "makePreview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Picture preview count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    new-instance v3, Lcom/pinguo/camera360/camera/model/PicturePreviewModel$2;

    invoke-direct {v3, p0, p3}, Lcom/pinguo/camera360/camera/model/PicturePreviewModel$2;-><init>(Lcom/pinguo/camera360/camera/model/PicturePreviewModel;Lcom/pinguo/camera360/photoedit/callback/PreCallback;)V

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->makePreviewNew(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V

    return-void
.end method

.method public replaceEffect()V
    .registers 1

    return-void
.end method

.method public save(Landroid/content/Context;Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->save(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V

    return-void
.end method

.method public share(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/PictureInfo;I)V
    .registers 7

    invoke-static {p3}, Lcom/pinguo/share/ShareAccess;->pictureInfo2ShareInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/share/ShareInfo;

    move-result-object v0

    iput-object p2, v0, Lcom/pinguo/share/ShareInfo;->imageBitmap:Landroid/graphics/Bitmap;

    packed-switch p4, :pswitch_data_36

    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    invoke-static {p1, v0}, Lcom/pinguo/share/ShareManager;->qqShare(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V

    goto :goto_9

    :pswitch_e
    invoke-static {p1, v0}, Lcom/pinguo/share/ShareManager;->weChatShare(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V

    goto :goto_9

    :pswitch_12
    invoke-static {p1, v0}, Lcom/pinguo/share/ShareManager;->weChatFriendsShare(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V

    goto :goto_9

    :pswitch_16
    invoke-static {p1, v0}, Lcom/pinguo/share/ShareManager;->websiteShare(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V

    goto :goto_9

    :pswitch_1a
    const-string/jumbo v1, "com.instagram.android"

    invoke-static {p1, v1, v0}, Lcom/pinguo/share/ShareManager;->shareToLocalApp(Landroid/app/Activity;Ljava/lang/String;Lcom/pinguo/share/ShareInfo;)V

    goto :goto_9

    :pswitch_21
    invoke-static {p1, v0}, Lcom/pinguo/share/ShareManager;->shareToBeeTalkChat(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V

    goto :goto_9

    :pswitch_25
    invoke-static {p1, v0}, Lcom/pinguo/share/ShareManager;->shareToBeeTalkBuzz(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V

    goto :goto_9

    :pswitch_29
    const v1, 0x7f080048

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/share/ShareInfo;->uiContent:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/pinguo/share/ShareManager;->otherShare(Landroid/content/Context;Lcom/pinguo/share/ShareInfo;)V

    goto :goto_9

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_1a
        :pswitch_21
        :pswitch_25
        :pswitch_9
        :pswitch_16
        :pswitch_29
    .end packed-switch
.end method
