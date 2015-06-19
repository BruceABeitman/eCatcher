.class public final Lit/sephiroth/android/library/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:I

.field private h:I


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final run()V
    .registers 9

    const/4 v0, 0x0

    const/4 v7, 0x1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v2, v2, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    iget v3, p0, Lit/sephiroth/android/library/widget/i;->b:I

    packed-switch v3, :pswitch_data_20a

    :cond_11
    :goto_11
    return-void

    :pswitch_12
    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v2, v0

    if-ltz v0, :cond_11

    iget v3, p0, Lit/sephiroth/android/library/widget/i;->e:I

    if-ne v2, v3, :cond_29

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_11

    :cond_29
    iget-object v3, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_64

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lit/sephiroth/android/library/widget/i;->g:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_4c
    sub-int v1, v3, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v3, p0, Lit/sephiroth/android/library/widget/i;->f:I

    invoke-virtual {v1, v0, v3, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    iput v2, p0, Lit/sephiroth/android/library/widget/i;->e:I

    iget v0, p0, Lit/sephiroth/android/library/widget/i;->c:I

    if-ge v2, v0, :cond_11

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_11

    :cond_64
    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_4c

    :pswitch_6b
    iget-object v1, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    iget v3, p0, Lit/sephiroth/android/library/widget/i;->d:I

    if-eq v2, v3, :cond_11

    if-le v1, v7, :cond_11

    add-int/2addr v1, v2

    iget-object v3, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-ge v1, v3, :cond_11

    add-int/lit8 v1, v2, 0x1

    iget v2, p0, Lit/sephiroth/android/library/widget/i;->e:I

    if-ne v1, v2, :cond_8c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto :goto_11

    :cond_8c
    iget-object v2, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v2, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lit/sephiroth/android/library/widget/i;->g:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lit/sephiroth/android/library/widget/i;->d:I

    if-ge v1, v5, :cond_c2

    iget-object v5, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lit/sephiroth/android/library/widget/i;->f:I

    invoke-virtual {v5, v0, v2, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    iput v1, p0, Lit/sephiroth/android/library/widget/i;->e:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_11

    :cond_c2
    if-le v2, v4, :cond_11

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    sub-int v1, v2, v4

    iget v2, p0, Lit/sephiroth/android/library/widget/i;->f:I

    invoke-virtual {v0, v1, v2, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    goto/16 :goto_11

    :pswitch_cf
    iget v1, p0, Lit/sephiroth/android/library/widget/i;->e:I

    if-ne v2, v1, :cond_dc

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_11

    :cond_dc
    iget-object v1, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lez v2, :cond_10e

    iget v0, p0, Lit/sephiroth/android/library/widget/i;->g:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_f6
    iget-object v3, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    sub-int v0, v1, v0

    iget v1, p0, Lit/sephiroth/android/library/widget/i;->f:I

    invoke-virtual {v3, v0, v1, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    iput v2, p0, Lit/sephiroth/android/library/widget/i;->e:I

    iget v0, p0, Lit/sephiroth/android/library/widget/i;->c:I

    if-le v2, v0, :cond_11

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_11

    :cond_10e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_f6

    :pswitch_115
    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_11

    add-int/2addr v2, v0

    iget v3, p0, Lit/sephiroth/android/library/widget/i;->e:I

    if-ne v2, v3, :cond_12d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_11

    :cond_12d
    iget-object v3, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v1, v0

    iget-object v5, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v5, v5, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lit/sephiroth/android/library/widget/i;->g:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v2, p0, Lit/sephiroth/android/library/widget/i;->e:I

    iget v6, p0, Lit/sephiroth/android/library/widget/i;->d:I

    if-le v2, v6, :cond_162

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    sub-int v1, v4, v5

    neg-int v1, v1

    iget v2, p0, Lit/sephiroth/android/library/widget/i;->f:I

    invoke-virtual {v0, v1, v2, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_11

    :cond_162
    sub-int/2addr v1, v5

    add-int/2addr v0, v3

    if-le v1, v0, :cond_11

    iget-object v2, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    sub-int v0, v1, v0

    neg-int v0, v0

    iget v1, p0, Lit/sephiroth/android/library/widget/i;->f:I

    invoke-virtual {v2, v0, v1, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    goto/16 :goto_11

    :pswitch_172
    iget v1, p0, Lit/sephiroth/android/library/widget/i;->e:I

    if-ne v1, v2, :cond_17f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_11

    :cond_17f
    iput v2, p0, Lit/sephiroth/android/library/widget/i;->e:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    iget v3, p0, Lit/sephiroth/android/library/widget/i;->c:I

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

    iget-object v1, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lit/sephiroth/android/library/widget/i;->f:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v2, v1, v0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_11

    :cond_1bf
    if-le v3, v4, :cond_193

    sub-int v0, v3, v4

    goto :goto_193

    :cond_1c4
    if-le v3, v4, :cond_1e2

    iget-object v1, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lit/sephiroth/android/library/widget/i;->f:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v2, v1, v0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_11

    :cond_1e2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    sub-int v1, v3, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/i;->h:I

    sub-int/2addr v0, v1

    iget v1, p0, Lit/sephiroth/android/library/widget/i;->f:I

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/AbsHListView;

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
