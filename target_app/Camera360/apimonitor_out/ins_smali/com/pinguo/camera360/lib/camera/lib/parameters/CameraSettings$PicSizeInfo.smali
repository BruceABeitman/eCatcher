.class public Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;
.super Ljava/lang/Object;
.source "CameraSettings.java"
.field private isValid:Z
.field private picPix:I
.field private picSize:Landroid/hardware/Camera$Size;
.field private picTruePix:I
.field private pictureRatio:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picTruePix:I
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->isValid:Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_OTHER:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->pictureRatio:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;Landroid/hardware/Camera$Size;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picSize:Landroid/hardware/Camera$Size;
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picTruePix:I
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->pictureRatio:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)Landroid/hardware/Camera$Size;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picSize:Landroid/hardware/Camera$Size;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->pictureRatio:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picTruePix:I
return v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picPix:I
return v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->isValid:Z
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picPix:I
return-void
.end method
.method public getIsValid()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->isValid:Z
return v0
.end method
.method public getPicPix()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picPix:I
return v0
.end method
.method public getPicSize()Landroid/hardware/Camera$Size;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picSize:Landroid/hardware/Camera$Size;
return-object v0
.end method
.method public getPictureRatio()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->pictureRatio:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
return-object v0
.end method