.class public Lcom/pinguo/camera360/gallery/GalleryActivity;
.super Lcom/pinguo/camera360/gallery/RootActivity;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final INTENT_ACTION_PICK_ONE_PHOTO:Ljava/lang/String; = "com.pinguo.camera360.gallery.pick_one_photo"

.field public static final INTENT_ACTION_PICK_PHOTOS:Ljava/lang/String; = "com.pinguo.camera360.gallery.pick_photos"

.field public static final INTENT_ACTION_VIEW_CHANGED_PHOTO:Ljava/lang/String; = "com.pinguo.camera360.gallery.view_photo"

.field public static final REQUEST_CODE_PUZZLE_PIC:I = 0x3e8

.field public static final REQUEST_CODE_PUZZLE_TMP:I = 0x3e9

.field public static final RESULT_CODE_PUZZLE_CANCEL:I = 0x7d0

.field public static final RESULT_CODE_PUZZLE_FINISHED:I = 0x7d1

.field public static final TAG:Ljava/lang/String; = "GalleryActivity"


# instance fields
.field private mIsPickPhotosActivity:Z

.field private mNbtfNewbieGuideView:Landroid/view/View;

.field private mUploadStatusListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/RootActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mIsPickPhotosActivity:Z

    new-instance v0, Lcom/pinguo/camera360/gallery/GalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/GalleryActivity$1;-><init>(Lcom/pinguo/camera360/gallery/GalleryActivity;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mUploadStatusListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;

    return-void
.end method

.method private checkUpdate(Landroid/app/Activity;)V
    .registers 5

    :try_start_0
    new-instance v1, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;

    invoke-direct {v1, p1}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->isNeedShowDialog()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method private isNeedUploadPicDesInfo()Z
    .registers 11

    const/4 v7, 0x0

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->isLogin(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    :goto_7
    return v7

    :cond_8
    invoke-static {p0}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getIsChangedPicDesciribe()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFirstUploadPicInfoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_2f

    sub-long v8, v4, v0

    cmp-long v8, v8, v2

    if-ltz v8, :cond_7

    :cond_2f
    invoke-virtual {v6, v4, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFirstUploadPicInfoTime(J)V

    const/4 v7, 0x1

    goto :goto_7
.end method

.method private puzzleFinished()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/gallery/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.pinguo.camera360.gallery.view_photo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->finish()V

    return-void
.end method

.method private resultFromPhotoEdit(ILandroid/content/Intent;)V
    .registers 7

    packed-switch p1, :pswitch_data_30

    :goto_3
    return-void

    :pswitch_4
    const-string/jumbo v1, "GalleryActivity"

    const-string/jumbo v2, "result from photoEdit, restart GalleryActivity !"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/gallery/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.pinguo.camera360.gallery.view_photo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "index-hint"

    const-string/jumbo v2, "index-hint"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    nop

    :pswitch_data_30
    .packed-switch 0x1001002
        :pswitch_4
    .end packed-switch
.end method

.method public static startDefaultPage(Lcom/pinguo/camera360/gallery/RootActivity;)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "media-type"

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "media-path-id"

    const-string/jumbo v2, "path-c360"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;

    move-result-object v1

    const-class v2, Lcom/pinguo/camera360/gallery/AlbumPage;

    invoke-virtual {v1, v2, v0}, Lcom/pinguo/camera360/gallery/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startPickOnePhoto(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/Path;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [J

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_52

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/gallery/data/DataManager;->setHidePhotoTimes([J)V

    :cond_1c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "media-type"

    const-string/jumbo v4, "media-type"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "media-path-id"

    const-string/jumbo v4, "media-path-id"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "media-name"

    const-string/jumbo v4, "media-name"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;

    move-result-object v3

    const-class v4, Lcom/pinguo/camera360/gallery/AlbumPage;

    invoke-virtual {v3, v4, v0}, Lcom/pinguo/camera360/gallery/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void

    :cond_52
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/gallery/data/Path;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/Path;->getTokenMills()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method private startPickPhotos()V
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "media-type"

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "media-path-id"

    const-string/jumbo v2, "path-c360"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sync_photo"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;

    move-result-object v1

    const-class v2, Lcom/pinguo/camera360/gallery/AlbumPage;

    invoke-virtual {v1, v2, v0}, Lcom/pinguo/camera360/gallery/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iput-boolean v3, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mIsPickPhotosActivity:Z

    return-void
.end method

.method private startPostPicDesInfo()V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->isNeedUploadPicDesInfo()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v1, Lcom/pinguo/camera360/gallery/GalleryActivity$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/gallery/GalleryActivity$2;-><init>(Lcom/pinguo/camera360/gallery/GalleryActivity;)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/GalleryActivity$2;->start()V

    goto :goto_6
.end method

.method private startViewPuzzledPhoto(I)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "index-hint"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "only-page-in-stack"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "media-type"

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "media-path-id"

    const-string/jumbo v2, "path-c360"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;

    move-result-object v1

    const-class v2, Lcom/pinguo/camera360/gallery/PhotoPage;

    invoke-virtual {v1, v2, v0}, Lcom/pinguo/camera360/gallery/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/16 v1, 0x7d1

    sparse-switch p1, :sswitch_data_46

    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/data/DataManager;->setActivityMode(I)V

    invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/RootActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :sswitch_11
    if-ne p2, v1, :cond_5

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->puzzleFinished()V

    goto :goto_5

    :sswitch_17
    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_22

    const-string/jumbo v0, "intent_key_current_photo_path_list"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    goto :goto_5

    :cond_22
    if-ne p2, v1, :cond_5

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->puzzleFinished()V

    goto :goto_5

    :sswitch_28
    invoke-direct {p0, p2, p3}, Lcom/pinguo/camera360/gallery/GalleryActivity;->resultFromPhotoEdit(ILandroid/content/Intent;)V

    goto :goto_5

    :sswitch_2c
    if-eqz p3, :cond_5

    const-string/jumbo v0, "result_code"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_58

    goto :goto_5

    :pswitch_3a
    const v0, 0x7f080129

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :sswitch_data_46
    .sparse-switch
        0x41 -> :sswitch_2c
        0x3e8 -> :sswitch_11
        0x3e9 -> :sswitch_17
        0x2724 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x40
        :pswitch_3a
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mNbtfNewbieGuideView:Landroid/view/View;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mNbtfNewbieGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mNbtfNewbieGuideView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->instance()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;

    move-result-object v0

    const-string/jumbo v1, "key_newbie_guide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->putBoolean(Ljava/lang/String;Z)V

    :goto_1e
    return-void

    :cond_1f
    invoke-super {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->onBackPressed()V

    goto :goto_1e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mNbtfNewbieGuideView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->instance()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;

    move-result-object v0

    const-string/jumbo v1, "key_newbie_guide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_7

    nop

    :pswitch_data_1c
    .packed-switch 0x7f0a0148
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->startGalleryActivity()V

    const v5, 0x7f030034

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/gallery/GalleryActivity;->setContentView(I)V

    invoke-super {p0, p1}, Lcom/pinguo/camera360/gallery/RootActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/pinguo/camera360/gallery/StateManager;->restoreFromState(Landroid/os/Bundle;)V

    :goto_19
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    const-string/jumbo v5, "app://pinguo.android.team.albumView"

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "app://pinguo.android.team.albumView"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-static {v9}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushSimple(I)V

    :cond_39
    invoke-direct {p0, p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->checkUpdate(Landroid/app/Activity;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    return-void

    :cond_44
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "GalleryActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "------------------------GalleryActivity action:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "com.pinguo.camera360.gallery.pick_one_photo"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/gallery/data/DataManager;->setActivityMode(I)V

    const-string/jumbo v5, "intent_key_current_photo_path_list"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/pinguo/camera360/gallery/GalleryActivity;->startPickOnePhoto(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto :goto_19

    :cond_82
    const-string/jumbo v5, "com.pinguo.camera360.gallery.view_photo"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/gallery/data/DataManager;->setActivityMode(I)V

    const-string/jumbo v5, "index-hint"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/gallery/GalleryActivity;->startViewPuzzledPhoto(I)V

    goto/16 :goto_19

    :cond_9f
    const-string/jumbo v5, "com.pinguo.camera360.gallery.pick_photos"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/pinguo/camera360/gallery/data/DataManager;->setActivityMode(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->startPickPhotos()V

    goto/16 :goto_19

    :cond_b4
    const-string/jumbo v5, "GalleryActivity"

    const-string/jumbo v6, "------------------------\u6b63\u5e38\u8fdb\u5165 action"

    invoke-static {v5, v6}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/gallery/data/DataManager;->setActivityMode(I)V

    invoke-static {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->startDefaultPage(Lcom/pinguo/camera360/gallery/RootActivity;)V

    const v5, 0x7f0a0148

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/gallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mNbtfNewbieGuideView:Landroid/view/View;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mNbtfNewbieGuideView:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->instance()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;

    move-result-object v5

    const-string/jumbo v6, "key_newbie_guide"

    invoke-virtual {v5, v6, v9}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_ea

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mNbtfNewbieGuideView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_19

    :cond_ea
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mNbtfNewbieGuideView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_19
.end method

.method protected onDestroy()V
    .registers 2

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->onDestroy()V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/nearbytransfer/event/FinishPickPhtotsActivityEvent;)V
    .registers 4

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mIsPickPhotosActivity:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/data/DataManager;->setActivityMode(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->finish()V

    :cond_f
    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->unBind(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getInstance()Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mUploadStatusListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;

    invoke-virtual {v0, p0, v1}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->unRegistListener(Landroid/content/Context;Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->startPostPicDesInfo()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->startGalleryActivity()V

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/RootActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->start(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->bind(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getInstance()Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mUploadStatusListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;

    invoke-virtual {v0, p0, v1}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->registListener(Landroid/content/Context;Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mAlbumActionBar:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateCloudAlbumStatus()V

    return-void
.end method

.method public startGalleryActivity()V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->getGalleryShowPosition(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->clearGalleryShowPosition(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/pinguo/camera360/gallery/GalleryActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "com.pinguo.camera360.gallery.view_photo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "index-hint"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2b
    return-void
.end method
