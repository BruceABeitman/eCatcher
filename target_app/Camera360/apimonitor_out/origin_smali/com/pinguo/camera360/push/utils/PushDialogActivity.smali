.class public Lcom/pinguo/camera360/push/utils/PushDialogActivity;
.super Landroid/app/Activity;
.source "PushDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_INTENT_WEB:Ljava/lang/String; = "http://"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "newpush"


# instance fields
.field private btnLeft:Landroid/widget/Button;

.field private btnLink1:Ljava/lang/String;

.field private btnLink2:Ljava/lang/String;

.field private btnRight:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private msg:Ljava/lang/String;

.field private pushType:I

.field private title:Ljava/lang/String;

.field private tvDetail:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->pushType:I

    iput-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink1:Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink2:Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLeft:Landroid/widget/Button;

    iput-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnRight:Landroid/widget/Button;

    iput-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->tvDetail:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->tvTitle:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->msg:Ljava/lang/String;

    return-void
.end method

.method private doBtnLink(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "app://pinguo.android.team.cameraView"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :cond_14
    const-string/jumbo v1, "app://pinguo.android.team.albumView"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/pinguo/camera360/gallery/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_26
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->finish()V

    return-void
.end method

.method private initData(Landroid/content/Intent;)V
    .registers 5

    const-string/jumbo v0, "type"

    iget v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->pushType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->pushType:I

    const-string/jumbo v0, "newpush"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "push type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->pushType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "dialog_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->title:Ljava/lang/String;

    const-string/jumbo v0, "dialog_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->msg:Ljava/lang/String;

    iget-object v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->tvDetail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->pushType:I

    invoke-direct {p0, v0, p1}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->setDialog(ILandroid/content/Intent;)V

    return-void
.end method

.method private initUI()V
    .registers 2

    const v0, 0x7f0a0600

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLeft:Landroid/widget/Button;

    const v0, 0x7f0a0601

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnRight:Landroid/widget/Button;

    const v0, 0x7f0a0237

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->tvDetail:Landroid/widget/TextView;

    const v0, 0x7f0a05ff

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private openWeb(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/pinguo/camera360/push/business/web/PushWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "title"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "return"

    const-string/jumbo v2, "app://pinguo.android.team.cameraView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->finish()V

    return-void
.end method

.method private setDialog(ILandroid/content/Intent;)V
    .registers 8

    sparse-switch p1, :sswitch_data_94

    :goto_3
    return-void

    :sswitch_4
    const-string/jumbo v2, "btn_txt_1"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "btn_link_1"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink1:Ljava/lang/String;

    const-string/jumbo v2, "btn_txt_2"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "btn_link_2"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_30

    iget-object v2, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_30
    iget-object v2, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnRight:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "newpush"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "push dialog: btntxt1 : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " btntxt2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_57
    const-string/jumbo v2, "newpush"

    const-string/jumbo v3, "push update"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLeft:Landroid/widget/Button;

    const v3, 0x7f0802fd

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnRight:Landroid/widget/Button;

    const v3, 0x7f080184

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    const-string/jumbo v2, "btn_link_2"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink2:Ljava/lang/String;

    const-string/jumbo v2, "newpush"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update link : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    nop

    :sswitch_data_94
    .sparse-switch
        0x3 -> :sswitch_4
        0x7 -> :sswitch_57
    .end sparse-switch
.end method

.method private startUpdate(Ljava/lang/String;)V
    .registers 12

    const-string/jumbo v6, "newpush"

    invoke-static {v6, p1}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3c

    const-string/jumbo v6, "appDownLoad"

    const-string/jumbo v7, "Storage can not used"

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0800e9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, p0, v6, v7}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    const/16 v6, 0x7d0

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V

    :goto_3b
    return-void

    :cond_3c
    const-string/jumbo v1, "Camera360_update"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "download"

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    invoke-static {v1, v0, p1, v2}, Lcom/pinguo/lib/util/DownloadFileUtils;->doDownLoadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/DownloadManager;)V

    new-instance v5, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v6, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0802fe

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, p0, v6, v7}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    const/16 v6, 0x7d0

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_83} :catch_87

    :goto_83
    invoke-virtual {p0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->finish()V

    goto :goto_3b

    :catch_87
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v6, "newpush"

    const-string/jumbo v7, "The device not support downLoadManger"

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->startUpdateOldMethod(Ljava/lang/String;)V

    goto :goto_83
.end method

.method private startUpdateOldMethod(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v1, "newpush"

    invoke-static {v1, p1}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/push/business/update/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "download_title"

    const v2, 0x7f0802f6

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "newpush"

    iget-object v2, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink2:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0a0600

    if-ne v0, v1, :cond_46

    iget v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->pushType:I

    if-ne v3, v1, :cond_3c

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushDialogView(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink1:Ljava/lang/String;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2c

    :cond_28
    invoke-virtual {p0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->finish()V

    :goto_2b
    return-void

    :cond_2c
    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink1:Ljava/lang/String;

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink1:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->openWeb(Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    iget v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->pushType:I

    if-ne v5, v1, :cond_46

    invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushUpdate(I)V

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushDialog(I)V

    :cond_46
    const v1, 0x7f0a0601

    if-ne v0, v1, :cond_88

    iget v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->pushType:I

    if-ne v3, v1, :cond_70

    invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushDialogView(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink1:Ljava/lang/String;

    if-nez v1, :cond_60

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->finish()V

    goto :goto_2b

    :cond_5a
    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink1:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->doBtnLink(Ljava/lang/String;)V

    goto :goto_3c

    :cond_60
    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink2:Ljava/lang/String;

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink2:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->openWeb(Ljava/lang/String;)V

    :cond_70
    :goto_70
    iget v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->pushType:I

    if-ne v5, v1, :cond_88

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushDialog(I)V

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushUpdate(I)V

    const-string/jumbo v1, "newpush"

    iget-object v2, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink2:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink2:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->startUpdate(Ljava/lang/String;)V

    :cond_88
    invoke-virtual {p0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->finish()V

    goto :goto_2b

    :cond_8c
    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->btnLink2:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->doBtnLink(Ljava/lang/String;)V

    goto :goto_70
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushDialog(I)V

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushUpdate(I)V

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushDialogView(I)V

    const v0, 0x7f030122

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "newpush"

    const-string/jumbo v1, "onCreate: "

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->initUI()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->initData(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v2, 0x4

    const/4 v0, 0x3

    iget v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->pushType:I

    if-ne v0, v1, :cond_9

    invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushDialogView(I)V

    :cond_9
    const/4 v0, 0x7

    iget v1, p0, Lcom/pinguo/camera360/push/utils/PushDialogActivity;->pushType:I

    if-ne v0, v1, :cond_11

    invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushUpdate(I)V

    :cond_11
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
