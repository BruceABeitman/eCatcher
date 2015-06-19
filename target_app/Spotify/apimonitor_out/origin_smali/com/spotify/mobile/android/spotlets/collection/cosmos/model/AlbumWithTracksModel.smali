.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumWithTracksModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mError:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mTracks:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mTracksAsStrings:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;Ljava/lang/String;)V
    .registers 7
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "album"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "items"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "error"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumWithTracksModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumWithTracksModel;->mTracks:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumWithTracksModel;->mError:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumWithTracksModel;->mTracksAsStrings:Ljava/util/List;

    if-eqz p2, :cond_24

    const/4 v0, 0x0

    :goto_13
    array-length v1, p2

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumWithTracksModel;->mTracksAsStrings:Ljava/util/List;

    aget-object v2, p2, v0

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->getTrackUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_24
    return-void
.end method


# virtual methods
.method public getAlbum()Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumWithTracksModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumWithTracksModel;->mError:Ljava/lang/String;

    return-object v0
.end method

.method public getTracks()[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumWithTracksModel;->mTracks:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;

    return-object v0
.end method

.method public getTracksAsStrings()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumWithTracksModel;->mTracksAsStrings:Ljava/util/List;

    return-object v0
.end method
