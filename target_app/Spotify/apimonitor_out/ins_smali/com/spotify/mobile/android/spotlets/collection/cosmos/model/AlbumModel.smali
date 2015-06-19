.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.implements Lcom/spotify/mobile/android/model/a;
.implements Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/a;
.field private final mArtist:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
.field private final mCollectionUri:Ljava/lang/String;
.field private final mCopyrights:[Ljava/lang/String;
.field private final mCovers:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;
.field private final mDecorated:Z
.field private final mHeader:Ljava/lang/String;
.field private final mIsComplete:Z
.field private mIsOnline:Z
.field private mIsPaused:Z
.field private mIsPlaying:Z
.field private mIsRadio:Z
.field private mIsRadioAvailable:Z
.field private final mName:Ljava/lang/String;
.field private final mNumTracks:I
.field private final mNumTracksInCollection:I
.field private final mOfflineState:I
.field private final mPlayable:Z
.field private final mRawListIndex:Ljava/lang/Integer;
.field private final mSyncProgress:I
.field private final mUri:Ljava/lang/String;
.field private final mYear:I
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;IIILjava/lang/String;ILjava/lang/String;[Ljava/lang/String;ZIZZ)V
.registers 19
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
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mUri:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mCollectionUri:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mName:Ljava/lang/String;
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mCovers:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mArtist:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
iput p6, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mYear:I
iput p7, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mNumTracks:I
iput p8, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mNumTracksInCollection:I
invoke-static {p9}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(Ljava/lang/String;)I
move-result v1
iput v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mOfflineState:I
iput p10, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mSyncProgress:I
iput-object p11, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mHeader:Ljava/lang/String;
iput-object p12, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mCopyrights:[Ljava/lang/String;
iput-boolean p13, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mDecorated:Z
invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mRawListIndex:Ljava/lang/Integer;
move/from16 v0, p15
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mPlayable:Z
move/from16 v0, p16
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsComplete:Z
return-void
.end method
.method public getAlbumId()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getAlbumImageSmallUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mCovers:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mCovers:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;->getSmallUri()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const-string v0, ""
goto :goto_a
.end method
.method public getAlbumImageUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mCovers:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mCovers:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/Image;->getDefaultUri()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const-string v0, ""
goto :goto_a
.end method
.method public getArtistName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mArtist:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mArtist:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->getName()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const-string v0, ""
goto :goto_a
.end method
.method public getArtistUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mArtist:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mArtist:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ArtistModel;->getUri()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const-string v0, ""
goto :goto_a
.end method
.method public getCanUndownload()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public getCollectionState()Lcom/spotify/mobile/android/util/Collection$State;
.registers 3
const/4 v0, 0x1
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsComplete:Z
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Collection;->a(ZZ)Lcom/spotify/mobile/android/util/Collection$State;
move-result-object v0
return-object v0
.end method
.method public getCollectionTracks()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mNumTracksInCollection:I
return v0
.end method
.method public getCollectionUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mCollectionUri:Ljava/lang/String;
return-object v0
.end method
.method public getCopyrights()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mCopyrights:[Ljava/lang/String;
if-nez v0, :cond_7
const-string v0, ""
:goto_6
return-object v0
:cond_7
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x0
:goto_d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mCopyrights:[Ljava/lang/String;
array-length v2, v2
if-ge v0, v2, :cond_23
if-eqz v0, :cond_19
const/16 v2, 0xa
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_19
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mCopyrights:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_23
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public getHeader()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mHeader:Ljava/lang/String;
return-object v0
.end method
.method public getItemId()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mRawListIndex:Ljava/lang/Integer;
if-nez v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mRawListIndex:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
goto :goto_5
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getOfflineState()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mOfflineState:I
return v0
.end method
.method public getReleaseYear()Ljava/lang/String;
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mYear:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSyncProgress()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mSyncProgress:I
return v0
.end method
.method public getTotalTracks()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mNumTracks:I
return v0
.end method
.method public getUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mUri:Ljava/lang/String;
return-object v0
.end method
.method public isArtistBrowsable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsOnline:Z
return v0
.end method
.method public isAvailable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsOnline:Z
if-eqz v0, :cond_a
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mPlayable:Z
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isHeader()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mHeader:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isPaused()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsPaused:Z
return v0
.end method
.method public isPlaying()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsPlaying:Z
return v0
.end method
.method public isQueueable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsRadio:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isRadioAvailable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsOnline:Z
if-eqz v0, :cond_a
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsRadioAvailable:Z
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
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsOnline:Z
return-void
.end method
.method public setIsPaused(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsPaused:Z
return-void
.end method
.method public setIsPlaying(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsPlaying:Z
return-void
.end method
.method public setIsRadio(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsRadio:Z
return-void
.end method
.method public setIsRadioAvailable(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->mIsRadioAvailable:Z
return-void
.end method