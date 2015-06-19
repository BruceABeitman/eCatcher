.class final Lcom/spotify/android/paste/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/android/paste/widget/b;


# instance fields
.field final synthetic a:Lcom/spotify/android/paste/widget/CardView;


# direct methods
.method private constructor <init>(Lcom/spotify/android/paste/widget/CardView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/android/paste/widget/CardView;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/android/paste/widget/a;-><init>(Lcom/spotify/android/paste/widget/CardView;)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 10

    const/high16 v6, -0x8000

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/CardView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/spotify/android/paste/widget/CardView;->a(II)I

    move-result v0

    iget-object v1, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/CardView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/CardView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Lcom/spotify/android/paste/widget/CardView;->a(II)I

    move-result v1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-nez v2, :cond_39

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Horizontal CardView does not support UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/spotify/android/paste/widget/CardView;->b(I)I

    move-result v1

    invoke-static {v2}, Lcom/spotify/android/paste/widget/CardView;->b(I)I

    move-result v3

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->a(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/widget/ImageView;->measure(II)V

    iget-object v1, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v1}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v1}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->measure(II)V

    :cond_6b
    iget-object v1, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v1}, Lcom/spotify/android/paste/widget/CardView;->h(Lcom/spotify/android/paste/widget/CardView;)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_c8

    iget-object v0, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v0}, Lcom/spotify/android/paste/widget/CardView;->h(Lcom/spotify/android/paste/widget/CardView;)F

    move-result v0

    int-to-float v1, v2

    mul-float/2addr v0, v1

    int-to-float v1, v2

    sub-float/2addr v0, v1

    float-to-int v1, v0

    add-int v0, v2, v1

    iget-object v2, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/CardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/CardView;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    :goto_91
    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v2}, Lcom/spotify/android/paste/widget/CardView;->d(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v2}, Lcom/spotify/android/paste/widget/CardView;->e(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v2}, Lcom/spotify/android/paste/widget/CardView;->f(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->measure(II)V

    iget-object v1, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;II)V

    return-void

    :cond_c8
    iget-object v1, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v1}, Lcom/spotify/android/paste/widget/CardView;->c(Lcom/spotify/android/paste/widget/CardView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_91
.end method

.method public final a(IIII)V
    .registers 14

    iget-object v0, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/CardView;->getPaddingTop()I

    move-result v1

    sub-int v2, p3, p1

    iget-object v3, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-virtual {v3}, Lcom/spotify/android/paste/widget/CardView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, p4, p2

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-virtual {v4}, Lcom/spotify/android/paste/widget/CardView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->a(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v5}, Lcom/spotify/android/paste/widget/CardView;->a(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v6}, Lcom/spotify/android/paste/widget/CardView;->a(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->a(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v5}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v6}, Lcom/spotify/android/paste/widget/CardView;->g(Lcom/spotify/android/paste/widget/CardView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v6}, Lcom/spotify/android/paste/widget/CardView;->b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v3, v6

    iget-object v7, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v7}, Lcom/spotify/android/paste/widget/CardView;->g(Lcom/spotify/android/paste/widget/CardView;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v7}, Lcom/spotify/android/paste/widget/CardView;->g(Lcom/spotify/android/paste/widget/CardView;)I

    move-result v7

    sub-int v7, v0, v7

    iget-object v8, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v8}, Lcom/spotify/android/paste/widget/CardView;->g(Lcom/spotify/android/paste/widget/CardView;)I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_8f
    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->c(Lcom/spotify/android/paste/widget/CardView;)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->c(Lcom/spotify/android/paste/widget/CardView;)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->c(Lcom/spotify/android/paste/widget/CardView;)I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->c(Lcom/spotify/android/paste/widget/CardView;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->d(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v5}, Lcom/spotify/android/paste/widget/CardView;->d(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->d(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->e(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v5}, Lcom/spotify/android/paste/widget/CardView;->e(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v1, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v1}, Lcom/spotify/android/paste/widget/CardView;->f(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/spotify/android/paste/widget/a;->a:Lcom/spotify/android/paste/widget/CardView;

    invoke-static {v4}, Lcom/spotify/android/paste/widget/CardView;->f(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method
