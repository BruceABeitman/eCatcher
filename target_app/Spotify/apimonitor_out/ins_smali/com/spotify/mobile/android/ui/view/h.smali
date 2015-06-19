.class final Lcom/spotify/mobile/android/ui/view/h;
.super Landroid/view/animation/Animation;
.source "SourceFile"
.field private a:Landroid/view/View;
.field private b:Landroid/view/ViewGroup$MarginLayoutParams;
.field private c:I
.field private d:I
.method public constructor <init>(Landroid/view/View;IZ)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/h;->a:Landroid/view/View;
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/h;->b:Landroid/view/ViewGroup$MarginLayoutParams;
if-eqz p3, :cond_24
move v0, v1
:goto_11
iput v0, p0, Lcom/spotify/mobile/android/ui/view/h;->c:I
if-eqz p3, :cond_16
neg-int v1, p2
:cond_16
iput v1, p0, Lcom/spotify/mobile/android/ui/view/h;->d:I
const-wide/16 v0, 0x190
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/view/h;->setDuration(J)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/h;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iget v1, p0, Lcom/spotify/mobile/android/ui/view/h;->c:I
iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
return-void
:cond_24
neg-int v0, p2
goto :goto_11
.end method
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/h;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iget v1, p0, Lcom/spotify/mobile/android/ui/view/h;->c:I
iget v2, p0, Lcom/spotify/mobile/android/ui/view/h;->d:I
iget v3, p0, Lcom/spotify/mobile/android/ui/view/h;->c:I
sub-int/2addr v2, v3
int-to-float v2, v2
mul-float/2addr v2, p1
float-to-int v2, v2
add-int/2addr v1, v2
iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/h;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->requestLayout()V
return-void
.end method
.method public final getTransformation(JLandroid/view/animation/Transformation;)Z
.registers 7
invoke-super {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z
move-result v0
if-nez v0, :cond_11
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/h;->hasEnded()Z
move-result v1
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/h;->b:Landroid/view/ViewGroup$MarginLayoutParams;
const/4 v2, 0x0
iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
:cond_11
return v0
.end method