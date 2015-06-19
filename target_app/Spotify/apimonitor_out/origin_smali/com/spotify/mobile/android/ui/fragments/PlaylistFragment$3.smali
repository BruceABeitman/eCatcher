.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/z",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$3;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const-string v4, "playlist_uri=?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$3;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v6, "_id ASC"

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$3;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/music/internal/provider/annotate/a;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$3;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->r(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$3;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->t(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->b()Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$3;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->s(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/HeaderView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$3;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    iget-boolean v0, v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->Z:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$3;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->t(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->k()V

    :cond_36
    :goto_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$3;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->t(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->b()Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/HeaderView;->a(Landroid/view/View;)V

    goto :goto_36
.end method
