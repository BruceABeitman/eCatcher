.class public final Lcom/pinguo/camera360/push/utils/PushNotify;
.super Ljava/lang/Object;
.source "PushNotify.java"


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "notify_id"

.field public static final KEY_MSG:Ljava/lang/String; = "notify_msg"

.field public static final KEY_TITLE:Ljava/lang/String; = "notify_title"

.field private static final TAG:Ljava/lang/String; = "newpush"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showNotify(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 16

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_4
    const-string/jumbo v10, "notify_title"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "notify_msg"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "notify_id"

    const v11, 0x57e40

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_66

    move-result v5

    const-string/jumbo v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    const/high16 v10, 0x2400

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v10, 0x800

    invoke-static {p0, p2, p1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0201f2

    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const/16 v10, 0x10

    iput v10, v3, Landroid/app/Notification;->flags:I

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v7, 0x1

    move v8, v7

    :goto_65
    return v8

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v10, "newpush"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "notify error: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    goto :goto_65
.end method
