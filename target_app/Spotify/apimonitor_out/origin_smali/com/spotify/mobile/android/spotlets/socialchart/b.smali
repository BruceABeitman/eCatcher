.class public final Lcom/spotify/mobile/android/spotlets/socialchart/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/model/n;


# instance fields
.field private a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    iput p2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->b:I

    return v0
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;I)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    iput p2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->b:I

    return-void
.end method

.method public final b()Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    return-object v0
.end method

.method public final canAddToCollection()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final getAlbumCollectionUri()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAlbumImageUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getAlbum()Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->getImageUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAlbumName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getAlbum()Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAlbumUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getAlbum()Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/AlbumModel;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getArtistName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getArtists()[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getArtists()[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getArtists()[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public final getArtistUri()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getArtists()[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getArtists()[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getArtists()[Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/ArtistModel;->getUri()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public final getOfflineState()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getTrackId()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getTrackName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTrackUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getTrackUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAlbumBrowsable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final isArtistBrowsable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final isAvailable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isInCollection()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getInCollection()Z

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isQueueable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final isQueued()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isRadioAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final isSuggested()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
