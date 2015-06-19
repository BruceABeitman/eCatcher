.class public abstract Lcom/bbm/ui/views/EphemeralPickerPagerV2;
.super Landroid/widget/LinearLayout;
.source "EphemeralPickerPagerV2.java"


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private d:I

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:[Landroid/widget/TextView;

.field private i:Lcom/bbm/j/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/r",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-array v0, v2, [I

    fill-array-data v0, :array_b8

    iput-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_c8

    iput-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->b:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_d8

    iput-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->c:[I

    new-instance v0, Lcom/bbm/util/cr;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->i:Lcom/bbm/j/r;

    new-instance v0, Lcom/bbm/ui/views/s;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/s;-><init>(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)V

    iput-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->j:Lcom/bbm/j/k;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030129

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0599

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a05a0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->f:Landroid/widget/TextView;

    const v0, 0x7f0a05a1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->c:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    :goto_5f
    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_85

    iget-object v2, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->c:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5f

    :cond_85
    const v0, 0x7f0a0598

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/views/p;

    invoke-direct {v1, p0}, Lcom/bbm/ui/views/p;-><init>(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a05a2

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a05a3

    invoke-virtual {p0, v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/bbm/ui/views/q;

    invoke-direct {v2, p0}, Lcom/bbm/ui/views/q;-><init>(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bbm/ui/views/r;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/r;-><init>(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :array_b8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_c8
    .array-data 0x4
        0x7t 0x4t 0x2t 0x7ft
        0x8t 0x4t 0x2t 0x7ft
        0x9t 0x4t 0x2t 0x7ft
        0xat 0x4t 0x2t 0x7ft
        0xbt 0x4t 0x2t 0x7ft
        0xct 0x4t 0x2t 0x7ft
    .end array-data

    :array_d8
    .array-data 0x4
        0x9at 0x5t 0xat 0x7ft
        0x9bt 0x5t 0xat 0x7ft
        0x9ct 0x5t 0xat 0x7ft
        0x9dt 0x5t 0xat 0x7ft
        0x9et 0x5t 0xat 0x7ft
        0x9ft 0x5t 0xat 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)[I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a:[I

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->d:I

    return v0
.end method

.method static synthetic c(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)Lcom/bbm/j/r;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->i:Lcom/bbm/j/r;

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract b()V
.end method

.method protected onMeasure(II)V
    .registers 11

    const v7, 0x7f0b014c

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v0, 0x11

    div-int/lit8 v0, v0, 0x14

    invoke-virtual {p0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method public setHasTimeableContent(Lcom/bbm/j/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->i:Lcom/bbm/j/r;

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->j:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

.method public setValue(I)V
    .registers 7

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    :goto_5
    iget-object v4, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_14

    iget-object v4, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a:[I

    aget v4, v4, v0

    if-ne v4, p1, :cond_11

    move v2, v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_14
    if-gez p1, :cond_1b

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a:[I

    aget p1, v0, v3

    move v2, v3

    :cond_1b
    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->b:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->f:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0004

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p1, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->d:I

    :goto_4b
    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    array-length v0, v0

    if-ge v1, v0, :cond_65

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_65
    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->h:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->a(I)V

    return-void
.end method
