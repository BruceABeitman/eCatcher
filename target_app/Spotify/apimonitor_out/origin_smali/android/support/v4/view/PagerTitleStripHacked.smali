.class public Landroid/support/v4/view/PagerTitleStripHacked;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bn;


# static fields
.field private static final b:Ljava/lang/String;

.field private static final l:[I


# instance fields
.field a:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:F

.field private h:I

.field private i:Z

.field private j:Z

.field private final k:Landroid/support/v4/view/am;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/support/v4/view/PagerTitleStripHacked;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/PagerTitleStripHacked;->b:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/support/v4/view/PagerTitleStripHacked;->l:[I

    return-void

    nop

    :array_12
    .array-data 0x4
        0x34t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
        0x95t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->f:I

    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->g:F

    new-instance v0, Landroid/support/v4/view/am;

    invoke-direct {v0, p0, v4}, Landroid/support/v4/view/am;-><init>(Landroid/support/v4/view/PagerTitleStripHacked;B)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->k:Landroid/support/v4/view/am;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStripHacked;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStripHacked;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStripHacked;->addView(Landroid/view/View;)V

    sget-object v0, Landroid/support/v4/view/PagerTitleStripHacked;->l:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_4c
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_65
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eqz v1, :cond_7e

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    const/high16 v1, -0x6700

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->h:I

    return-void
.end method


# virtual methods
.method final a(IF)V
    .registers 16

    const/high16 v12, 0x3f80

    iget v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->f:I

    if-eq p1, v0, :cond_f

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStripHacked;->a(ILandroid/support/v4/view/ah;)V

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->j:Z

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getPaddingRight()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getPaddingTop()I

    move-result v8

    add-int v0, v6, v4

    add-int v9, v7, v4

    sub-int v0, v5, v0

    sub-int v10, v0, v9

    const/high16 v0, 0x3f00

    add-float/2addr v0, p2

    cmpl-float v11, v0, v12

    if-lez v11, :cond_46

    sub-float/2addr v0, v12

    :cond_46
    sub-int v9, v5, v9

    int-to-float v10, v10

    mul-float/2addr v0, v10

    float-to-int v0, v0

    sub-int v0, v9, v0

    sub-int/2addr v0, v4

    add-int/2addr v2, v0

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v4, v0, v8, v2, v9}, Landroid/widget/TextView;->layout(IIII)V

    iget v4, p0, Landroid/support/v4/view/PagerTitleStripHacked;->h:I

    sub-int/2addr v0, v4

    sub-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    add-int/2addr v1, v0

    iget-object v6, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v4, v0, v8, v1, v6}, Landroid/widget/TextView;->layout(IIII)V

    sub-int v0, v5, v7

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/support/v4/view/PagerTitleStripHacked;->h:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    add-int v2, v0, v3

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {v1, v0, v8, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    iput p2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->g:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->j:Z

    return-void
.end method

.method final a(ILandroid/support/v4/view/ah;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_a5

    invoke-virtual {p2}, Landroid/support/v4/view/ah;->b()I

    move-result v0

    :goto_8
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->i:Z

    if-lez p1, :cond_aa

    if-eqz p2, :cond_aa

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v2}, Landroid/support/v4/view/ah;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_21
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    if-eqz p2, :cond_a8

    invoke-virtual {p2, p1}, Landroid/support/v4/view/ah;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_3a
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v0, :cond_55

    if-eqz p2, :cond_55

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ah;->b(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :cond_55
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v0

    const v3, 0x3f4ccccd

    mul-float/2addr v0, v3

    float-to-int v0, v0

    const/high16 v3, -0x8000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    iput p1, p0, Landroid/support/v4/view/PagerTitleStripHacked;->f:I

    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->j:Z

    if-nez v0, :cond_a2

    iget v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->g:F

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStripHacked;->a(IF)V

    :cond_a2
    iput-boolean v1, p0, Landroid/support/v4/view/PagerTitleStripHacked;->i:Z

    return-void

    :cond_a5
    move v0, v1

    goto/16 :goto_8

    :cond_a8
    move-object v2, v3

    goto :goto_3a

    :cond_aa
    move-object v2, v3

    goto/16 :goto_21
.end method

.method final a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V
    .registers 4

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->k:Landroid/support/v4/view/am;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ah;->b(Landroid/database/DataSetObserver;)V

    :cond_7
    if-eqz p2, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->k:Landroid/support/v4/view/am;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ah;->a(Landroid/database/DataSetObserver;)V

    :cond_e
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_25

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->f:I

    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->g:F

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStripHacked;->a(ILandroid/support/v4/view/ah;)V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->requestLayout()V

    :cond_25
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->k:Landroid/support/v4/view/am;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/br;)Landroid/support/v4/view/br;

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStripHacked;->k:Landroid/support/v4/view/am;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/bq;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->a:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStripHacked;->a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStripHacked;->a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/br;)Landroid/support/v4/view/br;

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/bq;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStripHacked;->a:Landroid/support/v4/view/ViewPager;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStripHacked;->a(IF)V

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12

    const/high16 v8, 0x4000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eq v0, v8, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must measure with an exact width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_27
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStripHacked;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v5, v3, v4

    int-to-float v6, v2

    const v7, 0x3f4ccccd

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, -0x8000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStripHacked;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStripHacked;->e:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    if-ne v1, v8, :cond_57

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/PagerTitleStripHacked;->setMeasuredDimension(II)V

    :goto_56
    return-void

    :cond_57
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStripHacked;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/view/PagerTitleStripHacked;->setMeasuredDimension(II)V

    goto :goto_56
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStripHacked;->i:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_7
    return-void
.end method
