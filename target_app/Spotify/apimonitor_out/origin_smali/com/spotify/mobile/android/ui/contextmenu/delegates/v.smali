.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
            "<",
            "Lcom/spotify/mobile/android/model/n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

.field private e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

.field private f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

.field private g:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;

.field private h:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->h:Lcom/google/common/base/Optional;

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->i:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    return-object p1
.end method

.method static a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/aa;
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;-><init>()V

    iput-object p0, v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a:Landroid/content/Context;

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/aa;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/aa;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;B)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->g:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->h:Lcom/google/common/base/Optional;

    return-object p0
.end method

.method public final a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->j:Z

    return-object p0
.end method

.method public final a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
    .registers 13

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    invoke-static {v4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    invoke-static {v5}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    iget-object v6, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    invoke-static {v6}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    iget-object v7, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->g:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;

    invoke-static {v7}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;

    iget-object v8, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->h:Lcom/google/common/base/Optional;

    iget-boolean v9, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->i:Z

    iget-boolean v10, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->j:Z

    invoke-direct/range {v0 .. v10}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;Lcom/google/common/base/Optional;ZZ)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/u;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->i:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->i:Z

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    if-eq v2, v3, :cond_25

    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    if-eq v2, v3, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    if-eq v2, v3, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->g:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->g:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;

    if-eq v2, v3, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a:Landroid/content/Context;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    move v0, v1

    goto :goto_4

    :cond_49
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    move v0, v1

    goto :goto_4

    :cond_55
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->h:Lcom/google/common/base/Optional;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->h:Lcom/google/common/base/Optional;

    invoke-virtual {v2, v3}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    move v0, v1

    goto :goto_4

    :cond_61
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v3, p1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->c:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->d:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->e:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseArtist;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->f:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->g:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveTrack;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->h:Lcom/google/common/base/Optional;

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->i:Z

    if-eqz v0, :cond_57

    move v0, v1

    :goto_4e
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->j:Z

    if-eqz v3, :cond_59

    :goto_55
    add-int/2addr v0, v1

    return v0

    :cond_57
    move v0, v2

    goto :goto_4e

    :cond_59
    move v1, v2

    goto :goto_55
.end method
