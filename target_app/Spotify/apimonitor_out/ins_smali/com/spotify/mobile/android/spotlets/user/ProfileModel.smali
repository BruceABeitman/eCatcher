.class public Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
.field private final mFullName:Ljava/lang/String;
.field private final mImageUrl:Ljava/lang/String;
.field private final mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
.field private final mPlaylistCount:I
.field private final mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
.field private final mTopArtists:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
.field private final mTotalInvitationCodes:Ljava/lang/Integer;
.field private final mUri:Ljava/lang/String;
.field private final mUsername:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;Ljava/lang/Integer;)V
.registers 16
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
if-eqz p1, :cond_2b
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUri:Ljava/lang/String;
:goto_7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUri:Ljava/lang/String;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/g;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUsername:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFullName:Ljava/lang/String;
iput p3, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mPlaylistCount:I
iput-object p6, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mImageUrl:Ljava/lang/String;
new-instance v0, Lcom/spotify/mobile/android/spotlets/follow/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUri:Ljava/lang/String;
invoke-direct {v0, v1, p4, p5, p7}, Lcom/spotify/mobile/android/spotlets/follow/a;-><init>(Ljava/lang/String;IIZ)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
iput-object p10, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
iput-object p11, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTopArtists:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
iput-object p12, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
iput-object p13, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTotalInvitationCodes:Ljava/lang/Integer;
return-void
:cond_2b
if-eqz p8, :cond_30
iput-object p8, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUri:Ljava/lang/String;
goto :goto_7
:cond_30
if-eqz p9, :cond_35
iput-object p9, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUri:Ljava/lang/String;
goto :goto_7
:cond_35
const-string v0, "A ProfileModel must have a uri"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUri:Ljava/lang/String;
goto :goto_7
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
instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUri:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUri:Ljava/lang/String;
invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_71
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUsername:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUsername:Ljava/lang/String;
invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_71
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFullName:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFullName:Ljava/lang/String;
invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_71
iget v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mPlaylistCount:I
iget v3, p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mPlaylistCount:I
if-ne v2, v3, :cond_71
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mImageUrl:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mImageUrl:Ljava/lang/String;
invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_71
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/follow/a;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_71
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_71
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTopArtists:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTopArtists:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_71
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_71
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTotalInvitationCodes:Ljava/lang/Integer;
if-eqz v2, :cond_73
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTotalInvitationCodes:Ljava/lang/Integer;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTotalInvitationCodes:Ljava/lang/Integer;
invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_71
move v0, v1
goto :goto_4
:cond_73
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTotalInvitationCodes:Ljava/lang/Integer;
if-nez v2, :cond_71
goto :goto_4
.end method
.method public getDisplayName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFullName:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUsername:Ljava/lang/String;
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFullName:Ljava/lang/String;
goto :goto_a
.end method
.method public getFollowData()Lcom/spotify/mobile/android/spotlets/follow/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
return-object v0
.end method
.method public getFollowersCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/a;->b()I
move-result v0
return v0
.end method
.method public getFollowingCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/a;->c()I
move-result v0
return v0
.end method
.method public getFullName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFullName:Ljava/lang/String;
return-object v0
.end method
.method public getImageHttpUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mImageUrl:Ljava/lang/String;
return-object v0
.end method
.method public getInvitationCodes()[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
return-object v0
.end method
.method public getInvitationCodesCount()Ljava/lang/Integer;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTotalInvitationCodes:Ljava/lang/Integer;
return-object v0
.end method
.method public getPlaylistCount()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mPlaylistCount:I
return v0
.end method
.method public getPlaylists()[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
return-object v0
.end method
.method public getTopArtists()[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTopArtists:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
return-object v0
.end method
.method public getUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUri:Ljava/lang/String;
return-object v0
.end method
.method public getUsername()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUsername:Ljava/lang/String;
return-object v0
.end method
.method public hasMoreInvitationCodes()Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTotalInvitationCodes:Ljava/lang/Integer;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTotalInvitationCodes:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
array-length v1, v1
if-le v0, v1, :cond_15
const/4 v0, 0x1
:goto_14
return v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUri:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUsername:Ljava/lang/String;
if-eqz v0, :cond_71
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUsername:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_13
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFullName:Ljava/lang/String;
if-eqz v0, :cond_73
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFullName:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_20
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mPlaylistCount:I
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mImageUrl:Ljava/lang/String;
if-eqz v0, :cond_75
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mImageUrl:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_32
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/follow/a;->hashCode()I
move-result v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
if-eqz v0, :cond_77
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mPlaylists:[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
:goto_48
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTopArtists:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
if-eqz v0, :cond_79
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTopArtists:[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
:goto_55
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
if-eqz v0, :cond_7b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mInvitationCodes:[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
:goto_62
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTotalInvitationCodes:Ljava/lang/Integer;
if-eqz v2, :cond_6f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mTotalInvitationCodes:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
:cond_6f
add-int/2addr v0, v1
return v0
:cond_71
move v0, v1
goto :goto_13
:cond_73
move v0, v1
goto :goto_20
:cond_75
move v0, v1
goto :goto_32
:cond_77
move v0, v1
goto :goto_48
:cond_79
move v0, v1
goto :goto_55
:cond_7b
move v0, v1
goto :goto_62
.end method
.method public isFollowing()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/a;->d()Z
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 6
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v1, "uri: %s  username: %s  fullname: %s  playlistCount: %s, imageUrl: %s  followData: %s"
const/4 v2, 0x6
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUri:Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mUsername:Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x2
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFullName:Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x3
iget v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mPlaylistCount:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x4
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mImageUrl:Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x5
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method