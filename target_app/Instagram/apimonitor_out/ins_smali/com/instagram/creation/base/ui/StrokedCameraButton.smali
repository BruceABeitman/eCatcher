.class public Lcom/instagram/creation/base/ui/StrokedCameraButton;
.super Landroid/widget/ImageView;
.source "StrokedCameraButton.java"
.field private a:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->a()V
return-void
.end method
.method private a()V
.registers 5
new-instance v0, Lcom/instagram/common/ui/widget/imageview/b;
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/at;->camera_button_stroke_width:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->getResources()Landroid/content/res/Resources;
move-result-object v2
sget v3, Lcom/facebook/as;->grey_6:I
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-direct {v0, v1, v2}, Lcom/instagram/common/ui/widget/imageview/b;-><init>(II)V
iput-object v0, p0, Lcom/instagram/creation/base/ui/StrokedCameraButton;->a:Landroid/graphics/drawable/Drawable;
sget v0, Lcom/facebook/au;->switch_camera_button_background:I
invoke-virtual {p0, v0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->setBackgroundResource(I)V
sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {p0, v0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Lcom/instagram/creation/base/ui/StrokedCameraButton;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
return-void
.end method
.method protected onSizeChanged(IIII)V
.registers 11
iget-object v0, p0, Lcom/instagram/creation/base/ui/StrokedCameraButton;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->getPaddingLeft()I
move-result v1
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->getPaddingTop()I
move-result v2
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->getWidth()I
move-result v3
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->getPaddingRight()I
move-result v4
sub-int/2addr v3, v4
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->getHeight()I
move-result v4
invoke-virtual {p0}, Lcom/instagram/creation/base/ui/StrokedCameraButton;->getPaddingBottom()I
move-result v5
sub-int/2addr v4, v5
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
return-void
.end method