.class public Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;
.super Ljava/lang/Object;
.source "CameraModeTable.java"
.field private minVersionCode:I
.field private resId:I
.method private constructor <init>(II)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7fffffff
iput v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;->minVersionCode:I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;->resId:I
iput p1, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;->minVersionCode:I
iput p2, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;->resId:I
return-void
.end method
.method synthetic constructor <init>(IILcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;-><init>(II)V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;->resId:I
return v0
.end method
.method public getMinVersionCode()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;->minVersionCode:I
return v0
.end method
.method public getResId()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable$CameraModeInfo;->resId:I
return v0
.end method