.class public Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PartnerAppDownLoadReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "appDownLoad"


# instance fields
.field private downloadManager:Landroid/app/DownloadManager;

.field private mAppFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->mAppFilePath:Ljava/lang/String;

    return-void
.end method

.method private getFilePath(Landroid/database/Cursor;)Ljava/io/File;
    .registers 7

    const-string/jumbo v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const-string/jumbo v2, "appDownLoad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_69

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->mAppFilePath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->mAppFilePath:Ljava/lang/String;

    :goto_49
    const-string/jumbo v2, "appDownLoad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mAppFilePath: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->mAppFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->mAppFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_69
    iget-object v2, p0, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->mAppFilePath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->mAppFilePath:Ljava/lang/String;

    goto :goto_49
.end method

.method private queryDownloadStatus(Landroid/content/Context;)V
    .registers 8

    const-string/jumbo v4, "download"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/DownloadManager;

    iput-object v4, p0, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->downloadManager:Landroid/app/DownloadManager;

    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    iget-object v4, p0, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v4, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string/jumbo v4, "status"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_7c

    :cond_2a
    :goto_2a
    return-void

    :sswitch_2b
    const-string/jumbo v4, "appDownLoad"

    const-string/jumbo v5, "STATUS_PAUSED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_34
    const-string/jumbo v4, "appDownLoad"

    const-string/jumbo v5, "STATUS_PENDING"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_3d
    const-string/jumbo v4, "appDownLoad"

    const-string/jumbo v5, "STATUS_RUNNING"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :sswitch_47
    const-string/jumbo v4, "appDownLoad"

    const-string/jumbo v5, "STATUS_SUCCESSFUL"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherPartnerAppDownLoad(I)V

    invoke-direct {p0, p1, v1}, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->startAppInstall(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_2a

    :sswitch_58
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherPartnerAppDownLoad(I)V

    const-string/jumbo v4, "appDownLoad"

    const-string/jumbo v5, "STATUS_FAILED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->getFilePath(Landroid/database/Cursor;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string/jumbo v4, "appDownLoad"

    const-string/jumbo v5, "delete"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_34
        0x2 -> :sswitch_3d
        0x4 -> :sswitch_2b
        0x8 -> :sswitch_47
        0x10 -> :sswitch_58
    .end sparse-switch
.end method

.method private startAppInstall(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->getFilePath(Landroid/database/Cursor;)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "appDownLoad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mAppFile: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string/jumbo v2, "appDownLoad"

    const-string/jumbo v3, "startAppInstall"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_46
    return-void

    :cond_47
    const-string/jumbo v2, "appDownLoad"

    const-string/jumbo v3, "The apk not exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string/jumbo v0, "appDownLoad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extra_download_id"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/guide/PartnerAppDownLoadReceiver;->queryDownloadStatus(Landroid/content/Context;)V

    return-void
.end method
