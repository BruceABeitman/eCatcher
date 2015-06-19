.class public abstract Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;
.super Ljava/lang/Object;
.source "AbstractSlotRenderer.java"
.implements Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
.field private static final TAG:Ljava/lang/String; = "AbstractSlotRenderer"
.field protected final mAlbumSetFrameBg:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.field protected final mAlbumSetPreSelected:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.field protected final mAlbumSetSelected:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.field private final mDividerLine:Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;
.field private final mFramePreSelected:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.field private final mFramePressed:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.field private mFramePressedUp:Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;
.field private final mFrameSelected:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.field private final mTagChecked:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.field private final mTagUnChecked:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.field protected final mWaitLoadingTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
.method protected constructor <init>(Landroid/content/Context;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;
const v2, 0x7f0200d3
invoke-direct {v1, p1, v2}, Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mDividerLine:Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f02018b
invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mWaitLoadingTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f020197
invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFramePressed:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f020196
invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFramePreSelected:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f020198
invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f02007a
invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mAlbumSetPreSelected:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f02007b
invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mAlbumSetSelected:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f020190
invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mTagChecked:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f02018f
invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mTagUnChecked:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f02018d
invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-direct {v1, v2}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mAlbumSetFrameBg:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
return-void
.end method
.method protected static drawBox(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/Rect;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
.registers 13
move-object v0, p2
move-object v1, p0
move v2, p3
move v3, p4
move v4, p5
move v5, p6
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/Texture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
return-void
.end method
.method protected static drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
.registers 12
move-object v0, p1
move-object v1, p0
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/Texture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
return-void
.end method
.method protected drawAlbumSetFrameBg(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 10
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mAlbumSetFrameBg:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
if-eqz v0, :cond_e
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mAlbumSetFrameBg:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
move-object v0, p1
move v3, v2
move v4, p2
move v5, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
:cond_e
return-void
.end method
.method protected drawAlbumSetPreSelectedFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 10
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mAlbumSetPreSelected:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
move-object v0, p1
move v3, v2
move v4, p2
move v5, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
return-void
.end method
.method protected drawAlbumSetSelectedFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 10
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mAlbumSetSelected:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
move-object v0, p1
move v3, v2
move v4, p2
move v5, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
return-void
.end method
.method protected drawCheckedBox(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 10
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mTagChecked:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
move-object v0, p1
move v3, v2
move v4, p2
move v5, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
return-void
.end method
.method protected drawContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
.registers 13
const/4 v5, 0x0
const/4 v4, 0x0
const/4 v2, 0x2
invoke-interface {p1, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V
if-eqz p5, :cond_4c
div-int/lit8 v2, p3, 0x2
div-int/lit8 v3, p4, 0x2
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v1
div-int/lit8 v2, p6, 0x2
add-int/2addr v1, v2
int-to-float v2, v1
int-to-float v3, v1
invoke-interface {p1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
int-to-float v2, p5
const/high16 v3, 0x3f80
invoke-interface {p1, v2, v4, v4, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->rotate(FFFF)V
div-int/lit8 v2, p6, 0x2
sub-int/2addr v1, v2
neg-int v2, v1
int-to-float v2, v2
neg-int v3, v1
int-to-float v3, v3
invoke-interface {p1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
rem-int/lit8 v2, p5, 0x5a
and-int/lit8 v2, v2, 0x1
if-eqz v2, :cond_30
move p4, p3
move p3, p4
:goto_30
:cond_30
int-to-float v2, p3
invoke-interface {p2}, Lcom/pinguo/camera360/gallery/ui/Texture;->getWidth()I
move-result v3
int-to-float v3, v3
div-float/2addr v2, v3
int-to-float v3, p4
invoke-interface {p2}, Lcom/pinguo/camera360/gallery/ui/Texture;->getHeight()I
move-result v4
int-to-float v4, v4
div-float/2addr v3, v4
invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F
move-result v0
invoke-interface {p1, v0, v0, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->scale(FFF)V
invoke-interface {p2, p1, v5, v5}, Lcom/pinguo/camera360/gallery/ui/Texture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
return-void
:cond_4c
if-lez p6, :cond_30
div-int/lit8 v2, p6, 0x2
int-to-float v2, v2
div-int/lit8 v3, p6, 0x2
int-to-float v3, v3
invoke-interface {p1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
goto :goto_30
.end method
.method protected drawDividerLine(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 10
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mDividerLine:Lcom/pinguo/camera360/gallery/ui/NinePatchTexture;
move-object v0, p1
move v3, v2
move v4, p2
move v5, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
return-void
.end method
.method protected drawPreSelectedFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 10
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFramePreSelected:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
move-object v0, p1
move v3, v2
move v4, p2
move v5, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
return-void
.end method
.method protected drawPressedFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 10
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFramePressed:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
move-object v0, p1
move v3, v2
move v4, p2
move v5, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
return-void
.end method
.method protected drawPressedUpFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 10
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;
if-nez v0, :cond_e
new-instance v0, Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFramePressed:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;-><init>(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;
:cond_e
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;
move-object v0, p1
move v3, v2
move v4, p2
move v5, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
return-void
.end method
.method protected drawSelectedFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 10
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
move-object v0, p1
move v3, v2
move v4, p2
move v5, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
return-void
.end method
.method protected drawUncheckedBox(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
.registers 10
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mTagUnChecked:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
move-object v0, p1
move v3, v2
move v4, p2
move v5, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
return-void
.end method
.method protected isPressedUpFrameFinished()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;->isAnimating()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x0
:goto_d
return v0
:cond_e
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/pinguo/camera360/gallery/ui/FadeOutTexture;
:cond_11
const/4 v0, 0x1
goto :goto_d
.end method
.method protected renderExpand(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)I
.registers 5
const/4 v0, 0x0
return v0
.end method