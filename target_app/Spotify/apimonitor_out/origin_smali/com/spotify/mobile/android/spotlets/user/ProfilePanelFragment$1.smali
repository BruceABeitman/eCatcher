.class final Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/SpotifyLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->h:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    const-string v2, "target"

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->D:Lcom/spotify/mobile/android/util/ea;

    invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-class v2, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v2, v3, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/spotify/music/MainActivity;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->b(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_c
.end method
