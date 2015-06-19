.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;
.super Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/ui/contextmenu/delegates/k",
        "<",
        "Lcom/spotify/mobile/android/model/n;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private final c:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

.field private final d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

.field private final e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

.field private final f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;

.field private g:Lcom/spotify/mobile/android/ui/contextmenu/g;

.field private final h:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

.field private final i:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;Lcom/google/common/base/Optional;ZZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/spotify/mobile/android/util/ViewUri$Verified;",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;",
            "Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;",
            "Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;",
            "Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;",
            "Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->c:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    invoke-static {p5}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    invoke-static {p6}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    invoke-static {p7}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->h:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/g;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/spotify/mobile/android/ui/contextmenu/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    iput-object p8, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->i:Lcom/google/common/base/Optional;

    iput-boolean p9, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->j:Z

    iput-boolean p10, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->k:Z

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
    .registers 8

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;

    const-string v2, ""

    const-string v3, ""

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aH:Lcom/spotify/android/paste/graphics/SpotifyIcon;

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
            "Lcom/spotify/mobile/android/model/n;",
            ">;>;)",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/c/a",
            "<",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
            "<",
            "Lcom/spotify/mobile/android/model/n;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/c/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/b/c/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;)V

    return-object v0
.end method

.method protected final b(Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
            "<",
            "Lcom/spotify/mobile/android/model/n;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V

    iget-object v8, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/spotify/mobile/android/model/n;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->h:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a()V

    iget-object v9, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->h:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getAlbumImageUri()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aH:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/android/paste/graphics/SpotifyIcon;Z)V

    invoke-interface {v9, v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->A:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;)V

    :cond_50
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->isInCollection()Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->canAddToCollection()Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_5c
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->isInCollection()Z

    move-result v2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    sget-object v3, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    if-ne v0, v3, :cond_131

    move v0, v7

    :goto_69
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(ZZLjava/lang/String;)V

    :cond_70
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;

    sget-object v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;

    if-ne v0, v1, :cond_134

    move v0, v7

    :goto_77
    if-eqz v0, :cond_90

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->j:Z

    if-nez v0, :cond_90

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->i:Lcom/google/common/base/Optional;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/google/common/base/Optional;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;J)V

    :cond_90
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->k:Z

    if-eqz v0, :cond_137

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/bu;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a9
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->isQueueable()Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->d(Ljava/lang/String;)V

    :cond_b8
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->isQueued()Z

    move-result v0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(J)V

    :cond_c7
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->c:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    sget-object v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    if-ne v0, v1, :cond_14e

    move v0, v7

    :goto_ce
    if-eqz v0, :cond_151

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->isAlbumBrowsable()Z

    move-result v0

    if-eqz v0, :cond_151

    move v0, v7

    :goto_d7
    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getAlbumUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    sget-object v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    if-ne v0, v1, :cond_153

    move v0, v7

    :goto_ed
    if-eqz v0, :cond_155

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->isArtistBrowsable()Z

    move-result v0

    if-eqz v0, :cond_155

    move v0, v7

    :goto_f6
    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getArtistUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_105
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0371

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getArtistName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v8, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->e(Ljava/lang/String;)V

    :cond_130
    return-void

    :cond_131
    move v0, v5

    goto/16 :goto_69

    :cond_134
    move v0, v5

    goto/16 :goto_77

    :cond_137
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/n;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/bu;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a9

    :cond_14e
    move v0, v5

    goto/16 :goto_ce

    :cond_151
    move v0, v5

    goto :goto_d7

    :cond_153
    move v0, v5

    goto :goto_ed

    :cond_155
    move v0, v5

    goto :goto_f6
.end method
