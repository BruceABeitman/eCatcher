.class public final Lit/sephiroth/android/library/widget/m;
.super Ljava/lang/Object;
.source "AbsHListView.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;
.field private b:I
.field private c:I
.field private d:I
.field private e:I
.field private f:I
.field private final g:I
.field private h:I
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
.registers 3
iput-object p1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/m;->g:I
return-void
.end method
.method private b(II)V
.registers 11
const/4 v1, 0x0
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I
move-result v0
add-int/2addr v0, v2
add-int/lit8 v0, v0, -0x1
iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
iget-object v4, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I
move-result v4
iget-object v5, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v5, v5, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->right:I
sub-int/2addr v4, v5
if-lt p1, v2, :cond_25
if-le p1, v0, :cond_53
:cond_25
const-string v5, "AbsListView"
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "scrollToVisible called with targetPos "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " not visible ["
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, ", "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "]"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_53
if-lt p2, v2, :cond_57
if-le p2, v0, :cond_58
:cond_57
const/4 p2, -0x1
:cond_58
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
sub-int v5, p1, v2
invoke-virtual {v0, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v5
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v0
if-le v0, v4, :cond_a7
sub-int/2addr v0, v4
:goto_6b
if-ge v5, v3, :cond_6f
sub-int v0, v5, v3
:cond_6f
if-nez v0, :cond_72
:goto_71
return-void
:cond_72
if-ltz p2, :cond_94
iget-object v5, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
sub-int v2, p2, v2
invoke-virtual {v5, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v5
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v2
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v6
if-gez v0, :cond_9a
add-int v7, v2, v6
if-le v7, v4, :cond_9a
sub-int v0, v2, v4
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
:goto_94
:cond_94
iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->c(I)V
goto :goto_71
:cond_9a
if-lez v0, :cond_94
sub-int v2, v5, v6
if-ge v2, v3, :cond_94
sub-int v0, v5, v3
invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
move-result v0
goto :goto_94
:cond_a7
move v0, v1
goto :goto_6b
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z
return-void
.end method
.method final a(I)V
.registers 8
const/16 v5, 0xc8
const/4 v4, -0x1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->a()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z
if-eqz v0, :cond_16
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
new-instance v1, Lit/sephiroth/android/library/widget/n;
invoke-direct {v1, p0, p1}, Lit/sephiroth/android/library/widget/n;-><init>(Lit/sephiroth/android/library/widget/m;I)V
iput-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Runnable;
:cond_15
:goto_15
return-void
:cond_16
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I
move-result v0
if-eqz v0, :cond_15
iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v1, v1, Lit/sephiroth/android/library/widget/AbsHListView;->V:I
add-int/2addr v0, v1
add-int/lit8 v0, v0, -0x1
const/4 v2, 0x0
iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getCount()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I
move-result v3
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v2
if-ge v2, v1, :cond_53
sub-int v0, v1, v2
add-int/lit8 v0, v0, 0x1
const/4 v1, 0x2
iput v1, p0, Lit/sephiroth/android/library/widget/m;->b:I
:goto_3f
if-lez v0, :cond_61
div-int v0, v5, v0
iput v0, p0, Lit/sephiroth/android/library/widget/m;->f:I
:goto_45
iput v2, p0, Lit/sephiroth/android/library/widget/m;->c:I
iput v4, p0, Lit/sephiroth/android/library/widget/m;->d:I
iput v4, p0, Lit/sephiroth/android/library/widget/m;->e:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto :goto_15
:cond_53
if-le v2, v0, :cond_5d
sub-int v0, v2, v0
add-int/lit8 v0, v0, 0x1
const/4 v1, 0x1
iput v1, p0, Lit/sephiroth/android/library/widget/m;->b:I
goto :goto_3f
:cond_5d
invoke-direct {p0, v2, v4}, Lit/sephiroth/android/library/widget/m;->b(II)V
goto :goto_15
:cond_61
iput v5, p0, Lit/sephiroth/android/library/widget/m;->f:I
goto :goto_45
.end method
.method final a(II)V
.registers 9
const/16 v5, 0xc8
const/4 v4, -0x1
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/m;->a()V
if-ne p2, v4, :cond_c
invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/m;->a(I)V
:goto_b
:cond_b
return-void
:cond_c
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z
if-eqz v0, :cond_1c
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
new-instance v1, Lit/sephiroth/android/library/widget/o;
invoke-direct {v1, p0, p1, p2}, Lit/sephiroth/android/library/widget/o;-><init>(Lit/sephiroth/android/library/widget/m;II)V
iput-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Runnable;
goto :goto_b
:cond_1c
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I
move-result v0
if-eqz v0, :cond_b
iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v1, v1, Lit/sephiroth/android/library/widget/AbsHListView;->V:I
add-int/2addr v0, v1
add-int/lit8 v0, v0, -0x1
const/4 v2, 0x0
iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getCount()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I
move-result v3
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v2
if-ge v2, v1, :cond_64
sub-int/2addr v0, p2
if-lez v0, :cond_b
sub-int/2addr v1, v2
add-int/lit8 v1, v1, 0x1
add-int/lit8 v0, v0, -0x1
if-ge v0, v1, :cond_5f
const/4 v1, 0x4
iput v1, p0, Lit/sephiroth/android/library/widget/m;->b:I
:goto_4b
if-lez v0, :cond_7f
div-int v0, v5, v0
iput v0, p0, Lit/sephiroth/android/library/widget/m;->f:I
:goto_51
iput v2, p0, Lit/sephiroth/android/library/widget/m;->c:I
iput p2, p0, Lit/sephiroth/android/library/widget/m;->d:I
iput v4, p0, Lit/sephiroth/android/library/widget/m;->e:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto :goto_b
:cond_5f
const/4 v0, 0x2
iput v0, p0, Lit/sephiroth/android/library/widget/m;->b:I
move v0, v1
goto :goto_4b
:cond_64
if-le v2, v0, :cond_7b
sub-int v3, p2, v1
if-lez v3, :cond_b
sub-int v0, v2, v0
add-int/lit8 v1, v0, 0x1
add-int/lit8 v0, v3, -0x1
if-ge v0, v1, :cond_76
const/4 v1, 0x3
iput v1, p0, Lit/sephiroth/android/library/widget/m;->b:I
goto :goto_4b
:cond_76
const/4 v0, 0x1
iput v0, p0, Lit/sephiroth/android/library/widget/m;->b:I
move v0, v1
goto :goto_4b
:cond_7b
invoke-direct {p0, v2, p2}, Lit/sephiroth/android/library/widget/m;->b(II)V
goto :goto_b
:cond_7f
iput v5, p0, Lit/sephiroth/android/library/widget/m;->f:I
goto :goto_51
.end method
.method public final run()V
.registers 9
const/4 v0, 0x0
const/4 v7, 0x1
iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I
move-result v1
iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v2, v2, Lit/sephiroth/android/library/widget/AbsHListView;->V:I
iget v3, p0, Lit/sephiroth/android/library/widget/m;->b:I
packed-switch v3, :pswitch_data_20a
:cond_11
:goto_11
return-void
:pswitch_12
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
add-int/2addr v2, v0
if-ltz v0, :cond_11
iget v3, p0, Lit/sephiroth/android/library/widget/m;->e:I
if-ne v2, v3, :cond_29
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto :goto_11
:cond_29
iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v3
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
sub-int/2addr v1, v0
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I
add-int/lit8 v0, v0, -0x1
if-ge v2, v0, :cond_64
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
iget v4, p0, Lit/sephiroth/android/library/widget/m;->g:I
invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I
move-result v0
:goto_4c
sub-int v1, v3, v1
add-int/2addr v0, v1
iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v3, p0, Lit/sephiroth/android/library/widget/m;->f:I
invoke-virtual {v1, v0, v3, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V
iput v2, p0, Lit/sephiroth/android/library/widget/m;->e:I
iget v0, p0, Lit/sephiroth/android/library/widget/m;->c:I
if-ge v2, v0, :cond_11
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto :goto_11
:cond_64
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
goto :goto_4c
:pswitch_6b
iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I
move-result v1
iget v3, p0, Lit/sephiroth/android/library/widget/m;->d:I
if-eq v2, v3, :cond_11
if-le v1, v7, :cond_11
add-int/2addr v1, v2
iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->an:I
if-ge v1, v3, :cond_11
add-int/lit8 v1, v2, 0x1
iget v2, p0, Lit/sephiroth/android/library/widget/m;->e:I
if-ne v1, v2, :cond_8c
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto :goto_11
:cond_8c
iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v2, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getWidth()I
move-result v3
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v2
iget-object v4, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
iget v5, p0, Lit/sephiroth/android/library/widget/m;->g:I
invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
move-result v4
iget v5, p0, Lit/sephiroth/android/library/widget/m;->d:I
if-ge v1, v5, :cond_c2
iget-object v5, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
add-int/2addr v2, v3
sub-int/2addr v2, v4
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v0
iget v2, p0, Lit/sephiroth/android/library/widget/m;->f:I
invoke-virtual {v5, v0, v2, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V
iput v1, p0, Lit/sephiroth/android/library/widget/m;->e:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto/16 :goto_11
:cond_c2
if-le v2, v4, :cond_11
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
sub-int v1, v2, v4
iget v2, p0, Lit/sephiroth/android/library/widget/m;->f:I
invoke-virtual {v0, v1, v2, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V
goto/16 :goto_11
:pswitch_cf
iget v1, p0, Lit/sephiroth/android/library/widget/m;->e:I
if-ne v2, v1, :cond_dc
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto/16 :goto_11
:cond_dc
iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v1
if-lez v2, :cond_10e
iget v0, p0, Lit/sephiroth/android/library/widget/m;->g:I
iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v0
:goto_f6
iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
sub-int v0, v1, v0
iget v1, p0, Lit/sephiroth/android/library/widget/m;->f:I
invoke-virtual {v3, v0, v1, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V
iput v2, p0, Lit/sephiroth/android/library/widget/m;->e:I
iget v0, p0, Lit/sephiroth/android/library/widget/m;->c:I
if-le v2, v0, :cond_11
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto/16 :goto_11
:cond_10e
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
goto :goto_f6
:pswitch_115
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I
move-result v0
add-int/lit8 v0, v0, -0x2
if-ltz v0, :cond_11
add-int/2addr v2, v0
iget v3, p0, Lit/sephiroth/android/library/widget/m;->e:I
if-ne v2, v3, :cond_12d
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto/16 :goto_11
:cond_12d
iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v3
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
sub-int v4, v1, v0
iget-object v5, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v5, v5, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->left:I
iget v6, p0, Lit/sephiroth/android/library/widget/m;->g:I
invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I
move-result v5
iput v2, p0, Lit/sephiroth/android/library/widget/m;->e:I
iget v6, p0, Lit/sephiroth/android/library/widget/m;->d:I
if-le v2, v6, :cond_162
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
sub-int v1, v4, v5
neg-int v1, v1
iget v2, p0, Lit/sephiroth/android/library/widget/m;->f:I
invoke-virtual {v0, v1, v2, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto/16 :goto_11
:cond_162
sub-int/2addr v1, v5
add-int/2addr v0, v3
if-le v1, v0, :cond_11
iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
sub-int v0, v1, v0
neg-int v0, v0
iget v1, p0, Lit/sephiroth/android/library/widget/m;->f:I
invoke-virtual {v2, v0, v1, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V
goto/16 :goto_11
:pswitch_172
iget v1, p0, Lit/sephiroth/android/library/widget/m;->e:I
if-ne v1, v2, :cond_17f
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto/16 :goto_11
:cond_17f
iput v2, p0, Lit/sephiroth/android/library/widget/m;->e:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I
move-result v1
iget v3, p0, Lit/sephiroth/android/library/widget/m;->c:I
add-int v4, v2, v1
add-int/lit8 v4, v4, -0x1
if-ge v3, v2, :cond_1bf
sub-int v0, v2, v3
add-int/lit8 v0, v0, 0x1
:cond_193
:goto_193
int-to-float v0, v0
int-to-float v1, v1
div-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
const/high16 v1, 0x3f80
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
if-ge v3, v2, :cond_1c4
iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I
move-result v1
neg-int v1, v1
int-to-float v1, v1
mul-float/2addr v1, v0
float-to-int v1, v1
iget v2, p0, Lit/sephiroth/android/library/widget/m;->f:I
int-to-float v2, v2
mul-float/2addr v0, v2
float-to-int v0, v0
iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v2, v1, v0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto/16 :goto_11
:cond_1bf
if-le v3, v4, :cond_193
sub-int v0, v3, v4
goto :goto_193
:cond_1c4
if-le v3, v4, :cond_1e2
iget-object v1, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I
move-result v1
int-to-float v1, v1
mul-float/2addr v1, v0
float-to-int v1, v1
iget v2, p0, Lit/sephiroth/android/library/widget/m;->f:I
int-to-float v2, v2
mul-float/2addr v0, v2
float-to-int v0, v0
iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v2, v1, v0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto/16 :goto_11
:cond_1e2
iget-object v0, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
sub-int v1, v3, v2
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
iget v1, p0, Lit/sephiroth/android/library/widget/m;->h:I
sub-int/2addr v0, v1
iget v1, p0, Lit/sephiroth/android/library/widget/m;->f:I
int-to-float v1, v1
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v2
int-to-float v2, v2
iget-object v3, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I
move-result v3
int-to-float v3, v3
div-float/2addr v2, v3
mul-float/2addr v1, v2
float-to-int v1, v1
iget-object v2, p0, Lit/sephiroth/android/library/widget/m;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v2, v0, v1, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V
goto/16 :goto_11
:pswitch_data_20a
.packed-switch 0x1
:pswitch_12
:pswitch_cf
:pswitch_6b
:pswitch_115
:pswitch_172
.end packed-switch
.end method