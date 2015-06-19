.class public final Lcom/spotify/mobile/android/util/notifications/d;
.super Lcom/spotify/mobile/android/util/notifications/a;
.source "SourceFile"


# instance fields
.field private d:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

.field private e:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

.field private f:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/c;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/util/notifications/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/c;)V

    new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    const v1, 0x7f0a0337

    const v2, 0x7f0a0338

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;-><init>(II)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/notifications/d;->d:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    const v1, 0x7f0a032c

    const v2, 0x7f0a032d

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;-><init>(II)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/notifications/d;->e:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    const v1, 0x7f0a0239

    const v2, 0x7f0a0336

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;-><init>(II)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/notifications/d;->f:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    return-void
.end method


# virtual methods
.method protected final a()Landroid/app/PendingIntent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    const-class v2, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/widget/RemoteViews;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/d;->d:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/d;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-boolean v1, v1, Lcom/spotify/mobile/android/service/c/c;->c:Z

    invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/d;->e:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/d;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-boolean v1, v1, Lcom/spotify/mobile/android/service/c/c;->e:Z

    invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/d;->f:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/d;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-boolean v1, v1, Lcom/spotify/mobile/android/service/c/c;->f:Z

    invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    return-void
.end method

.method protected final c()Landroid/widget/RemoteViews;
    .registers 9

    const/high16 v7, 0x800

    const/4 v6, 0x0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03009e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/d;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-object v1, v1, Lcom/spotify/mobile/android/service/c/c;->a:Lcom/spotify/mobile/android/service/c/g;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/c/g;->c()Lcom/spotify/mobile/android/service/c/f;

    move-result-object v1

    const v2, 0x7f0a0334

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/c/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0a0335

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/c/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0a0328

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/c/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    const-string v3, "com.spotify.music.service.video.action.player.TOGGLE_PAUSED"

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v6, v2, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    const-string v4, "com.spotify.music.service.video.action.player.NEXT"

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v6, v3, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    const-string v5, "com.spotify.music.service.video.action.player.PREVIOUS"

    invoke-static {v4, v5}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v6, v4, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0a032c

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f0a0337

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v3, 0x7f0a0338

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0a0239

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method protected final d()Landroid/widget/RemoteViews;
    .registers 8

    const/high16 v6, 0x800

    const/4 v5, 0x0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300a3

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/d;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-object v1, v1, Lcom/spotify/mobile/android/service/c/c;->a:Lcom/spotify/mobile/android/service/c/g;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/c/g;->b()Lcom/spotify/mobile/android/service/c/h;

    move-result-object v1

    const v2, 0x7f0a01fc

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/c/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0a024d

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/c/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    const-string v3, "com.spotify.music.service.video.action.player.TOGGLE_PAUSED"

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/spotify/mobile/android/util/notifications/d;->a:Landroid/content/Context;

    const-string v4, "com.spotify.music.service.video.action.player.NEXT"

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v5, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/util/notifications/d;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-boolean v3, v3, Lcom/spotify/mobile/android/service/c/c;->c:Z

    if-eqz v3, :cond_5c

    const v3, 0x7f0a0337

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_55
    const v1, 0x7f0a0239

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0

    :cond_5c
    const v3, 0x7f0a0338

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_55
.end method
