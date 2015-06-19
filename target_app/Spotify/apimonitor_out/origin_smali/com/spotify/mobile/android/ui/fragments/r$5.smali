.class final Lcom/spotify/mobile/android/ui/fragments/r$5;
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

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/r$5;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$5;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->h(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$5;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->v:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->am:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$5;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->i(Lcom/spotify/mobile/android/ui/fragments/r;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$5;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->d(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$5;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->c(Landroid/content/Context;)V

    :goto_2f
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/r$5;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$5;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->j(Lcom/spotify/mobile/android/ui/fragments/r;)Z

    move-result v0

    if-nez v0, :cond_4c

    const/4 v0, 0x1

    :goto_3a
    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/ui/fragments/r;Z)V

    return-void

    :cond_3e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r$5;->a:Lcom/spotify/mobile/android/ui/fragments/r;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/r;->b(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/service/player/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->h()Lcom/spotify/mobile/android/service/player/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/player/a/f;->b()V

    goto :goto_2f

    :cond_4c
    const/4 v0, 0x0

    goto :goto_3a
.end method
