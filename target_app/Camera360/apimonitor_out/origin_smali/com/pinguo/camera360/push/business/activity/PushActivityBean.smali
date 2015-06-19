.class public Lcom/pinguo/camera360/push/business/activity/PushActivityBean;
.super Ljava/lang/Object;
.source "PushActivityBean.java"

# interfaces
.implements Lcom/pinguo/camera360/push/PushDataBean;


# static fields
.field public static final KEY_IMAGE:Ljava/lang/String; = "image"

.field public static final KEY_LINK:Ljava/lang/String; = "link"

.field public static final KEY_MSG:Ljava/lang/String; = "msg"

.field public static final KEY_STYLE_ID:Ljava/lang/String; = "actId"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "newpush"


# instance fields
.field private image:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private styleId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->link:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->styleId:Ljava/lang/String;

    return-void
.end method

.method private static deleteFiles(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_c
    if-lt v1, v3, :cond_f

    :cond_e
    return-void

    :cond_f
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {v0}, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->deleteFiles(Ljava/io/File;)V

    :cond_1a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private static downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string/jumbo v4, ".media"

    invoke-static {p0, v4}, Lcom/pinguo/camera360/push/utils/PushUtils;->getPushCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->deleteFiles(Ljava/io/File;)V

    :cond_11
    const/4 v2, 0x0

    invoke-static {p1}, Lcom/pinguo/camera360/push/utils/PushUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    if-eqz v3, :cond_36

    :try_start_1a
    invoke-static {p1, v3}, Lcom/pinguo/camera360/push/utils/FileUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_34} :catch_5d

    move-result-object p1

    const/4 v2, 0x1

    :cond_36
    :goto_36
    if-eqz v2, :cond_5c

    :try_start_38
    new-instance v4, Lcom/pinguo/share/theme/ThemeXMLConsole;

    invoke-direct {v4}, Lcom/pinguo/share/theme/ThemeXMLConsole;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, p2, v6}, Lcom/pinguo/share/theme/ThemeXMLConsole;->uploadModel(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v4, "newpush"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "upload "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5c} :catch_67

    :cond_5c
    :goto_5c
    return-object p1

    :catch_5d
    move-exception v0

    const/4 p1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v4, "newpush"

    invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36

    :catch_67
    move-exception v0

    const/4 v2, 0x0

    const-string/jumbo v4, "newpush"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "upload "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method

.method public static getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/activity/PushActivityBean;
    .registers 7

    :try_start_0
    const-string/jumbo v3, "newpush"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "json : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;

    invoke-direct {v0}, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;-><init>()V

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->title:Ljava/lang/String;

    const-string/jumbo v3, "msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->msg:Ljava/lang/String;

    const-string/jumbo v3, "image"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->image:Ljava/lang/String;

    const-string/jumbo v3, "link"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->link:Ljava/lang/String;

    const-string/jumbo v3, "actId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->styleId:Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    :goto_4d
    return-object v0

    :catch_4e
    move-exception v1

    const-string/jumbo v3, "newpush"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "push error"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_4d
.end method

.method public static notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
    .registers 15

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getData()Lcom/pinguo/camera360/push/PushDataBean;

    move-result-object v5

    invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getNotifi()Lcom/pinguo/camera360/push/PushNotifyBean;

    move-result-object v4

    move-object v9, v5

    check-cast v9, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;

    invoke-virtual {v9}, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    move-object v9, v5

    check-cast v9, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;

    invoke-virtual {v9}, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->getLink()Ljava/lang/String;

    move-result-object v2

    move-object v9, v5

    check-cast v9, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;

    invoke-virtual {v9}, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->getMsg()Ljava/lang/String;

    move-result-object v3

    move-object v9, v5

    check-cast v9, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;

    invoke-virtual {v9}, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->getImage()Ljava/lang/String;

    move-result-object v0

    check-cast v5, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;

    invoke-virtual {v5}, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->getStyleId()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v0, v7}, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    move v9, v10

    :goto_32
    return v9

    :cond_33
    new-instance v1, Landroid/content/Intent;

    const-class v9, Lcom/pinguo/camera360/push/business/activity/PushActivity;

    invoke-direct {v1, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez v2, :cond_3e

    move v9, v10

    goto :goto_32

    :cond_3e
    const-string/jumbo v9, "newpush"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "title: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " msg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "title"

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "link"

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "msg"

    invoke-virtual {v1, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "image"

    invoke-virtual {v1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "actId"

    invoke-virtual {v1, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "notify_title"

    invoke-virtual {v4}, Lcom/pinguo/camera360/push/PushNotifyBean;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "notify_msg"

    invoke-virtual {v4}, Lcom/pinguo/camera360/push/PushNotifyBean;->getMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "notify_id"

    invoke-virtual {v1, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v1, p2}, Lcom/pinguo/camera360/push/utils/PushNotify;->showNotify(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v6

    const-string/jumbo v9, "newpush"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "push_activity notify: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->setMessageId(Ljava/lang/String;)V

    if-eqz v6, :cond_bd

    const/4 v9, 0x1

    goto/16 :goto_32

    :cond_bd
    const/4 v9, 0x2

    goto/16 :goto_32
.end method


# virtual methods
.method public getImage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->styleId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->title:Ljava/lang/String;

    return-object v0
.end method
