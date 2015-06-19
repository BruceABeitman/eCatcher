.class public Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;
.super Ljava/lang/Object;
.source "UpdateReturnBean.java"


# instance fields
.field private context:Ljava/lang/String;

.field private isUpdate:Z

.field private newVersionCode:Ljava/lang/String;

.field private newVersionName:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doUpdateOldMethod(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/push/business/update/UpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "download_title"

    const v2, 0x7f0802f6

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public buildUpdateAlertDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8

    new-instance v0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->getContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->getNewVersionName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    new-instance v5, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean$1;

    invoke-direct {v5, p0, p1}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean$1;-><init>(Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;Landroid/app/Activity;)V

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->initDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;)V

    return-object v0
.end method

.method public doUpdate(Landroid/content/Context;)V
    .registers 8

    :try_start_0
    const-string/jumbo v1, "Camera360_update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "download"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4, v2}, Lcom/pinguo/lib/util/DownloadFileUtils;->doDownLoadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/DownloadManager;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    :goto_37
    return-void

    :catch_38
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->doUpdateOldMethod(Landroid/content/Context;)V

    goto :goto_37
.end method

.method public getContext()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getNewVersionCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->newVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNewVersionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->newVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isUpdate()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->isUpdate:Z

    return v0
.end method

.method public setContext(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->context:Ljava/lang/String;

    return-void
.end method

.method public setNewVersionCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->newVersionCode:Ljava/lang/String;

    return-void
.end method

.method public setNewVersionName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->newVersionName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->path:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->isUpdate:Z

    return-void
.end method
