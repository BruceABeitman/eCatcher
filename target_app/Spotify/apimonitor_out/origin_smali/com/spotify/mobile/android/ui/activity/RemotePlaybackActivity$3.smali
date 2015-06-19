.class final Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/connections/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->v_()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/service/ConnectDevice;",
            ">;",
            "Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->c(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->d(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->a(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Lcom/spotify/mobile/android/service/connections/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->b()Lcom/spotify/mobile/android/service/ConnectDevice;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->e()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->at:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->a(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->finish()V

    goto :goto_10

    :cond_30
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->b(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Lcom/spotify/mobile/android/service/ConnectDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/ConnectDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->a(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;Lcom/spotify/mobile/android/service/ConnectDevice;)V

    goto :goto_10
.end method
