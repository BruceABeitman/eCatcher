.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.implements Lcom/spotify/mobile/android/model/n;
.field private final mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
.field private final mArtists:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
.field private mIsOnline:Z
.field private mIsPlaying:Z
.field private mIsRadio:Z
.field private mIsRadioAvailable:Z
.field private final mName:Ljava/lang/String;
.field private final mOfflineState:I
.field private final mPlayable:Z
.field private final mUri:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;ZLjava/lang/String;)V
.registers 8
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mUri:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mName:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
iput-boolean p5, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mPlayable:Z
invoke-static {p6}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mOfflineState:I
return-void
.end method
.method public canAddToCollection()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public getAddedByName()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getAlbumCollectionUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getCollectionUri()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const-string v0, ""
goto :goto_a
.end method
.method public getAlbumImageUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getAlbumImageUri()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const-string v0, ""
goto :goto_a
.end method
.method public getAlbumName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getName()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const-string v0, ""
goto :goto_a
.end method
.method public getAlbumUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mAlbum:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->getUri()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const-string v0, ""
goto :goto_a
.end method
.method public getArtistCollectionUri()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
array-length v0, v0
if-lez v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->getCollectionUri()Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
const-string v0, ""
goto :goto_12
.end method
.method public getArtistName()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
array-length v0, v0
if-lez v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->getName()Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
const-string v0, ""
goto :goto_12
.end method
.method public getArtistUri()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
array-length v0, v0
if-lez v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mArtists:[Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->getUri()Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
const-string v0, ""
goto :goto_12
.end method
.method public getOfflineState()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mOfflineState:I
return v0
.end method
.method public getTrackId()J
.registers 3
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getTrackName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getTrackUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mUri:Ljava/lang/String;
return-object v0
.end method
.method public isAlbumBrowsable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mIsOnline:Z
return v0
.end method
.method public isArtistBrowsable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mIsOnline:Z
return v0
.end method
.method public isAvailable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mPlayable:Z
return v0
.end method
.method public isInCollection()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isPlaying()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mIsPlaying:Z
return v0
.end method
.method public isQueueable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mIsRadio:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isQueued()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isRadioAvailable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mIsOnline:Z
if-eqz v0, :cond_a
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mIsRadioAvailable:Z
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isSuggested()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public setIsOnline(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mIsOnline:Z
return-void
.end method
.method public setIsPlaying(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mIsPlaying:Z
return-void
.end method
.method public setIsRadio(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mIsRadio:Z
return-void
.end method
.method public setIsRadioAvailable(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/TrackModel;->mIsRadioAvailable:Z
return-void
.end method