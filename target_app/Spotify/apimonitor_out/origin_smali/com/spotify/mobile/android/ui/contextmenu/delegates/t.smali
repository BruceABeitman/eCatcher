.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;
.super Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/ui/contextmenu/delegates/k",
        "<",
        "Lcom/spotify/mobile/android/model/j;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private c:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

.field private d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;

.field private e:Landroid/net/Uri;

.field private f:Lcom/spotify/mobile/android/ui/contextmenu/g;

.field private g:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Landroid/net/Uri;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;)V
    .registers 15

    new-instance v4, Lcom/spotify/mobile/android/ui/contextmenu/g;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v4, p1, p2, v0, p3}, Lcom/spotify/mobile/android/ui/contextmenu/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Lcom/spotify/mobile/android/ui/contextmenu/g;Landroid/net/Uri;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->g:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->e:Landroid/net/Uri;

    invoke-static {p5}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->c:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    invoke-static {p6}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/g;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/spotify/mobile/android/ui/contextmenu/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->f:Lcom/spotify/mobile/android/ui/contextmenu/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Lcom/spotify/mobile/android/ui/contextmenu/g;Landroid/net/Uri;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->g:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->f:Lcom/spotify/mobile/android/ui/contextmenu/g;

    iput-object p5, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->e:Landroid/net/Uri;

    invoke-static {p6}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->c:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    invoke-static {p7}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
    .registers 8

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;

    const-string v2, ""

    const-string v3, ""

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Z:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/android/paste/graphics/SpotifyIcon;Z)V

    return-object v0
.end method

.method protected final a(Ljava/lang/String;Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/c/b",
            "<",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
            "<",
            "Lcom/spotify/mobile/android/model/j;",
            ">;>;)",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/c/a",
            "<",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
            "<",
            "Lcom/spotify/mobile/android/model/j;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/c/e;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/b/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;)V

    return-object v0
.end method

.method protected final b(Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
            "<",
            "Lcom/spotify/mobile/android/model/j;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V

    iget-object v8, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/spotify/mobile/android/model/j;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->g:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a()V

    iget-object v9, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->g:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->a:Landroid/content/Context;

    invoke-interface {v6, v1}, Lcom/spotify/mobile/android/model/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->d()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Z:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/android/paste/graphics/SpotifyIcon;Z)V

    invoke-interface {v9, v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;)V

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->u()Z

    move-result v0

    if-eqz v0, :cond_17e

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17e

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->n()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->m()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->f:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->l()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;Z)V

    :cond_5a
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->c:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    sget-object v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    if-ne v0, v1, :cond_17f

    move v0, v7

    :goto_61
    if-eqz v0, :cond_182

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->q()Z

    move-result v0

    if-eqz v0, :cond_182

    move v0, v7

    :goto_6a
    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->f:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->g()I

    move-result v3

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->h()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V

    :cond_8e
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->n()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->p()Z

    move-result v0

    if-nez v0, :cond_bd

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->o()Z

    move-result v0

    if-nez v0, :cond_bd

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->m()Z

    move-result v0

    if-nez v0, :cond_bd

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->F:Lcom/spotify/mobile/android/ui/fragments/logic/j;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_185

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->f:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->b(Ljava/lang/String;)V

    :cond_bd
    :goto_bd
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->n()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->p()Z

    move-result v0

    if-nez v0, :cond_e2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->s()Z

    move-result v0

    if-nez v0, :cond_e2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->m()Z

    move-result v0

    if-nez v0, :cond_e2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->f:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->t()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->c(Ljava/lang/String;Z)V

    :cond_e2
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->n()Z

    move-result v0

    if-eqz v0, :cond_107

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->p()Z

    move-result v0

    if-nez v0, :cond_107

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->o()Z

    move-result v0

    if-nez v0, :cond_107

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->m()Z

    move-result v0

    if-nez v0, :cond_107

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->f:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->s()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->b(Ljava/lang/String;Z)V

    :cond_107
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;

    sget-object v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;

    if-ne v0, v1, :cond_10e

    move v5, v7

    :cond_10e
    if-eqz v5, :cond_142

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->n()Z

    move-result v0

    if-eqz v0, :cond_142

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->p()Z

    move-result v0

    if-nez v0, :cond_142

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->o()Z

    move-result v0

    if-nez v0, :cond_142

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->m()Z

    move-result v0

    if-nez v0, :cond_142

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->e:Landroid/net/Uri;

    const-string v1, "Playlists or folders can be removed from this content, but no content uri specified. You need to call the PlaylistMenuDelegate(Uri contentUri) constructor."

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->f:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6, v8}, Lcom/spotify/mobile/android/model/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->e:Landroid/net/Uri;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->j()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;)V

    :cond_142
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->m()Z

    move-result v0

    if-nez v0, :cond_157

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->f:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6, v8}, Lcom/spotify/mobile/android/model/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_157
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->r()Z

    move-result v0

    if-eqz v0, :cond_17e

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->p()Z

    move-result v0

    if-nez v0, :cond_17e

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->o()Z

    move-result v0

    if-eqz v0, :cond_16f

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->n()Z

    move-result v0

    if-eqz v0, :cond_17e

    :cond_16f
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/j;->m()Z

    move-result v0

    if-nez v0, :cond_17e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->f:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->e(Ljava/lang/String;)V

    :cond_17e
    return-void

    :cond_17f
    move v0, v5

    goto/16 :goto_61

    :cond_182
    move v0, v5

    goto/16 :goto_6a

    :cond_185
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/t;->f:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->c(Ljava/lang/String;)V

    goto/16 :goto_bd
.end method
