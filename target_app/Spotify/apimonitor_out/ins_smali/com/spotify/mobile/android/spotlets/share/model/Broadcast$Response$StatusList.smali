.class public Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private mFacebookStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
.field private mSpotifyStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
.field private mTumblrStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
.field private mTwitterStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mSpotifyStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mFacebookStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTwitterStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTumblrStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mFacebookStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-eqz v2, :cond_1d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mFacebookStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mFacebookStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_21
:cond_1b
move v0, v1
goto :goto_4
:cond_1d
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mFacebookStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-nez v2, :cond_1b
:cond_21
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mSpotifyStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-eqz v2, :cond_31
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mSpotifyStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mSpotifyStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_35
:cond_2f
move v0, v1
goto :goto_4
:cond_31
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mSpotifyStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-nez v2, :cond_2f
:cond_35
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTumblrStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-eqz v2, :cond_45
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTumblrStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTumblrStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_49
:cond_43
move v0, v1
goto :goto_4
:cond_45
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTumblrStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-nez v2, :cond_43
:cond_49
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTwitterStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-eqz v2, :cond_59
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTwitterStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTwitterStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_57
move v0, v1
goto :goto_4
:cond_59
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTwitterStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-eqz v2, :cond_4
goto :goto_57
.end method
.method public getFacebookStatus()Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mFacebookStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
return-object v0
.end method
.method public getSpotifyStatus()Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mSpotifyStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
return-object v0
.end method
.method public getTumblrStatus()Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTumblrStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
return-object v0
.end method
.method public getTwitterStatus()Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTwitterStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mSpotifyStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mSpotifyStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->hashCode()I
move-result v0
:goto_b
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mFacebookStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mFacebookStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->hashCode()I
move-result v0
:goto_17
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTwitterStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTwitterStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->hashCode()I
move-result v0
:goto_24
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTumblrStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-eqz v2, :cond_31
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->mTumblrStatus:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->hashCode()I
move-result v1
:cond_31
add-int/2addr v0, v1
return v0
:cond_33
move v0, v1
goto :goto_b
:cond_35
move v0, v1
goto :goto_17
:cond_37
move v0, v1
goto :goto_24
.end method