.class public Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private mActivityType:Ljava/lang/String;
.field private mComments:Ljava/lang/String;
.field private mImageUrl:Ljava/lang/String;
.field private mReplayCount:I
.field private mSubtitle:Ljava/lang/String;
.field private mTimestamp:J
.field private mTitle:Ljava/lang/String;
.field private mUri:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
.registers 10
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
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mActivityType:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTitle:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mSubtitle:Ljava/lang/String;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mImageUrl:Ljava/lang/String;
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mComments:Ljava/lang/String;
iput-object p6, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mUri:Ljava/lang/String;
iput p7, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mReplayCount:I
iput-wide p8, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTimestamp:J
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;
iget v2, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mReplayCount:I
iget v3, p1, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mReplayCount:I
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-wide v2, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTimestamp:J
iget-wide v4, p1, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTimestamp:J
cmp-long v2, v2, v4
if-eqz v2, :cond_27
move v0, v1
goto :goto_4
:cond_27
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mActivityType:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mActivityType:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_33
move v0, v1
goto :goto_4
:cond_33
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mComments:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mComments:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_3f
move v0, v1
goto :goto_4
:cond_3f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mImageUrl:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mImageUrl:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4b
move v0, v1
goto :goto_4
:cond_4b
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mSubtitle:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mSubtitle:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_57
move v0, v1
goto :goto_4
:cond_57
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTitle:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTitle:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_63
move v0, v1
goto :goto_4
:cond_63
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mUri:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mUri:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public getActivityType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mActivityType:Ljava/lang/String;
return-object v0
.end method
.method public getComments()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mComments:Ljava/lang/String;
return-object v0
.end method
.method public getImageUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mImageUrl:Ljava/lang/String;
return-object v0
.end method
.method public getReplayCount()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mReplayCount:I
return v0
.end method
.method public getSubtitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mSubtitle:Ljava/lang/String;
return-object v0
.end method
.method public getTimestamp()J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTimestamp:J
return-wide v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTitle:Ljava/lang/String;
return-object v0
.end method
.method public getUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mUri:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mActivityType:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTitle:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mSubtitle:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mImageUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mComments:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mUri:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mReplayCount:I
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-wide v1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTimestamp:J
iget-wide v3, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTimestamp:J
const/16 v5, 0x20
ushr-long/2addr v3, v5
xor-long/2addr v1, v3
long-to-int v1, v1
add-int/2addr v0, v1
return v0
.end method
.method public setActivityType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mActivityType:Ljava/lang/String;
return-void
.end method
.method public setComments(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mComments:Ljava/lang/String;
return-void
.end method
.method public setImageUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mImageUrl:Ljava/lang/String;
return-void
.end method
.method public setReplayCount(I)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mReplayCount:I
return-void
.end method
.method public setSubtitle(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mSubtitle:Ljava/lang/String;
return-void
.end method
.method public setTimestamp(J)V
.registers 3
iput-wide p1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTimestamp:J
return-void
.end method
.method public setTitle(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mTitle:Ljava/lang/String;
return-void
.end method
.method public setUri(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/recentactivity/model/ActivityModel;->mUri:Ljava/lang/String;
return-void
.end method