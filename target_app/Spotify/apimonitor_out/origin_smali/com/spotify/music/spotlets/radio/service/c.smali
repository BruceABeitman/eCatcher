.class public final Lcom/spotify/music/spotlets/radio/service/c;
.super Lcom/spotify/mobile/android/service/connections/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/service/connections/e",
        "<",
        "Lcom/spotify/music/spotlets/radio/service/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/content/n;

.field private final b:Landroid/content/BroadcastReceiver;

.field private final c:Landroid/content/BroadcastReceiver;

.field private final d:Lcom/spotify/music/spotlets/radio/service/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/music/spotlets/radio/service/d;)V
    .registers 6

    const-class v0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/service/connections/e;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Lcom/spotify/music/spotlets/radio/service/c$1;

    invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/service/c$1;-><init>(Lcom/spotify/music/spotlets/radio/service/c;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/c;->b:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/spotify/music/spotlets/radio/service/c$2;

    invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/service/c$2;-><init>(Lcom/spotify/music/spotlets/radio/service/c;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/c;->c:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/spotify/music/spotlets/radio/service/c;->d:Lcom/spotify/music/spotlets/radio/service/d;

    invoke-static {p1}, Landroid/support/v4/content/n;->a(Landroid/content/Context;)Landroid/support/v4/content/n;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/c;->a:Landroid/support/v4/content/n;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_MODEL_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/c;->a:Landroid/support/v4/content/n;

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/service/c;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/n;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_MODEL_UPDATE_FAILED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/c;->a:Landroid/support/v4/content/n;

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/service/c;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/n;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/music/spotlets/radio/service/c;)Lcom/spotify/music/spotlets/radio/service/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/c;->d:Lcom/spotify/music/spotlets/radio/service/d;

    return-object v0
.end method


# virtual methods
.method protected final e()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/service/connections/e;->e()V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/c;->d:Lcom/spotify/music/spotlets/radio/service/d;

    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/service/d;->c()V

    return-void
.end method

.method protected final f()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/service/connections/e;->f()V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/c;->d:Lcom/spotify/music/spotlets/radio/service/d;

    return-void
.end method

.method public final h()Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/service/c;->g()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/spotify/music/spotlets/radio/service/i;

    iget-object v0, v0, Lcom/spotify/music/spotlets/radio/service/i;->a:Lcom/spotify/music/spotlets/radio/service/RadioActionsService;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->a(Lcom/spotify/music/spotlets/radio/service/RadioActionsService;)Lcom/spotify/music/spotlets/radio/service/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/music/spotlets/radio/service/e;->b()Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/service/c;->b()V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/c;->a:Landroid/support/v4/content/n;

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/c;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/n;->a(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/c;->a:Landroid/support/v4/content/n;

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/c;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/n;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
