.class final Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.field final synthetic a:I
.field final synthetic b:I
.field final synthetic c:I
.field final synthetic d:I
.field final synthetic e:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;IIII)V
.registers 6
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->e:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
iput p2, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->a:I
iput p3, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->b:I
iput p4, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->c:I
iput p5, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->d:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onPreDraw()Z
.registers 6
const/4 v4, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->e:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
const/4 v0, 0x2
new-array v0, v0, [I
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->e:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;)Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->e:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
iget v2, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->a:I
const/4 v3, 0x0
aget v3, v0, v3
sub-int/2addr v2, v3
invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;I)I
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->e:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
iget v2, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->b:I
aget v0, v0, v4
sub-int v0, v2, v0
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->e:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->c:I
int-to-float v1, v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->e:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I
move-result v2
int-to-float v2, v2
div-float/2addr v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;F)F
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->e:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->d:I
int-to-float v1, v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->e:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I
move-result v2
int-to-float v2, v2
div-float/2addr v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;F)F
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$2;->e:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->b(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;)V
return v4
.end method