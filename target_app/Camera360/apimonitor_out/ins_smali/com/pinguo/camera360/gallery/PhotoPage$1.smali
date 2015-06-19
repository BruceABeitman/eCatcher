.class  Lcom/pinguo/camera360/gallery/PhotoPage$1;
.super Lcom/pinguo/camera360/gallery/ui/GLView;
.source "PhotoPage.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/PhotoPage;
.method constructor <init>(Lcom/pinguo/camera360/gallery/PhotoPage;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoPage$1;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;-><init>()V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 10
const/4 v3, 0x0
const-string/jumbo v0, "PhotoPage"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onlayout changed = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "left ="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " top = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "right = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " bottom = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoPage$1;->this$0:Lcom/pinguo/camera360/gallery/PhotoPage;
#getter for: Lcom/pinguo/camera360/gallery/PhotoPage;->mPhotoView:Lcom/pinguo/camera360/gallery/ui/PhotoView;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoPage;->access$0(Lcom/pinguo/camera360/gallery/PhotoPage;)Lcom/pinguo/camera360/gallery/ui/PhotoView;
move-result-object v0
sub-int v1, p4, p2
sub-int v2, p5, p3
invoke-virtual {v0, v3, v3, v1, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->layout(IIII)V
return-void
.end method
.method protected renderBackground(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 2
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->clearBuffer()V
return-void
.end method