.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.implements Lcom/spotify/mobile/android/model/b;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mCollectionUri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private mIsOnline:Z

.field private mIsPaused:Z

.field private mIsPlaying:Z

.field private mIsRadioAvailable:Z

.field private final mName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mNumAlbumsInCollection:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mNumTracksInCollection:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mOfflineState:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mPortraits:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mSyncProgress:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mUri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;IILjava/lang/String;I)V
    .registers 10
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "link"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "collectionLink"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "name"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "portraits"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "numTracksInCollection"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "numAlbumsInCollection"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "offline"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "syncProgress"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mCollectionUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mPortraits:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;

    iput p5, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mNumTracksInCollection:I

    iput p6, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mNumAlbumsInCollection:I

    invoke-static {p7}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mOfflineState:I

    iput p8, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mSyncProgress:I

    return-void
.end method


# virtual methods
.method public getAlbumsInCollectionCount()I
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mNumAlbumsInCollection:I

    return v0
.end method

.method public getCollectionAllTracksUri()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollectionUri()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mCollectionUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getImageSmallUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mPortraits:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mPortraits:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;->getSmallUri()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getImageUri()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mPortraits:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mPortraits:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;->getDefaultUri()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineState()I
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mOfflineState:I

    return v0
.end method

.method public getSortName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncProgress()I
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mSyncProgress:I

    return v0
.end method

.method public getTracksInCollectionCount()I
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mNumTracksInCollection:I

    return v0
.end method

.method public getTracksOfflinedCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mIsOnline:Z

    return v0
.end method

.method public isFollowed()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mIsPaused:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mIsPlaying:Z

    return v0
.end method

.method public isRadioAvailable()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mIsOnline:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mIsRadioAvailable:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setIsOnline(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mIsOnline:Z

    return-void
.end method

.method public setIsPaused(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mIsPaused:Z

    return-void
.end method

.method public setIsPlaying(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mIsPlaying:Z

    return-void
.end method

.method public setIsRadioAvailable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->mIsRadioAvailable:Z

    return-void
.end method
