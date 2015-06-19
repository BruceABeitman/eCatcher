.class  Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;
.super Ljava/lang/Object;
.source "PhotoEditTestActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/test/PhotoEditTestActivity;
.field private final synthetic val$pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
.field private final synthetic val$success:Z
.method constructor <init>(Lcom/pinguo/camera360/test/PhotoEditTestActivity;Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;->this$0:Lcom/pinguo/camera360/test/PhotoEditTestActivity;
iput-object p2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;->val$pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iput-boolean p3, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;->val$success:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;->val$pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->isMakeGPU()Z
move-result v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;->this$0:Lcom/pinguo/camera360/test/PhotoEditTestActivity;
#getter for: Lcom/pinguo/camera360/test/PhotoEditTestActivity;->textView:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->access$1(Lcom/pinguo/camera360/test/PhotoEditTestActivity;)Landroid/widget/TextView;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "GPU/"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;->val$success:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;->val$pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffect()Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
:goto_3d
return-void
:cond_3e
iget-object v0, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;->this$0:Lcom/pinguo/camera360/test/PhotoEditTestActivity;
#getter for: Lcom/pinguo/camera360/test/PhotoEditTestActivity;->textView:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/test/PhotoEditTestActivity;->access$1(Lcom/pinguo/camera360/test/PhotoEditTestActivity;)Landroid/widget/TextView;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "CPU/"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;->val$success:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/test/PhotoEditTestActivity$2;->val$pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffect()Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
goto :goto_3d
.end method