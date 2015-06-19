.class  Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9;
.super Ljava/lang/Object;
.source "EdgeCutController.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
.field private final synthetic val$index:I
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;I)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
iput p2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9;->val$index:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9;->val$index:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->onEraserClick(I)V
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$9; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method