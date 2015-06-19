.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;
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

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->l(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/model/h;->a:[Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->H(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/cw;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->F(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/adapter/y;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/y;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    check-cast p2, Landroid/database/Cursor;

    invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->G(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->F(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/adapter/y;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/spotify/mobile/android/ui/adapter/y;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->c:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {v2, v3, v0}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->l(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_61

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->d:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {v2, v3, v0}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->h:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {v2, v3, v0}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V

    :goto_49
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->e:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->F(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/adapter/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/adapter/y;->getCount()I

    move-result v4

    if-eqz v4, :cond_6d

    :goto_5d
    invoke-virtual {v2, v3, v0}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V

    :cond_60
    return-void

    :cond_61
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->d:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;

    invoke-virtual {v2, v3, v1}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V

    goto :goto_49

    :cond_6d
    move v0, v1

    goto :goto_5d
.end method
