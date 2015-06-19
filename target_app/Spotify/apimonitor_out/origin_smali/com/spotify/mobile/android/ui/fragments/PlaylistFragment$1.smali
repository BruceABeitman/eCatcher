.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/ui/contextmenu/f",
        "<",
        "Lcom/spotify/mobile/android/model/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$1;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    check-cast p2, Lcom/spotify/mobile/android/model/h;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$1;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Lcom/spotify/mobile/android/model/n;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->E:Lcom/spotify/mobile/android/util/ea;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$1;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/ab;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/y;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$1;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z

    move-result v3

    if-nez v3, :cond_46

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$1;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->c(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z

    move-result v3

    if-nez v3, :cond_46

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$1;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->d(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z

    move-result v3

    if-eqz v3, :cond_6a

    :cond_46
    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$1;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->e(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z

    move-result v3

    if-nez v3, :cond_6a

    :goto_4e
    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/z;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$1;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$1;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    return-void

    :cond_6a
    move v0, v1

    goto :goto_4e
.end method
