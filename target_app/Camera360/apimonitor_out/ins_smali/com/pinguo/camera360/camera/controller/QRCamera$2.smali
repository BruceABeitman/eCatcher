.class  Lcom/pinguo/camera360/camera/controller/QRCamera$2;
.super Ljava/lang/Object;
.source "QRCamera.java"
.implements Landroid/view/animation/Interpolator;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/QRCamera;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getInterpolation(F)F
.registers 3
const/high16 v0, 0x3f80
sub-float/2addr v0, p1
return v0
.end method