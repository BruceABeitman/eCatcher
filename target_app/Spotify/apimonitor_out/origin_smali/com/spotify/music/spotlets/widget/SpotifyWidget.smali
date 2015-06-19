.class public Lcom/spotify/music/spotlets/widget/SpotifyWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v3, 0x0

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    const-class v1, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    new-instance v1, Lcom/spotify/mobile/android/ui/d/b;

    invoke-direct {v1}, Lcom/spotify/mobile/android/ui/d/b;-><init>()V

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1, p1, p2}, Lcom/spotify/mobile/android/ui/d/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_21
    :goto_21
    const-string v1, "com.spotify.mobile.android.ui.widget.PREVIOUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {p1, v3}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;Z)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1, p1}, Lcom/spotify/mobile/android/ui/d/a;->a(Landroid/content/Context;)V

    goto :goto_21

    :cond_39
    const-string v1, "com.spotify.mobile.android.ui.widget.PLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;)V

    goto :goto_2c

    :cond_45
    const-string v1, "com.spotify.mobile.android.ui.widget.NEXT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "is_suggested_track"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->an:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v2, "suggested_track"

    if-eqz v0, :cond_6e

    const-string v0, "true"

    :goto_62
    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->z:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;)V

    goto :goto_2c

    :cond_6e
    const-string v0, "false"

    goto :goto_62
.end method
