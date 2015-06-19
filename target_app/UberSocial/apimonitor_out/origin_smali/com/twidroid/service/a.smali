.class Lcom/twidroid/service/a;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/service/BootService;


# direct methods
.method private constructor <init>(Lcom/twidroid/service/BootService;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/service/BootService;Lcom/twidroid/service/BootService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/service/a;-><init>(Lcom/twidroid/service/BootService;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/Context;)Landroid/content/Context;
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    new-instance v1, Lcom/twidroid/d/v;

    aget-object v2, p1, v3

    invoke-direct {v1, v2}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/twidroid/service/BootService;->a:Lcom/twidroid/d/v;

    iget-object v0, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    new-instance v1, Lcom/twidroid/model/twitter/c;

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twidroid/model/twitter/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, v0, Lcom/twidroid/service/BootService;->d:Lcom/twidroid/model/twitter/c;

    aget-object v0, p1, v3

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/twidroid/service/a;->a([Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .registers 9

    iget-object v0, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    iget-object v0, v0, Lcom/twidroid/service/BootService;->a:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aw()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    iget-object v0, v0, Lcom/twidroid/service/BootService;->a:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->v()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twidroid/service/BackgroundService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/service/BootService;->b:Landroid/app/PendingIntent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    iget-object v2, v2, Lcom/twidroid/service/BootService;->a:Lcom/twidroid/d/v;

    invoke-virtual {v2}, Lcom/twidroid/d/v;->w()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    iget-object v0, v0, Lcom/twidroid/service/BootService;->d:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z

    move-result v0

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    iget-object v0, v0, Lcom/twidroid/service/BootService;->a:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->v()Z

    move-result v0

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    iget-object v0, v0, Lcom/twidroid/service/BootService;->a:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aw()Z

    move-result v0

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    iget-object v0, v0, Lcom/twidroid/service/BootService;->a:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->w()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_121

    const-string v0, "TwidroydBootService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::onReceive ++++++++++++++ Launching Twidroid Service - interval: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    iget-object v4, v4, Lcom/twidroid/service/BootService;->a:Lcom/twidroid/d/v;

    invoke-virtual {v4}, Lcom/twidroid/d/v;->w()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " +++++++++++++"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    iget-object v4, v4, Lcom/twidroid/service/BootService;->a:Lcom/twidroid/d/v;

    invoke-virtual {v4}, Lcom/twidroid/d/v;->w()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    iget-object v6, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    iget-object v6, v6, Lcom/twidroid/service/BootService;->b:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    iget-object v0, v0, Lcom/twidroid/service/BootService;->a:Lcom/twidroid/d/v;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/service/a;->a:Lcom/twidroid/service/BootService;

    iget-object v0, v0, Lcom/twidroid/service/BootService;->a:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->N()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twidroid/TwidroidClient;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "forcerefresh"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02016d

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const v3, 0x7f0c0302

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x22

    iput v1, v2, Landroid/app/Notification;->flags:I

    const v1, 0x7f0c0164

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_100} :catch_102

    goto/16 :goto_14

    :catch_102
    move-exception v0

    const-string v1, "TwidroydBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::onReceive ++++++++++++++ Twidroid Service start failed. +++++++++++++++ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_121
    :try_start_121
    const-string v0, "TwidroydBootService"

    const-string v1, "++++++++++ Twidroid Background Notifications ***DISABLED*** +++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_128} :catch_102

    goto/16 :goto_14
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/twidroid/service/a;->a(Landroid/content/Context;)V

    return-void
.end method
