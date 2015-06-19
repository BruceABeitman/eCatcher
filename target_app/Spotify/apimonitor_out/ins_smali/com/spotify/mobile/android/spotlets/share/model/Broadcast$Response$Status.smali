.class public Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private mIsRetryable:Z
.field private mIsSuccess:Z
.field private mMessage:Ljava/lang/String;
.method public constructor <init>(ZZLjava/lang/String;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mIsSuccess:Z
iput-boolean p2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mIsRetryable:Z
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mMessage:Ljava/lang/String;
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
instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;
iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mIsRetryable:Z
iget-boolean v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mIsRetryable:Z
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mIsSuccess:Z
iget-boolean v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mIsSuccess:Z
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mMessage:Ljava/lang/String;
if-eqz v2, :cond_2d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mMessage:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mMessage:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_2b
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mMessage:Ljava/lang/String;
if-eqz v2, :cond_4
goto :goto_2b
.end method
.method public getMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mMessage:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mIsSuccess:Z
if-eqz v0, :cond_1c
move v0, v1
:goto_7
mul-int/lit8 v0, v0, 0x1f
iget-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mIsRetryable:Z
if-eqz v3, :cond_1e
:goto_d
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mMessage:Ljava/lang/String;
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mMessage:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v2
:cond_1a
add-int/2addr v0, v2
return v0
:cond_1c
move v0, v2
goto :goto_7
:cond_1e
move v1, v2
goto :goto_d
.end method
.method public isRetryable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mIsRetryable:Z
return v0
.end method
.method public isSuccess()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$Status;->mIsSuccess:Z
return v0
.end method