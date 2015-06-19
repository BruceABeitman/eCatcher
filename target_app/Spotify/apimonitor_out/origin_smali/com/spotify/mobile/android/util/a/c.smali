.class public final Lcom/spotify/mobile/android/util/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# instance fields
.field private a:Landroid/media/RemoteControlClient;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/RemoteControlClient;

    invoke-direct {v0, p1, p2}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/a/c;->a:Landroid/media/RemoteControlClient;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/a/c;)Landroid/media/RemoteControlClient;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/a/c;->a:Landroid/media/RemoteControlClient;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/util/a/d;
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/util/a/d;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/a/d;-><init>(Lcom/spotify/mobile/android/util/a/c;)V

    return-object v0
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/a/c;->a:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    return-void
.end method

.method public final a(Landroid/media/AudioManager;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/a/c;->a:Landroid/media/RemoteControlClient;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    return-void
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/a/c;->a:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    return-void
.end method

.method public final b(Landroid/media/AudioManager;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/a/c;->a:Landroid/media/RemoteControlClient;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    return-void
.end method
