.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;
.super Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/ui/contextmenu/delegates/k",
        "<",
        "Lcom/spotify/mobile/android/model/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

.field private d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

.field private e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

.field private f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

.field private g:Lcom/spotify/mobile/android/ui/contextmenu/g;

.field private h:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;)V
    .registers 10

    invoke-direct {p0, p3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {p4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    invoke-static {p5}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    invoke-static {p6}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->h:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/g;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/spotify/mobile/android/ui/contextmenu/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    return-void
.end method

.method private a()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aJ:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b()Z
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->u:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
    .registers 8

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;

    const-string v2, ""

    const-string v3, ""

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;

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
            "Lcom/spotify/mobile/android/model/a;",
            ">;>;)",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/c/a",
            "<",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
            "<",
            "Lcom/spotify/mobile/android/model/a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/c/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/b/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;)V

    return-object v0
.end method

.method protected final b(Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
            "<",
            "Lcom/spotify/mobile/android/model/a;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->h:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a()V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/spotify/mobile/android/model/a;

    iget-object v8, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->h:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getAlbumImageUri()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/android/paste/graphics/SpotifyIcon;Z)V

    invoke-interface {v8, v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getCollectionState()Lcom/spotify/mobile/android/util/Collection$State;

    move-result-object v2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    sget-object v3, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    if-ne v0, v3, :cond_11f

    move v0, v7

    :goto_3a
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/util/Collection$State;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    sget-object v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    if-ne v0, v1, :cond_122

    move v0, v7

    :goto_48
    if-eqz v0, :cond_7c

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getOfflineState()I

    move-result v0

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(I)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getCanUndownload()Z

    move-result v0

    if-eqz v0, :cond_7c

    :cond_5a
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getCollectionUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/c;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getCollectionUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getOfflineState()I

    move-result v3

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getSyncProgress()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V

    :cond_7c
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/bu;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->a()Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->b()Z

    move-result v0

    if-eqz v0, :cond_125

    :cond_9d
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->isQueueable()Z

    move-result v0

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getCollectionUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->d(Ljava/lang/String;)V

    :cond_ac
    :goto_ac
    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->a()Z

    move-result v0

    if-nez v0, :cond_b8

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->b()Z

    move-result v0

    if-eqz v0, :cond_c5

    :cond_b8
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c5
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    sget-object v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    if-ne v0, v1, :cond_136

    move v0, v7

    :goto_cc
    if-eqz v0, :cond_eb

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_eb

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->isArtistBrowsable()Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getArtistUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_eb
    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->a()Z

    move-result v0

    if-nez v0, :cond_10f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->a:Landroid/content/Context;

    const v3, 0x7f0f0373

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getArtistName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10f
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_11e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->e(Ljava/lang/String;)V

    :cond_11e
    return-void

    :cond_11f
    move v0, v5

    goto/16 :goto_3a

    :cond_122
    move v0, v5

    goto/16 :goto_48

    :cond_125
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->isQueueable()Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/r;->g:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->d(Ljava/lang/String;)V

    goto/16 :goto_ac

    :cond_136
    move v0, v5

    goto :goto_cc
.end method
