.class  Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$7;
.super Ljava/lang/Object;
.source "EdgeCutController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$7;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$7;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$25(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lus/pinguo/androidsdk/pgedit/PGEditSDK;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$7;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mComposeMethod:Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$26(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod;
move-result-object v1
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffectForPGImageSDK(Lus/pinguo/androidsdk/PGRendererMethod;)V
return-void
.end method