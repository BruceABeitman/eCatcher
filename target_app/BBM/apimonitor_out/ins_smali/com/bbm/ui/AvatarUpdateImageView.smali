.class public Lcom/bbm/ui/AvatarUpdateImageView;
.super Lcom/bbm/ui/SquaredObservingImageView;
.source "AvatarUpdateImageView.java"
.field private a:Z
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/bbm/ui/SquaredObservingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/AvatarUpdateImageView;->a:Z
return-void
.end method
.method protected onMeasure(II)V
.registers 6
invoke-super {p0, p1, p2}, Lcom/bbm/ui/SquaredObservingImageView;->onMeasure(II)V
iget-boolean v0, p0, Lcom/bbm/ui/AvatarUpdateImageView;->a:Z
if-nez v0, :cond_23
invoke-virtual {p0}, Lcom/bbm/ui/AvatarUpdateImageView;->getMeasuredWidth()I
move-result v0
int-to-float v0, v0
invoke-virtual {p0}, Lcom/bbm/ui/AvatarUpdateImageView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b039e
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
sub-float/2addr v0, v1
const/high16 v1, 0x4000
div-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
const/4 v1, 0x0
invoke-virtual {p0, v1, v0}, Lcom/bbm/ui/AvatarUpdateImageView;->scrollTo(II)V
:cond_23
return-void
.end method
.method public setIsManuallyScrolled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/AvatarUpdateImageView;->a:Z
return-void
.end method