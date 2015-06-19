.class  Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mFollowersCount:I
.field private final mFollowingCount:I
.method public constructor <init>(II)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;->mFollowersCount:I
iput p2, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;->mFollowingCount:I
return-void
.end method
.method public getFollowersCount()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;->mFollowersCount:I
return v0
.end method
.method public getFollowingCount()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;->mFollowingCount:I
return v0
.end method