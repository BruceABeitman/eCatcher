.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;
.super Lcom/spotify/mobile/android/util/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/util/k",
        "<",
        "Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/util/EnumSet;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/util/k;-><init>(Ljava/util/EnumSet;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/EnumSet;Ljava/util/EnumSet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;",
            ">;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->i:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->b:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->c:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_43

    const-string v1, "reveal_row"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_43

    const-string v2, "reveal_row"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->e(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I

    :cond_43
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->I(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I

    move-result v1

    if-eq v1, v4, :cond_bc

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->I(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->j:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {v1, v2, v6}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V

    :goto_65
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->e(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I

    if-eqz v0, :cond_b0

    const-string v1, "autoplay"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b0

    const-string v1, "autoplay"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->K(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I

    move-result v0

    if-ne v0, v4, :cond_92

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->F(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/adapter/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/y;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0, v5}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->f(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I

    :cond_92
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->K(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I

    move-result v0

    if-eq v0, v4, :cond_b0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->K(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->g(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->h(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->f(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I

    :cond_b0
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->i:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {v0, v1, v6}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V

    :cond_bb
    :goto_bb
    return-void

    :cond_bc
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->J(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->k:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {v1, v2, v6}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V

    goto :goto_65

    :cond_cd
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->i:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->L(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->l:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {v0, v1, v6}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V

    goto :goto_bb
.end method
