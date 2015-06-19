.class final Lcom/spotify/mobile/android/util/notifications/b;
.super Lcom/spotify/mobile/android/util/notifications/a;
.source "SourceFile"


# instance fields
.field private d:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

.field private e:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

.field private f:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

.field private g:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

.field private h:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/c;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/util/notifications/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/c;)V

    new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    const v1, 0x7f0a0337

    const v2, 0x7f0a0338

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;-><init>(II)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->d:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    const v1, 0x7f0a032c

    const v2, 0x7f0a032d

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;-><init>(II)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->e:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    const v1, 0x7f0a0239

    const v2, 0x7f0a0336

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;-><init>(II)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->f:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    const v1, 0x7f0a0331

    const v2, 0x7f0a0332

    const v3, 0x7f0a0333

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;-><init>(III)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->g:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    const v1, 0x7f0a032e

    const v2, 0x7f0a032f

    const v3, 0x7f0a0330

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;-><init>(III)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->h:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/widget/RemoteViews;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-boolean v1, v0, Lcom/spotify/mobile/android/service/c/c;->c:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-boolean v2, v0, Lcom/spotify/mobile/android/service/c/c;->e:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-boolean v3, v0, Lcom/spotify/mobile/android/service/c/c;->f:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-boolean v4, v0, Lcom/spotify/mobile/android/service/c/c;->d:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/c/c;->g:Lcom/spotify/mobile/android/g/a;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/g/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/util/notifications/b;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-boolean v5, v5, Lcom/spotify/mobile/android/service/c/c;->h:Z

    iget-object v6, p0, Lcom/spotify/mobile/android/util/notifications/b;->d:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    invoke-virtual {v6, p1, v1}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    if-eqz v5, :cond_3f

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->e:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    invoke-virtual {v0, p1, v7}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->f:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    invoke-virtual {v0, p1, v7}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    if-eqz v4, :cond_3e

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->g:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    invoke-virtual {v0, p1, v7}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->h:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    invoke-virtual {v0, p1, v7}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/b;->e:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    invoke-virtual {v1, p1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/b;->f:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    invoke-virtual {v1, p1, v3}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    if-eqz v4, :cond_3e

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_82

    const-string v1, "up"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->g:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    sget-object v1, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->c:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;

    invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->h:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    invoke-virtual {v0, p1, v7}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    goto :goto_3e

    :cond_68
    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->g:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    invoke-virtual {v0, p1, v7}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->h:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    sget-object v1, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->c:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;

    invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;)V

    goto :goto_3e

    :cond_7d
    const-string v0, "Invalid radio thumbs state"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_82
    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->g:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    invoke-virtual {v0, p1, v8}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/notifications/b;->h:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;

    invoke-virtual {v0, p1, v8}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Z)V

    goto :goto_3e
.end method

.method protected final c()Landroid/widget/RemoteViews;
    .registers 11

    const/high16 v9, 0x800

    const/4 v8, 0x0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03009f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/b;->c:Lcom/spotify/mobile/android/service/c/c;

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

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/notifications/b;->a:Landroid/content/Context;

    const-string v3, "com.spotify.mobile.android.service.action.player.THUMB_UP"

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v8, v2, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/util/notifications/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/spotify/mobile/android/util/notifications/b;->a:Landroid/content/Context;

    const-string v4, "com.spotify.mobile.android.service.action.player.THUMB_DOWN"

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v8, v3, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/util/notifications/b;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/spotify/mobile/android/util/notifications/b;->a:Landroid/content/Context;

    const-string v5, "com.spotify.mobile.android.service.action.player.NOTIFICATION_SHUTDOWN"

    invoke-static {v4, v5}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v8, v4, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/util/notifications/b;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/spotify/mobile/android/util/notifications/b;->a:Landroid/content/Context;

    const-string v6, "com.spotify.mobile.android.service.action.player.TOGGLE_PAUSED"

    invoke-static {v5, v6}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v8, v5, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/mobile/android/util/notifications/b;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/spotify/mobile/android/util/notifications/b;->a:Landroid/content/Context;

    const-string v7, "com.spotify.mobile.android.service.action.player.NEXT"

    invoke-static {v6, v7}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v8, v6, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const v6, 0x7f0a0331

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0a032e

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0a0337

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0a0338

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0a0239

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0a023b

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method
