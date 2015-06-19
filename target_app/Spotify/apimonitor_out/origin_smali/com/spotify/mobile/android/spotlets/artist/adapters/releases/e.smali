.class public final Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/spotify/mobile/android/spotlets/artist/view/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->b:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
    .registers 8

    new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->a:Landroid/content/Context;

    iget-object v2, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releases:Ljava/util/List;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->b:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-direct {v1, v0, p1, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->hasAllReleases()Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->a:Landroid/content/Context;

    iget-object v3, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releaseType:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->b:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V

    :goto_1c
    return-object v0

    :cond_1d
    move-object v0, v1

    goto :goto_1c
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;",
            ">;)",
            "Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->b:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
    .registers 8

    new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->a:Landroid/content/Context;

    iget-object v2, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releases:Ljava/util/List;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->b:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-direct {v1, v0, p1, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->hasAllReleases()Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->a:Landroid/content/Context;

    iget-object v3, p2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;->releaseType:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->b:Lcom/spotify/mobile/android/spotlets/artist/view/e;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/ReleasesAdapterWithViewAll;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseType;Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V

    :goto_1c
    return-object v0

    :cond_1d
    move-object v0, v1

    goto :goto_1c
.end method
