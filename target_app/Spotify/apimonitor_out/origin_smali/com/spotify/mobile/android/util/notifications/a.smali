.class public abstract Lcom/spotify/mobile/android/util/notifications/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Landroid/support/v4/app/al;

.field protected final c:Lcom/spotify/mobile/android/service/c/c;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/c;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/notifications/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/notifications/a;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-object v0, p2, Lcom/spotify/mobile/android/service/c/c;->a:Lcom/spotify/mobile/android/service/c/g;

    new-instance v1, Landroid/support/v4/app/al;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/notifications/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/al;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/util/notifications/a;->b:Landroid/support/v4/app/al;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/a;->b:Landroid/support/v4/app/al;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/notifications/a;->a()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/al;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;

    move-result-object v1

    iget-object v2, v0, Lcom/spotify/mobile/android/service/c/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/al;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/al;->b()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/al;->c()Landroid/support/v4/app/al;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/al;->a(J)Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/al;->f()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/c/g;->a()Lcom/spotify/mobile/android/service/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/c/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/al;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/c;)Lcom/spotify/mobile/android/util/notifications/a;
    .registers 3

    iget-boolean v0, p1, Lcom/spotify/mobile/android/service/c/c;->d:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/spotify/mobile/android/util/notifications/b;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/util/notifications/b;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/c;)V

    :goto_9
    return-object v0

    :cond_a
    iget-boolean v0, p1, Lcom/spotify/mobile/android/service/c/c;->i:Z

    if-eqz v0, :cond_14

    new-instance v0, Lcom/spotify/mobile/android/util/notifications/d;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/util/notifications/d;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/c;)V

    goto :goto_9

    :cond_14
    new-instance v0, Lcom/spotify/mobile/android/util/notifications/c;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/util/notifications/c;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/c;)V

    goto :goto_9
.end method


# virtual methods
.method protected a()Landroid/app/PendingIntent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/a;->a:Landroid/content/Context;

    const-class v2, Lcom/spotify/music/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.spotify.mobile.android.ui.action.player.SHOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/widget/RemoteViews;)V
.end method

.method public final b()Landroid/app/Notification;
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/notifications/a;->d()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/a;->b:Landroid/support/v4/app/al;

    invoke-virtual {v1}, Landroid/support/v4/app/al;->g()Landroid/app/Notification;

    move-result-object v1

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->a:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/notifications/a;->c()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_16
    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/util/notifications/a;->a(Landroid/widget/RemoteViews;)V

    sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->a:Z

    if-nez v0, :cond_24

    iget-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/util/notifications/a;->a(Landroid/widget/RemoteViews;)V

    :cond_24
    return-object v1
.end method

.method protected abstract c()Landroid/widget/RemoteViews;
.end method

.method protected d()Landroid/widget/RemoteViews;
    .registers 9

    const/high16 v7, 0x800

    const/4 v6, 0x0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300a3

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/a;->c:Lcom/spotify/mobile/android/service/c/c;

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

    iget-object v1, p0, Lcom/spotify/mobile/android/util/notifications/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/notifications/a;->a:Landroid/content/Context;

    const-string v3, "com.spotify.mobile.android.service.action.player.TOGGLE_PAUSED"

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v6, v2, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/util/notifications/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/spotify/mobile/android/util/notifications/a;->a:Landroid/content/Context;

    const-string v4, "com.spotify.mobile.android.service.action.player.NEXT"

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v6, v3, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/util/notifications/a;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/spotify/mobile/android/util/notifications/a;->a:Landroid/content/Context;

    const-string v5, "com.spotify.mobile.android.service.action.player.NOTIFICATION_SHUTDOWN"

    invoke-static {v4, v5}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v6, v4, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/util/notifications/a;->c:Lcom/spotify/mobile/android/service/c/c;

    iget-boolean v4, v4, Lcom/spotify/mobile/android/service/c/c;->c:Z

    if-eqz v4, :cond_70

    const v4, 0x7f0a0337

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_63
    const v1, 0x7f0a0239

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0a023b

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0

    :cond_70
    const v4, 0x7f0a0338

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_63
.end method
