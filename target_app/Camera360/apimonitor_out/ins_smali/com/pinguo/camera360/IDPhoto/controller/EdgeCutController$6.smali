.class  Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$6;
.super Ljava/lang/Object;
.source "EdgeCutController.java"
.implements Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
.field private final synthetic val$alphaBitmap:Landroid/graphics/Bitmap;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Landroid/graphics/Bitmap;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$6;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$6;->val$alphaBitmap:Landroid/graphics/Bitmap;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public fail()V
.registers 1
return-void
.end method
.method public success(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$6;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getBgPicWithSkinEffectPath()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$6;->val$alphaBitmap:Landroid/graphics/Bitmap;
#calls: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeCompose(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
invoke-static {v0, p1, v1, v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$18(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
return-void
.end method