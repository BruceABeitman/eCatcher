.class public Lcom/umeng/common/net/l;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field public static final a:Ljava/lang/String; = "pause"

.field public static final b:Ljava/lang/String; = "continue"

.field public static final c:Ljava/lang/String; = "cancel"

.field public static final d:Ljava/lang/String; = "com.umeng.intent.DOWNLOAD"

.field public static final e:Ljava/lang/String; = "com.umeng.broadcast.download.msg"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/umeng/common/net/a$a;)I
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    if-gez v0, :cond_8

    neg-int v0, v0

    :cond_8
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.umeng.intent.DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.umeng.broadcast.download.msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/umeng/common/net/DownloadingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.umeng.broadcast.download.msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
