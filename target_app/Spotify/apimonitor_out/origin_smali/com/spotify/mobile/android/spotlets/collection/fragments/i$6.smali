.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
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
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

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

    const/4 v4, 0x0

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->a:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/spotlets/collection/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->b:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;

    :cond_11
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/p;->a(Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/model/f;->a:[Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->m(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/util/cw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;

    move-result-object v6

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Landroid/support/v4/widget/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/b;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 7

    const/4 v1, 0x0

    check-cast p2, Landroid/database/Cursor;

    invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->i(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->i(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    :cond_1e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Landroid/support/v4/widget/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/b;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4f

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4f

    new-instance v2, Lcom/spotify/mobile/android/model/f;

    invoke-direct {v2}, Lcom/spotify/mobile/android/model/f;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, p2, v3}, Lcom/spotify/mobile/android/model/f;->a(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/spotify/mobile/android/model/f;->o()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {v2}, Lcom/spotify/mobile/android/model/f;->e()I

    move-result v2

    if-nez v2, :cond_4f

    move v0, v1

    :cond_4f
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-static {v2, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/i;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/util/ar;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/spotify/mobile/android/util/ar;->a(Ljava/lang/Object;Landroid/database/Cursor;)V

    :cond_6a
    return-void
.end method
