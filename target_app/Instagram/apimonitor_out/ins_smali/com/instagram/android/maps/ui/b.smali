.class public final Lcom/instagram/android/maps/ui/b;
.super Landroid/widget/LinearLayout;
.source "IgGeneratePhotoLayout.java"
.field public a:Lcom/instagram/android/maps/ui/d;
.field public b:Lcom/instagram/android/maps/ui/f;
.field private c:I
.field private d:I
.field private e:F
.field private f:Lcom/instagram/android/maps/ui/e;
.field private g:Lcom/instagram/android/maps/ui/g;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/instagram/android/maps/ui/b;->b()V
return-void
.end method
.method private static a(Landroid/widget/LinearLayout;Landroid/view/View;)Z
.registers 3
invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I
move-result v0
if-nez v0, :cond_1a
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
if-nez v0, :cond_1a
invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I
move-result v0
if-nez v0, :cond_1a
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v0
if-nez v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method private b()V
.registers 2
sget v0, Lcom/facebook/as;->iosblue:I
invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/b;->setBackgroundResource(I)V
return-void
.end method
.method public final a()V
.registers 2
new-instance v0, Lcom/instagram/android/maps/ui/c;
invoke-direct {v0, p0}, Lcom/instagram/android/maps/ui/c;-><init>(Lcom/instagram/android/maps/ui/b;)V
invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/b;->setLayoutListener(Lcom/instagram/android/maps/ui/g;)V
return-void
.end method
.method public final a(Landroid/view/ViewGroup;)V
.registers 14
const/4 v2, 0x0
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
move v1, v2
:goto_7
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/b;->getChildCount()I
move-result v0
if-ge v1, v0, :cond_4d
invoke-virtual {p0, v1}, Lcom/instagram/android/maps/ui/b;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/b;->getLeft()I
move-result v3
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I
move-result v4
add-int/2addr v4, v3
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/b;->getTop()I
move-result v3
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I
move-result v6
add-int/2addr v6, v3
move v3, v2
:goto_26
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v7
if-ge v3, v7, :cond_49
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v7
invoke-virtual {v7}, Landroid/view/View;->getLeft()I
move-result v8
add-int/2addr v8, v4
invoke-virtual {v7}, Landroid/view/View;->getTop()I
move-result v9
add-int/2addr v9, v6
new-instance v10, Lcom/instagram/android/maps/ui/h;
invoke-static {v0, v7}, Lcom/instagram/android/maps/ui/b;->a(Landroid/widget/LinearLayout;Landroid/view/View;)Z
move-result v11
invoke-direct {v10, p0, v8, v9, v11}, Lcom/instagram/android/maps/ui/h;-><init>(Lcom/instagram/android/maps/ui/b;IIZ)V
invoke-interface {v5, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v3, v3, 0x1
goto :goto_26
:cond_49
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_4d
invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
move v3, v2
:goto_56
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_e7
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
if-nez v3, :cond_73
iget-object v1, p0, Lcom/instagram/android/maps/ui/b;->a:Lcom/instagram/android/maps/ui/d;
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setReverseAnimationFinishListener(Lcom/instagram/android/maps/ui/d;)V
iget-object v1, p0, Lcom/instagram/android/maps/ui/b;->b:Lcom/instagram/android/maps/ui/f;
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setAnimationStartListener(Lcom/instagram/android/maps/ui/f;)V
iget-object v1, p0, Lcom/instagram/android/maps/ui/b;->f:Lcom/instagram/android/maps/ui/e;
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/e;)V
:cond_73
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getParent()Landroid/view/ViewParent;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/android/maps/ui/h;
new-instance v7, Landroid/widget/FrameLayout$LayoutParams;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getMeasuredWidth()I
move-result v4
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getMeasuredHeight()I
move-result v8
invoke-direct {v7, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
iget v4, v1, Lcom/instagram/android/maps/ui/h;->a:I
iget v8, v1, Lcom/instagram/android/maps/ui/h;->b:I
invoke-virtual {v7, v4, v8, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V
const/16 v4, 0x33
iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
iget v4, p0, Lcom/instagram/android/maps/ui/b;->c:I
invoke-virtual {v0, v4}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setOriginalSize(I)V
iget v4, p0, Lcom/instagram/android/maps/ui/b;->d:I
iget v8, v1, Lcom/instagram/android/maps/ui/h;->a:I
sub-int/2addr v4, v8
invoke-virtual {v0, v4}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setStartX(I)V
iget v4, p0, Lcom/instagram/android/maps/ui/b;->e:F
iget v8, v1, Lcom/instagram/android/maps/ui/h;->b:I
int-to-float v8, v8
sub-float/2addr v4, v8
invoke-virtual {v0, v4}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setStartY(F)V
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a()V
iget-boolean v4, v1, Lcom/instagram/android/maps/ui/h;->c:Z
if-eqz v4, :cond_e5
invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I
move-result v4
:goto_bb
invoke-virtual {p1, v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
new-instance v4, Ljava/lang/StringBuilder;
const-string v0, "View "
invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
add-int/lit8 v0, v3, 0x1
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " x "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, v1, Lcom/instagram/android/maps/ui/h;->a:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " y "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v1, v1, Lcom/instagram/android/maps/ui/h;->b:I
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move v3, v0
goto/16 :goto_56
:cond_e5
move v4, v2
goto :goto_bb
:cond_e7
invoke-virtual {p1}, Landroid/view/ViewGroup;->forceLayout()V
return-void
.end method
.method public final getParentView()Landroid/view/ViewGroup;
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/maps/ui/b;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
return-object v0
.end method
.method protected final onAnimationStart()V
.registers 2
invoke-super {p0}, Landroid/widget/LinearLayout;->onAnimationStart()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/b;->setVisibility(I)V
return-void
.end method
.method protected final onLayout(ZIIII)V
.registers 7
invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V
iget-object v0, p0, Lcom/instagram/android/maps/ui/b;->g:Lcom/instagram/android/maps/ui/g;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/android/maps/ui/b;->g:Lcom/instagram/android/maps/ui/g;
invoke-interface {v0, p0}, Lcom/instagram/android/maps/ui/g;->a(Lcom/instagram/android/maps/ui/b;)V
:cond_c
return-void
.end method
.method protected final onMeasure(II)V
.registers 4
const/4 v0, 0x4
invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/b;->setVisibility(I)V
invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
return-void
.end method
.method public final setAnimationStartListener(Lcom/instagram/android/maps/ui/f;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/b;->b:Lcom/instagram/android/maps/ui/f;
return-void
.end method
.method public final setLayoutListener(Lcom/instagram/android/maps/ui/g;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/b;->g:Lcom/instagram/android/maps/ui/g;
return-void
.end method
.method public final setOriginalSize(I)V
.registers 2
iput p1, p0, Lcom/instagram/android/maps/ui/b;->c:I
return-void
.end method
.method public final setReverAnimationFinishListener(Lcom/instagram/android/maps/ui/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/b;->a:Lcom/instagram/android/maps/ui/d;
return-void
.end method
.method public final setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/e;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/b;->f:Lcom/instagram/android/maps/ui/e;
return-void
.end method
.method public final setStartX(I)V
.registers 2
iput p1, p0, Lcom/instagram/android/maps/ui/b;->d:I
return-void
.end method
.method public final setStartY(F)V
.registers 2
iput p1, p0, Lcom/instagram/android/maps/ui/b;->e:F
return-void
.end method