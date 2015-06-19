.class  Lcom/glympse/android/lib/bd;
.super Lcom/glympse/android/lib/json/JsonHandlerBasic;
.source "DirectionsJob.java"
.field private he:Ljava/lang/String;
.field private jW:J
.field private jX:I
.field private jY:Lcom/glympse/android/lib/GTrackPrivate;
.field private jZ:Z
.field private ka:Z
.field private kb:Z
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonHandlerBasic;-><init>()V
iput-boolean v2, p0, Lcom/glympse/android/lib/bd;->jZ:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/bd;->ka:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/bd;->kb:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/bd;->jW:J
iput v2, p0, Lcom/glympse/android/lib/bd;->jX:I
return-void
.end method
.method public aH()Lcom/glympse/android/lib/GTrackPrivate;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/bd;->jY:Lcom/glympse/android/lib/GTrackPrivate;
return-object v0
.end method
.method public endPair(I)Z
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/bd;->he:Ljava/lang/String;
const/4 v0, 0x1
return v0
.end method
.method public getDistance()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/bd;->jX:I
return v0
.end method
.method public getEta()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/bd;->jW:J
return-wide v0
.end method
.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 9
const/4 v5, 0x1
const/4 v4, 0x0
iget-boolean v0, p0, Lcom/glympse/android/lib/bd;->jZ:Z
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/bd;->he:Ljava/lang/String;
const-string v1, "value"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
const-wide/16 v2, 0x3e8
mul-long/2addr v0, v2
iput-wide v0, p0, Lcom/glympse/android/lib/bd;->jW:J
iput-boolean v4, p0, Lcom/glympse/android/lib/bd;->jZ:Z
:cond_1b
:goto_1b
return v5
:cond_1c
iget-boolean v0, p0, Lcom/glympse/android/lib/bd;->ka:Z
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/glympse/android/lib/bd;->he:Ljava/lang/String;
const-string v1, "value"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J
move-result-wide v0
long-to-int v0, v0
iput v0, p0, Lcom/glympse/android/lib/bd;->jX:I
iput-boolean v4, p0, Lcom/glympse/android/lib/bd;->ka:Z
goto :goto_1b
:cond_34
iget-boolean v0, p0, Lcom/glympse/android/lib/bd;->kb:Z
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/glympse/android/lib/bd;->he:Ljava/lang/String;
const-string v1, "points"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1b
invoke-virtual {p2, v5}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/lib/bc;->o(Ljava/lang/String;)Lcom/glympse/android/lib/GTrackPrivate;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/bd;->jY:Lcom/glympse/android/lib/GTrackPrivate;
goto :goto_1b
.end method
.method public startPair(ILjava/lang/String;)Z
.registers 6
const/4 v2, 0x1
iput-object p2, p0, Lcom/glympse/android/lib/bd;->he:Ljava/lang/String;
const/4 v0, 0x3
if-ne v0, p1, :cond_13
iget-object v0, p0, Lcom/glympse/android/lib/bd;->he:Ljava/lang/String;
const-string v1, "overview_polyline"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
iput-boolean v2, p0, Lcom/glympse/android/lib/bd;->kb:Z
:cond_12
:goto_12
return v2
:cond_13
const/4 v0, 0x5
if-ne v0, p1, :cond_12
iget-object v0, p0, Lcom/glympse/android/lib/bd;->he:Ljava/lang/String;
const-string v1, "duration"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_23
iput-boolean v2, p0, Lcom/glympse/android/lib/bd;->jZ:Z
goto :goto_12
:cond_23
iget-object v0, p0, Lcom/glympse/android/lib/bd;->he:Ljava/lang/String;
const-string v1, "distance"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
iput-boolean v2, p0, Lcom/glympse/android/lib/bd;->ka:Z
goto :goto_12
.end method