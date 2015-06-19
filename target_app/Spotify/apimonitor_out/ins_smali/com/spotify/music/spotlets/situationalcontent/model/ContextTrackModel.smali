.class public Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.implements Lcom/spotify/mobile/android/model/n;
.field private final mArtistName:Ljava/lang/String;
.field private final mArtistUri:Ljava/lang/String;
.field private mIsOnline:Z
.field private final mIsPlayable:Z
.field private mIsPlaying:Z
.field private mIsRadio:Z
.field private mIsRadioAvailable:Z
.field private final mOfflineState:I
.field private final mPlayCount:I
.field private final mTrackName:Ljava/lang/String;
.field private final mTrackUri:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.registers 7
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
const/4 v0, 0x0
iput v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mOfflineState:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mIsPlayable:Z
iput-object p1, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mTrackUri:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mTrackName:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mArtistUri:Ljava/lang/String;
iput-object p4, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mArtistName:Ljava/lang/String;
iput p5, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mPlayCount:I
return-void
.end method
.method public canAddToCollection()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getAddedByName()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method public getAlbumCollectionUri()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method public getAlbumImageUri()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method public getAlbumName()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method public getAlbumUri()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method public getArtistCollectionUri()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method public getArtistName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mArtistName:Ljava/lang/String;
return-object v0
.end method
.method public getArtistUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mArtistUri:Ljava/lang/String;
return-object v0
.end method
.method public getOfflineState()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getPlayCount()I
.registers 2
iget v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mPlayCount:I
return v0
.end method
.method public getTrackId()J
.registers 3
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getTrackName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mTrackName:Ljava/lang/String;
return-object v0
.end method
.method public getTrackUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mTrackUri:Ljava/lang/String;
return-object v0
.end method
.method public isAlbumBrowsable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mIsOnline:Z
return v0
.end method
.method public isArtistBrowsable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mIsOnline:Z
return v0
.end method
.method public isAvailable()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isInCollection()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isPlaying()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mIsPlaying:Z
return v0
.end method
.method public isQueueable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mIsRadio:Z
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
iget-boolean v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mIsOnline:Z
if-eqz v0, :cond_a
iget-boolean v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mIsRadioAvailable:Z
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
iput-boolean p1, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mIsOnline:Z
return-void
.end method
.method public setIsPlaying(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mIsPlaying:Z
return-void
.end method
.method public setIsRadio(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mIsRadio:Z
return-void
.end method
.method public setIsRadioAvailable(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->mIsRadioAvailable:Z
return-void
.end method