.class  Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;
.super Ljava/lang/Object;
.source "EdgeCutController.java"
.implements Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
return-object v0
.end method
.method public fail()V
.registers 3
const-string/jumbo v0, "EdgeCutController"
const-string/jumbo v1, "3_make_skin_effect_fail"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/app/Activity;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3$1;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public success(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 7
const-string/jumbo v1, "EdgeCutController"
const-string/jumbo v2, "3_make_skin_effect_success"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getAlphaPicWithSkinEffectPath()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;
invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$4(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->doneGetEdgeCutList()Ljava/util/LinkedList;
move-result-object v2
#calls: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeErasedBitmap(Ljava/lang/String;Ljava/util/LinkedList;)Landroid/graphics/Bitmap;
invoke-static {v1, v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$15(Ljava/lang/String;Ljava/util/LinkedList;)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$4(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->setBitmap(Landroid/graphics/Bitmap;)V
if-eqz v0, :cond_33
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
const/4 v3, 0x1
invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
move-result-object v2
#setter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTempAlphaBitmap:Landroid/graphics/Bitmap;
invoke-static {v1, v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$9(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Landroid/graphics/Bitmap;)V
:cond_33
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mAlphaPicMaker:Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$4(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTempAlphaBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$16(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker;->setOrgBitmap(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mIsActivityResumed:Z
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$17(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Z
move-result v1
if-eqz v1, :cond_5d
const-string/jumbo v1, "EdgeCutController"
const-string/jumbo v2, "4_make_compose"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->getBgPicWithSkinEffectPath()Ljava/lang/String;
move-result-object v2
#calls: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeCompose(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
invoke-static {v1, p1, v2, v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$18(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
:goto_5c
return-void
:cond_5d
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->fail()V
goto :goto_5c
.end method