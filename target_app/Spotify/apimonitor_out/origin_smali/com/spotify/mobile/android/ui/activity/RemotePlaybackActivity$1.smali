.class final Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->as:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->a(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->a(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Lcom/spotify/mobile/android/service/connections/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->a(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Lcom/spotify/mobile/android/service/connections/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->d()V

    :cond_1c
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->finish()V

    return-void
.end method
