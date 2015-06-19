.class final Lcom/spotify/mobile/android/ui/fragments/r$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/r;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/r;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/r$6;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->an:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v2, "suggested_track"

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$6;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->k(Lcom/spotify/mobile/android/ui/fragments/r;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "true"

    :goto_15
    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$6;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->h(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$6;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->v:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$6;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->b(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/service/player/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->h()Lcom/spotify/mobile/android/service/player/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/player/a/f;->a()V

    return-void

    :cond_36
    const-string v0, "false"

    goto :goto_15
.end method
