.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->E:Lcom/spotify/mobile/android/util/ea;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ab:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->p(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/o;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->q(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v2, v0, v3, v1}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V

    return-void
.end method
