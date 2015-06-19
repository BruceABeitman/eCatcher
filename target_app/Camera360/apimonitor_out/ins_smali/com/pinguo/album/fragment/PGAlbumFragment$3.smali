.class  Lcom/pinguo/album/fragment/PGAlbumFragment$3;
.super Lcom/pinguo/album/views/GLBaseView;
.source "PGAlbumFragment.java"
.field private final mMatrix:[F
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {p0}, Lcom/pinguo/album/views/GLBaseView;-><init>()V
const/16 v0, 0x10
new-array v0, v0, [F
iput-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->mMatrix:[F
return-void
.end method
.method public getContentLength()I
.registers 2
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$9(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/ThumbnailView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/ThumbnailView;->getContentLength()I
move-result v0
return v0
.end method
.method public isBegin()Z
.registers 3
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/PGAlbumActionBar;->getActionBarMode()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_f
const/4 v0, 0x0
:goto_e
return v0
:cond_f
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$9(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/ThumbnailView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/ThumbnailView;->isBegin()Z
move-result v0
goto :goto_e
.end method
.method public isEnd()Z
.registers 3
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/PGAlbumActionBar;->getActionBarMode()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_f
const/4 v0, 0x0
:goto_e
return v0
:cond_f
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$9(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/ThumbnailView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/views/ThumbnailView;->isEnd()Z
move-result v0
goto :goto_e
.end method
.method protected onLayout(ZIIII)V
.registers 12
iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mEyePosition:Lcom/pinguo/album/EyePosition;
invoke-static {v4}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$5(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/EyePosition;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/album/EyePosition;->resetPosition()V
iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mConfig:Lcom/pinguo/album/views/ViewConfigs$AlbumPage;
invoke-static {v4}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$6(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/ViewConfigs$AlbumPage;
move-result-object v4
iget v4, v4, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->paddingLeft:I
add-int v1, p2, v4
move v3, p3
sub-int v0, p5, p3
sub-int v4, p4, p2
iget-object v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mConfig:Lcom/pinguo/album/views/ViewConfigs$AlbumPage;
invoke-static {v5}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$6(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/ViewConfigs$AlbumPage;
move-result-object v5
iget v5, v5, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->paddingRight:I
sub-int v2, v4, v5
iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;
invoke-static {v4}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$7(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/render/ThumbnailRenderer;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {v4, v5}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->setHighlightItemPath(Lcom/pinguo/album/data/MediaPath;)V
iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mOpenCenter:Lcom/pinguo/album/utils/RelativePosition;
invoke-static {v4}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$8(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/utils/RelativePosition;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {v4, v5, v3}, Lcom/pinguo/album/utils/RelativePosition;->setReferencePosition(II)V
iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;
invoke-static {v4}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$9(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/ThumbnailView;
move-result-object v4
invoke-virtual {v4, v1, v3, v2, v0}, Lcom/pinguo/album/views/ThumbnailView;->layout(IIII)V
return-void
.end method
.method protected render(Lcom/pinguo/album/opengles/GLESCanvas;)V
.registers 6
const/4 v0, 0x2
invoke-interface {p1, v0}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->mMatrix:[F
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->getWidth()I
move-result v1
div-int/lit8 v1, v1, 0x2
int-to-float v1, v1
iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mX:F
invoke-static {v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$10(Lcom/pinguo/album/fragment/PGAlbumFragment;)F
move-result v2
add-float/2addr v1, v2
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
int-to-float v2, v2
iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mY:F
invoke-static {v3}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$11(Lcom/pinguo/album/fragment/PGAlbumFragment;)F
move-result v3
add-float/2addr v2, v3
iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mZ:F
invoke-static {v3}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$12(Lcom/pinguo/album/fragment/PGAlbumFragment;)F
move-result v3
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/album/utils/PGAlbumUtils;->setViewPointMatrix([FFFF)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;->mMatrix:[F
const/4 v1, 0x0
invoke-interface {p1, v0, v1}, Lcom/pinguo/album/opengles/GLESCanvas;->multiplyMatrix([FI)V
invoke-super {p0, p1}, Lcom/pinguo/album/views/GLBaseView;->render(Lcom/pinguo/album/opengles/GLESCanvas;)V
invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V
return-void
.end method