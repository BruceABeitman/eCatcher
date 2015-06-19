.class public Lcom/pinguo/camera360/lib/camera/sheme/SchemeOnOff;
.super Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;
.source "SchemeOnOff.java"
.method public constructor <init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;-><init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
return-void
.end method
.method public bridge synthetic doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeOnOff;->doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/String;
.registers 6
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeOnOff;->keyName:Ljava/lang/String;
invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_21
const-string/jumbo v1, "off"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_21
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
const-string/jumbo v3, "off"
aput-object v3, v1, v2
const/4 v2, 0x1
const-string/jumbo v3, "on"
aput-object v3, v1, v2
:goto_20
return-object v1
:cond_21
const/4 v1, 0x0
goto :goto_20
.end method