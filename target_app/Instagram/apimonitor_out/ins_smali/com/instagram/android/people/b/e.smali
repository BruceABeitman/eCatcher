.class final Lcom/instagram/android/people/b/e;
.super Ljava/lang/Object;
.source "PeopleTagFragment.java"
.implements Lcom/instagram/common/ui/b/a;
.field final synthetic a:Lcom/instagram/android/people/b/a;
.method constructor <init>(Lcom/instagram/android/people/b/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/b/e;->a:Lcom/instagram/android/people/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 7
const/high16 v4, 0x4000
iget-object v0, p0, Lcom/instagram/android/people/b/e;->a:Lcom/instagram/android/people/b/a;
invoke-virtual {v0}, Lcom/instagram/android/people/b/a;->o()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
iget-object v1, p0, Lcom/instagram/android/people/b/e;->a:Lcom/instagram/android/people/b/a;
invoke-virtual {v1}, Lcom/instagram/android/people/b/a;->o()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/at;->action_bar_height:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
iget-object v3, p0, Lcom/instagram/android/people/b/e;->a:Lcom/instagram/android/people/b/a;
invoke-virtual {v3}, Lcom/instagram/android/people/b/a;->l()Landroid/support/v4/app/k;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v3
invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
iget v2, v2, Landroid/graphics/Rect;->top:I
sub-int/2addr v0, v1
sub-int/2addr v0, v2
invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
iget-object v1, p0, Lcom/instagram/android/people/b/e;->a:Lcom/instagram/android/people/b/a;
invoke-virtual {v1}, Lcom/instagram/android/people/b/a;->o()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
iget-object v2, p0, Lcom/instagram/android/people/b/e;->a:Lcom/instagram/android/people/b/a;
invoke-static {v2}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;)Lcom/instagram/android/people/widget/PhotoScrollView;
move-result-object v2
sget v3, Lcom/facebook/av;->people_tag_landscape_photo_container:I
invoke-virtual {v2, v3}, Lcom/instagram/android/people/widget/PhotoScrollView;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V
return-void
.end method