.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;
.super Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/ui/contextmenu/delegates/k",
        "<",
        "Lcom/spotify/mobile/android/model/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private final c:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

.field private final d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

.field private e:Lcom/spotify/mobile/android/ui/contextmenu/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;)V
    .registers 8

    invoke-direct {p0, p3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->c:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    invoke-static {p4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/g;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/spotify/mobile/android/ui/contextmenu/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->e:Lcom/spotify/mobile/android/ui/contextmenu/g;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
    .registers 8

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;

    const-string v2, ""

    const-string v3, ""

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const/4 v5, 0x1

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
            "Lcom/spotify/mobile/android/model/b;",
            ">;>;)",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/c/a",
            "<",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
            "<",
            "Lcom/spotify/mobile/android/model/b;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/c/d;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/b/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;)V

    return-object v0
.end method

.method protected final b(Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
            "<",
            "Lcom/spotify/mobile/android/model/b;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/spotify/mobile/android/model/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->c:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a()V

    iget-object v7, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->c:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getImageUri()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/android/paste/graphics/SpotifyIcon;Z)V

    invoke-interface {v7, v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    sget-object v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    if-ne v0, v1, :cond_9a

    :goto_30
    if-eqz v5, :cond_54

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->e:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getCollectionUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/c;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getCollectionUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v2

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getOfflineState()I

    move-result v3

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getSyncProgress()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V

    :cond_54
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aI:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->isFollowed()Z

    move-result v0

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->e:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aI:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->e:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->isRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->e:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->e(Ljava/lang/String;)V

    :cond_99
    return-void

    :cond_9a
    const/4 v5, 0x0

    goto :goto_30

    :cond_9c
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/s;->e:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/spotify/mobile/android/model/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71
.end method
