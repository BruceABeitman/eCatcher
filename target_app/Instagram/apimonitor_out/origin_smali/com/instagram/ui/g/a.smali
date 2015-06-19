.class public final Lcom/instagram/ui/g/a;
.super Ljava/lang/Object;
.source "TooltipDelegate.java"

# interfaces
.implements Lcom/instagram/ui/f/f;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Landroid/util/DisplayMetrics;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;

.field private f:I

.field private g:Landroid/view/View;

.field private h:I

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/util/DisplayMetrics;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/ui/g/a;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/instagram/ui/g/a;->b:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private a(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/ui/g/a;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_87

    const/4 v0, 0x1

    move v1, v0

    :goto_7
    iget v0, p0, Lcom/instagram/ui/g/a;->h:I

    if-eq p1, v0, :cond_86

    sget v0, Lcom/instagram/ui/f/g;->a:I

    if-ne p1, v0, :cond_8e

    iget-object v0, p0, Lcom/instagram/ui/g/a;->a:Landroid/view/LayoutInflater;

    sget v2, Lcom/facebook/aw;->tooltip_down:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    sget v2, Lcom/facebook/av;->bottom_carrot:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/ui/g/a;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/instagram/ui/g/a;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_8b

    sget v0, Lcom/facebook/au;->carrot_down_bg:I

    :goto_2b
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    sget v2, Lcom/facebook/av;->bubble_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_b6

    sget v0, Lcom/facebook/au;->tag_bubble_bg:I

    :goto_3a
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/ui/g/a;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    sget v1, Lcom/facebook/av;->dismiss:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    sget v3, Lcom/facebook/av;->dismiss_spacer:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/instagram/ui/g/a;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v3, p0, Lcom/instagram/ui/g/a;->f:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/instagram/ui/g/a;->f:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/instagram/ui/g/a;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_75

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-static {v2, v0}, Lcom/instagram/common/u/f;->c(Landroid/view/View;I)V

    :cond_75
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    sget v1, Lcom/facebook/av;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/ui/g/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p1, p0, Lcom/instagram/ui/g/a;->h:I

    :cond_86
    return-void

    :cond_87
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_7

    :cond_8b
    sget v0, Lcom/facebook/au;->tag_carrot_bottom:I

    goto :goto_2b

    :cond_8e
    sget v0, Lcom/instagram/ui/f/g;->b:I

    if-ne p1, v0, :cond_2e

    iget-object v0, p0, Lcom/instagram/ui/g/a;->a:Landroid/view/LayoutInflater;

    sget v2, Lcom/facebook/aw;->tooltip_up:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    sget v2, Lcom/facebook/av;->top_carrot:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/ui/g/a;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/instagram/ui/g/a;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_b3

    sget v0, Lcom/facebook/au;->carrot_up_bg:I

    :goto_ae
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2e

    :cond_b3
    sget v0, Lcom/facebook/au;->tag_carrot_top:I

    goto :goto_ae

    :cond_b6
    sget v0, Lcom/facebook/au;->tag_bubble:I

    goto :goto_3a
.end method

.method private b(I)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/ui/g/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-gez p1, :cond_19

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_13
    iget-object v1, p0, Lcom/instagram/ui/g/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_19
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_13
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "view already created"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method


# virtual methods
.method public final a(II)Landroid/view/View;
    .registers 4

    iget v0, p0, Lcom/instagram/ui/g/a;->h:I

    if-eq p1, v0, :cond_7

    invoke-direct {p0, p1}, Lcom/instagram/ui/g/a;->a(I)V

    :cond_7
    invoke-direct {p0, p2}, Lcom/instagram/ui/g/a;->b(I)V

    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/ui/g/a;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/ui/g/a;->d()V

    iput-object p1, p0, Lcom/instagram/ui/g/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final a()[I
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    if-nez v0, :cond_a

    sget v0, Lcom/instagram/ui/f/g;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/ui/g/a;->a(I)V

    :cond_a
    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public final b()I
    .registers 5

    const/high16 v3, 0x4000

    iget-object v0, p0, Lcom/instagram/ui/g/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v1, p0, Lcom/instagram/ui/g/a;->b:Landroid/util/DisplayMetrics;

    const/16 v2, 0x1a

    invoke-static {v1, v2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/instagram/ui/g/a;->b:Landroid/util/DisplayMetrics;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/ui/g/a;->d()V

    iput-object p1, p0, Lcom/instagram/ui/g/a;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final c()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/ui/g/a;->d()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/instagram/ui/g/a;->f:I

    return-void
.end method
