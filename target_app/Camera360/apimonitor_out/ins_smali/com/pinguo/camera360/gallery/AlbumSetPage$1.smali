.class  Lcom/pinguo/camera360/gallery/AlbumSetPage$1;
.super Lcom/pinguo/camera360/gallery/ui/GLView;
.source "AlbumSetPage.java"
.field private final mMatrix:[F
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumSetPage;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;-><init>()V
const/16 v0, 0x10
new-array v0, v0, [F
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->mMatrix:[F
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 14
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mEyePosition:Lcom/pinguo/camera360/gallery/EyePosition;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$0(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/EyePosition;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/EyePosition;->resetPosition()V
const/4 v2, 0x0
sub-int v0, p5, p3
sub-int v1, p4, p2
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$1(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/ui/SlotView;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$2(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
move-result-object v4
iget v4, v4, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingLeft:I
add-int/lit8 v4, v4, 0x0
iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
invoke-static {v5}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$2(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
move-result-object v5
iget v5, v5, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingTop:I
add-int/2addr v5, v2
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
invoke-static {v6}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$2(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
move-result-object v6
iget v6, v6, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->header_bar_height:I
add-int/2addr v5, v6
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
invoke-static {v6}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$2(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
move-result-object v6
iget v6, v6, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingRight:I
sub-int v6, v1, v6
iget-object v7, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
invoke-static {v7}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$2(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
move-result-object v7
iget v7, v7, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingBottom:I
sub-int v7, v0, v7
invoke-virtual {v3, v4, v5, v6, v7}, Lcom/pinguo/camera360/gallery/ui/SlotView;->layout(IIII)V
return-void
.end method
.method protected render(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 6
const/4 v0, 0x2
invoke-interface {p1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->mMatrix:[F
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->getWidth()I
move-result v1
div-int/lit8 v1, v1, 0x2
int-to-float v1, v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mX:F
invoke-static {v2}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$3(Lcom/pinguo/camera360/gallery/AlbumSetPage;)F
move-result v2
add-float/2addr v1, v2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
int-to-float v2, v2
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mY:F
invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$4(Lcom/pinguo/camera360/gallery/AlbumSetPage;)F
move-result v3
add-float/2addr v2, v3
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumSetPage;
#getter for: Lcom/pinguo/camera360/gallery/AlbumSetPage;->mZ:F
invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->access$5(Lcom/pinguo/camera360/gallery/AlbumSetPage;)F
move-result v3
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->setViewPointMatrix([FFFF)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;->mMatrix:[F
const/4 v1, 0x0
invoke-interface {p1, v0, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->multiplyMatrix([FI)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->render(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
return-void
.end method
.method protected renderBackground(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 2
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->clearBuffer()V
return-void
.end method