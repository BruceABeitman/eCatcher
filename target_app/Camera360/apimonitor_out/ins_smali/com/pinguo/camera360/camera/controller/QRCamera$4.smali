.class  Lcom/pinguo/camera360/camera/controller/QRCamera$4;
.super Ljava/lang/Object;
.source "QRCamera.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
.field private final synthetic val$qrCodeCategory:I
.field private final synthetic val$scanResult:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/QRCamera;ILjava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
iput p2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$4;->val$qrCodeCategory:I
iput-object p3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$4;->val$scanResult:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/controller/QRCamera$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsClickedQRResult:Z
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$8(Lcom/pinguo/camera360/camera/controller/QRCamera;)Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
const/4 v1, 0x1
#setter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsClickedQRResult:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$9(Lcom/pinguo/camera360/camera/controller/QRCamera;Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$4;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;
iget v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$4;->val$qrCodeCategory:I
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$4;->val$scanResult:Ljava/lang/String;
#calls: Lcom/pinguo/camera360/camera/controller/QRCamera;->handleQrResult(ILjava/lang/String;)V
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$10(Lcom/pinguo/camera360/camera/controller/QRCamera;ILjava/lang/String;)V
:cond_17
const-string v1, " - Lcom/pinguo/camera360/camera/controller/QRCamera$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method