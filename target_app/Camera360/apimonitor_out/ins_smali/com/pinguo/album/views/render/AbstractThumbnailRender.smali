.class public abstract Lcom/pinguo/album/views/render/AbstractThumbnailRender;
.super Ljava/lang/Object;
.source "AbstractThumbnailRender.java"
.implements Lcom/pinguo/album/views/ThumbnailView$Renderer;
.field private final mFramePressed:Lcom/pinguo/album/opengles/ResourceTexture;
.field private final mFrameSelected:Lcom/pinguo/album/opengles/ResourceTexture;
.field private final mFramepPreSelected:Lcom/pinguo/album/opengles/ResourceTexture;
.field private final mTagChecked:Lcom/pinguo/album/opengles/ResourceTexture;
.field private final mTagUnChecked:Lcom/pinguo/album/opengles/ResourceTexture;
.method protected constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/album/opengles/ResourceTexture;
const v1, 0x7f020197
invoke-direct {v0, p1, v1}, Lcom/pinguo/album/opengles/ResourceTexture;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->mFramePressed:Lcom/pinguo/album/opengles/ResourceTexture;
new-instance v0, Lcom/pinguo/album/opengles/ResourceTexture;
const v1, 0x7f020198
invoke-direct {v0, p1, v1}, Lcom/pinguo/album/opengles/ResourceTexture;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->mFrameSelected:Lcom/pinguo/album/opengles/ResourceTexture;
new-instance v0, Lcom/pinguo/album/opengles/ResourceTexture;
const v1, 0x7f020196
invoke-direct {v0, p1, v1}, Lcom/pinguo/album/opengles/ResourceTexture;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->mFramepPreSelected:Lcom/pinguo/album/opengles/ResourceTexture;
new-instance v0, Lcom/pinguo/album/opengles/ResourceTexture;
const v1, 0x7f020190
invoke-direct {v0, p1, v1}, Lcom/pinguo/album/opengles/ResourceTexture;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->mTagChecked:Lcom/pinguo/album/opengles/ResourceTexture;
new-instance v0, Lcom/pinguo/album/opengles/ResourceTexture;
const v1, 0x7f02018f
invoke-direct {v0, p1, v1}, Lcom/pinguo/album/opengles/ResourceTexture;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->mTagUnChecked:Lcom/pinguo/album/opengles/ResourceTexture;
return-void
.end method
.method protected static drawFrame(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;Lcom/pinguo/album/opengles/Texture;IIII)V
.registers 13
iget v0, p1, Landroid/graphics/Rect;->left:I
sub-int v2, p3, v0
iget v0, p1, Landroid/graphics/Rect;->top:I
sub-int v3, p4, v0
iget v0, p1, Landroid/graphics/Rect;->left:I
add-int/2addr v0, p5
iget v1, p1, Landroid/graphics/Rect;->right:I
add-int v4, v0, v1
iget v0, p1, Landroid/graphics/Rect;->top:I
add-int/2addr v0, p6
iget v1, p1, Landroid/graphics/Rect;->bottom:I
add-int v5, v0, v1
move-object v0, p2
move-object v1, p0
invoke-interface/range {v0 .. v5}, Lcom/pinguo/album/opengles/Texture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V
return-void
.end method
.method protected drawCheckedBox(Lcom/pinguo/album/opengles/GLESCanvas;II)V
.registers 11
const/4 v3, 0x0
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v2, p0, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->mTagChecked:Lcom/pinguo/album/opengles/ResourceTexture;
move-object v0, p1
move v4, v3
move v5, p2
move v6, p3
invoke-static/range {v0 .. v6}, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->drawFrame(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;Lcom/pinguo/album/opengles/Texture;IIII)V
return-void
.end method
.method protected drawContent(Lcom/pinguo/album/opengles/GLESCanvas;Lcom/pinguo/album/opengles/Texture;III)V
.registers 12
const/4 v5, 0x0
const/high16 v4, 0x3f80
const/4 v3, 0x0
const/4 v1, 0x2
invoke-interface {p1, v1}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V
invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I
move-result p4
move p3, p4
if-eqz p5, :cond_27
div-int/lit8 v1, p3, 0x2
int-to-float v1, v1
div-int/lit8 v2, p4, 0x2
int-to-float v2, v2
invoke-interface {p1, v1, v2}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
int-to-float v1, p5
invoke-interface {p1, v1, v3, v3, v4}, Lcom/pinguo/album/opengles/GLESCanvas;->rotate(FFFF)V
neg-int v1, p3
div-int/lit8 v1, v1, 0x2
int-to-float v1, v1
neg-int v2, p4
div-int/lit8 v2, v2, 0x2
int-to-float v2, v2
invoke-interface {p1, v1, v2}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
:cond_27
int-to-float v1, p3
invoke-interface {p2}, Lcom/pinguo/album/opengles/Texture;->getWidth()I
move-result v2
int-to-float v2, v2
div-float/2addr v1, v2
int-to-float v2, p4
invoke-interface {p2}, Lcom/pinguo/album/opengles/Texture;->getHeight()I
move-result v3
int-to-float v3, v3
div-float/2addr v2, v3
invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F
move-result v0
invoke-interface {p1, v0, v0, v4}, Lcom/pinguo/album/opengles/GLESCanvas;->scale(FFF)V
invoke-interface {p2, p1, v5, v5}, Lcom/pinguo/album/opengles/Texture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V
invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V
return-void
.end method
.method protected drawPreSelectedFrame(Lcom/pinguo/album/opengles/GLESCanvas;II)V
.registers 11
const/4 v3, 0x0
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v2, p0, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->mFramepPreSelected:Lcom/pinguo/album/opengles/ResourceTexture;
move-object v0, p1
move v4, v3
move v5, p2
move v6, p3
invoke-static/range {v0 .. v6}, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->drawFrame(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;Lcom/pinguo/album/opengles/Texture;IIII)V
return-void
.end method
.method protected drawPressedFrame(Lcom/pinguo/album/opengles/GLESCanvas;II)V
.registers 11
const/4 v3, 0x0
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v2, p0, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->mFramePressed:Lcom/pinguo/album/opengles/ResourceTexture;
move-object v0, p1
move v4, v3
move v5, p2
move v6, p3
invoke-static/range {v0 .. v6}, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->drawFrame(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;Lcom/pinguo/album/opengles/Texture;IIII)V
return-void
.end method
.method protected drawSelectedFrame(Lcom/pinguo/album/opengles/GLESCanvas;II)V
.registers 11
const/4 v3, 0x0
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v2, p0, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->mFrameSelected:Lcom/pinguo/album/opengles/ResourceTexture;
move-object v0, p1
move v4, v3
move v5, p2
move v6, p3
invoke-static/range {v0 .. v6}, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->drawFrame(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;Lcom/pinguo/album/opengles/Texture;IIII)V
return-void
.end method
.method protected drawUncheckedBox(Lcom/pinguo/album/opengles/GLESCanvas;II)V
.registers 11
const/4 v3, 0x0
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v2, p0, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->mTagUnChecked:Lcom/pinguo/album/opengles/ResourceTexture;
move-object v0, p1
move v4, v3
move v5, p2
move v6, p3
invoke-static/range {v0 .. v6}, Lcom/pinguo/album/views/render/AbstractThumbnailRender;->drawFrame(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;Lcom/pinguo/album/opengles/Texture;IIII)V
return-void
.end method
.method protected isPressedUpFrameFinished()Z
.registers 2
const/4 v0, 0x1
return v0
.end method