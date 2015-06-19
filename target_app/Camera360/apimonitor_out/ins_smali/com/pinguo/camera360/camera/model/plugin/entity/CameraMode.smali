.class public Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
.super Ljava/lang/Object;
.source "CameraMode.java"
.implements Ljava/lang/Comparable;
.field public description:Ljava/lang/String;
.field public icon:I
.field public iconUrl:Ljava/lang/String;
.field public idx:I
.field public installTime:J
.field public installation:I
.field public isNew:I
.field public key:Ljava/lang/String;
.field public name:Ljava/lang/String;
.field public nameId:I
.field public requirements:Ljava/lang/String;
.field public version:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->name:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->description:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->requirements:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/shop/model/entity/Product;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->name:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->description:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->requirements:Ljava/lang/String;
iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->name:Ljava/lang/String;
iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->description:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->description:Ljava/lang/String;
iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;
if-eqz v0, :cond_2a
iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/entity/Requirements;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->requirements:Ljava/lang/String;
:cond_2a
iget v0, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->index:I
iput v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->idx:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;II)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->name:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->description:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->requirements:Ljava/lang/String;
iput-object p1, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
iput p2, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->nameId:I
iput p3, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->icon:I
return-void
.end method
.method public compareTo(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)I
.registers 10
const-wide/16 v6, 0x0
iget-wide v2, p0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
iget-wide v4, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
sub-long v0, v2, v4
cmp-long v2, v0, v6
if-gez v2, :cond_e
const/4 v2, -0x1
:goto_d
return v2
:cond_e
cmp-long v2, v0, v6
if-lez v2, :cond_14
const/4 v2, 0x1
goto :goto_d
:cond_14
const/4 v2, 0x0
goto :goto_d
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->compareTo(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)I
move-result v0
return v0
.end method