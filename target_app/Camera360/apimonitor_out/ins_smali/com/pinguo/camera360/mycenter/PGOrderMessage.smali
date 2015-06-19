.class public Lcom/pinguo/camera360/mycenter/PGOrderMessage;
.super Ljava/lang/Object;
.source "PGOrderMessage.java"
.implements Ljava/lang/Comparable;
.field public id:Ljava/lang/String;
.field public logic:Ljava/lang/String;
.field public type:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compareTo(Lcom/pinguo/camera360/mycenter/PGOrderMessage;)I
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGOrderMessage;->logic:Ljava/lang/String;
iget-object v1, p1, Lcom/pinguo/camera360/mycenter/PGOrderMessage;->logic:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/pinguo/camera360/mycenter/PGOrderMessage;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/mycenter/PGOrderMessage;->compareTo(Lcom/pinguo/camera360/mycenter/PGOrderMessage;)I
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/pinguo/camera360/mycenter/PGOrderMessage;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGOrderMessage;->logic:Ljava/lang/String;
check-cast p1, Lcom/pinguo/camera360/mycenter/PGOrderMessage;
iget-object v1, p1, Lcom/pinguo/camera360/mycenter/PGOrderMessage;->logic:Ljava/lang/String;
invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
:goto_e
return v0
:cond_f
invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_e
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/PGOrderMessage;->logic:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method