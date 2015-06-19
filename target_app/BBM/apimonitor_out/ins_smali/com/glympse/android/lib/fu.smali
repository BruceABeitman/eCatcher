.class  Lcom/glympse/android/lib/fu;
.super Ljava/lang/Object;
.source "LocationProfile.java"
.implements Lcom/glympse/android/core/GLocationProfile;
.field private pb:I
.field private qd:I
.field private qe:I
.field private qf:D
.field private qg:D
.field private qh:I
.field private qi:I
.field private qj:I
.field private qk:Z
.method public constructor <init>()V
.registers 5
const-wide/16 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/glympse/android/lib/fu;->qd:I
iput v1, p0, Lcom/glympse/android/lib/fu;->pb:I
const/4 v0, 0x3
iput v0, p0, Lcom/glympse/android/lib/fu;->qe:I
iput-wide v2, p0, Lcom/glympse/android/lib/fu;->qf:D
iput-wide v2, p0, Lcom/glympse/android/lib/fu;->qg:D
iput v1, p0, Lcom/glympse/android/lib/fu;->qh:I
iput v1, p0, Lcom/glympse/android/lib/fu;->qi:I
iput v1, p0, Lcom/glympse/android/lib/fu;->qj:I
iput-boolean v1, p0, Lcom/glympse/android/lib/fu;->qk:Z
return-void
.end method
.method public static w(Ljava/lang/String;)I
.registers 2
const-string v0, "viewing"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x3
:goto_9
return v0
:cond_a
const-string v0, "not_viewing"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x2
goto :goto_9
:cond_14
const-string v0, "foreground"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
const/4 v0, 0x1
goto :goto_9
:cond_1e
const-string v0, "background"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
const/4 v0, 0x0
goto :goto_9
:cond_28
const/4 v0, -0x1
goto :goto_9
.end method
.method public b(D)V
.registers 3
iput-wide p1, p0, Lcom/glympse/android/lib/fu;->qf:D
return-void
.end method
.method public c(D)V
.registers 3
iput-wide p1, p0, Lcom/glympse/android/lib/fu;->qg:D
return-void
.end method
.method public getAccuracy()D
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/fu;->qg:D
return-wide v0
.end method
.method public getActivity()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/fu;->qi:I
return v0
.end method
.method public getDistance()D
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/fu;->qf:D
return-wide v0
.end method
.method public getFrequency()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/fu;->qh:I
return v0
.end method
.method public getMode()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/fu;->pb:I
return v0
.end method
.method public getPriority()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/fu;->qj:I
return v0
.end method
.method public getProfile()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/fu;->qd:I
return v0
.end method
.method public getSource()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/fu;->qe:I
return v0
.end method
.method public isAutoPauseEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/fu;->qk:Z
return v0
.end method
.method public isEqual(Lcom/glympse/android/core/GCommon;)Z
.registers 6
check-cast p1, Lcom/glympse/android/lib/fu;
iget v0, p1, Lcom/glympse/android/lib/fu;->pb:I
iget v1, p0, Lcom/glympse/android/lib/fu;->pb:I
if-ne v0, v1, :cond_32
iget v0, p1, Lcom/glympse/android/lib/fu;->qe:I
iget v1, p0, Lcom/glympse/android/lib/fu;->qe:I
if-ne v0, v1, :cond_32
iget-wide v0, p1, Lcom/glympse/android/lib/fu;->qf:D
iget-wide v2, p0, Lcom/glympse/android/lib/fu;->qf:D
cmpl-double v0, v0, v2
if-nez v0, :cond_32
iget-wide v0, p1, Lcom/glympse/android/lib/fu;->qg:D
iget-wide v2, p0, Lcom/glympse/android/lib/fu;->qg:D
cmpl-double v0, v0, v2
if-nez v0, :cond_32
iget v0, p1, Lcom/glympse/android/lib/fu;->qh:I
iget v1, p0, Lcom/glympse/android/lib/fu;->qh:I
if-ne v0, v1, :cond_32
iget v0, p1, Lcom/glympse/android/lib/fu;->qi:I
iget v1, p0, Lcom/glympse/android/lib/fu;->qi:I
if-ne v0, v1, :cond_32
iget-boolean v0, p1, Lcom/glympse/android/lib/fu;->qk:Z
iget-boolean v1, p0, Lcom/glympse/android/lib/fu;->qk:Z
if-ne v0, v1, :cond_32
const/4 v0, 0x1
:goto_31
return v0
:cond_32
const/4 v0, 0x0
goto :goto_31
.end method
.method public l(Z)V
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/lib/fu;->qk:Z
return-void
.end method
.method public o(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/lib/fu;->qd:I
return-void
.end method
.method public p(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/lib/fu;->qh:I
return-void
.end method
.method public q(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/lib/fu;->qi:I
return-void
.end method
.method public setMode(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/lib/fu;->pb:I
return-void
.end method
.method public setPriority(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/lib/fu;->qj:I
return-void
.end method
.method public setSource(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/lib/fu;->qe:I
return-void
.end method