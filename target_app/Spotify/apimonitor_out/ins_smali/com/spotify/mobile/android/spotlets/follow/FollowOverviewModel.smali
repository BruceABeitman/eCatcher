.class public Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private mFacebookFriends:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.field private mMostPlayedArtists:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.field private mWhoToFollow:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/user/ProfileModel;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;->mFacebookFriends:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;->mMostPlayedArtists:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;->mWhoToFollow:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-void
.end method
.method public getFacebookFriends()[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;->mFacebookFriends:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-object v0
.end method
.method public getMostPlayedArtists()[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;->mMostPlayedArtists:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-object v0
.end method
.method public getWhoToFollow()[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;->mWhoToFollow:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-object v0
.end method
.method public setFacebookFriends([Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;->mFacebookFriends:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-void
.end method
.method public setMostPlayedArtists([Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;->mMostPlayedArtists:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-void
.end method
.method public setWhoToFollow([Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowOverviewModel;->mWhoToFollow:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
return-void
.end method