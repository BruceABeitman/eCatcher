.class public Lcom/pinguo/camera360/mycenter/PGMessage;
.super Ljava/lang/Object;
.source "PGMessage.java"
.implements Ljava/lang/Comparable;
.field public appName:Ljava/lang/String;
.field public desc:Ljava/lang/String;
.field public expireTime:J
.field public hasReaded:Z
.field public id:Ljava/lang/String;
.field public image_url:Ljava/lang/String;
.field public logic:Ljava/lang/String;
.field public receiveTime:J
.field public showStatus:Ljava/lang/String;
.field public status:Ljava/lang/String;
.field public text:Ljava/lang/String;
.field public timestamp:J
.field public type:Ljava/lang/String;
.field public version:J
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->hasReaded:Z
return-void
.end method
.method public compareTo(Lcom/pinguo/camera360/mycenter/PGMessage;)I
.registers 6
iget-wide v0, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->timestamp:J
iget-wide v2, p1, Lcom/pinguo/camera360/mycenter/PGMessage;->timestamp:J
cmp-long v0, v0, v2
if-lez v0, :cond_a
const/4 v0, -0x1
:goto_9
return v0
:cond_a
iget-wide v0, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->timestamp:J
iget-wide v2, p1, Lcom/pinguo/camera360/mycenter/PGMessage;->timestamp:J
cmp-long v0, v0, v2
if-nez v0, :cond_14
const/4 v0, 0x0
goto :goto_9
:cond_14
const/4 v0, 0x1
goto :goto_9
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/pinguo/camera360/mycenter/PGMessage;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/mycenter/PGMessage;->compareTo(Lcom/pinguo/camera360/mycenter/PGMessage;)I
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_13
:cond_11
move v1, v2
goto :goto_4
:cond_13
move-object v0, p1
check-cast v0, Lcom/pinguo/camera360/mycenter/PGMessage;
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
if-eqz v3, :cond_26
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2a
:cond_24
move v1, v2
goto :goto_4
:cond_26
iget-object v3, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
if-nez v3, :cond_24
:cond_2a
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->image_url:Ljava/lang/String;
if-eqz v3, :cond_3a
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->image_url:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->image_url:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_3e
:cond_38
move v1, v2
goto :goto_4
:cond_3a
iget-object v3, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->image_url:Ljava/lang/String;
if-nez v3, :cond_38
:cond_3e
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->logic:Ljava/lang/String;
if-eqz v3, :cond_4e
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->logic:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->logic:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
:goto_4c
move v1, v2
goto :goto_4
:cond_4e
iget-object v3, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->logic:Ljava/lang/String;
if-eqz v3, :cond_4
goto :goto_4c
.end method
.method public hashCode()I
.registers 8
const/4 v1, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->appName:Ljava/lang/String;
if-eqz v2, :cond_89
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->appName:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_b
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->type:Ljava/lang/String;
if-eqz v2, :cond_8b
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->type:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_17
add-int v0, v3, v2
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->text:Ljava/lang/String;
if-eqz v2, :cond_8d
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->text:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_25
add-int v0, v3, v2
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->desc:Ljava/lang/String;
if-eqz v2, :cond_8f
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->desc:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_33
add-int v0, v3, v2
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->showStatus:Ljava/lang/String;
if-eqz v2, :cond_91
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->showStatus:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_41
add-int v0, v3, v2
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->status:Ljava/lang/String;
if-eqz v2, :cond_93
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->status:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_4f
add-int v0, v3, v2
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->logic:Ljava/lang/String;
if-eqz v2, :cond_95
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->logic:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_5d
add-int v0, v3, v2
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
if-eqz v2, :cond_97
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->id:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_6b
add-int v0, v3, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v3, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->image_url:Ljava/lang/String;
if-eqz v3, :cond_79
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->image_url:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:cond_79
add-int v0, v2, v1
mul-int/lit8 v1, v0, 0x1f
iget-wide v2, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->timestamp:J
iget-wide v4, p0, Lcom/pinguo/camera360/mycenter/PGMessage;->timestamp:J
const/16 v6, 0x20
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int v0, v1, v2
return v0
:cond_89
move v0, v1
goto :goto_b
:cond_8b
move v2, v1
goto :goto_17
:cond_8d
move v2, v1
goto :goto_25
:cond_8f
move v2, v1
goto :goto_33
:cond_91
move v2, v1
goto :goto_41
:cond_93
move v2, v1
goto :goto_4f
:cond_95
move v2, v1
goto :goto_5d
:cond_97
move v2, v1
goto :goto_6b
.end method