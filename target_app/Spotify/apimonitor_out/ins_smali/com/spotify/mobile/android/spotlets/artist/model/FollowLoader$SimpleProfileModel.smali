.class  Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$SimpleProfileModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
.method public constructor <init>(Ljava/lang/String;IIZ)V
.registers 6
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/follow/a;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/spotlets/follow/a;-><init>(Ljava/lang/String;IIZ)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$SimpleProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
return-void
.end method
.method public getFollowData()Lcom/spotify/mobile/android/spotlets/follow/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$SimpleProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;
return-object v0
.end method