.class public Lcom/bbm/ui/c/cd;
.super Landroid/app/Fragment;
.source "DiscoverChannelsFragment.java"

# interfaces
.implements Lcom/bbm/ui/ds;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Lcom/bbm/ui/ds",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bbm/d;

.field private final b:Lcom/bbm/d/a;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Lcom/bbm/j/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/ev;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/widget/GridLayout;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/bbm/j/k;

.field private final j:Lcom/bbm/ui/views/a;

.field private k:Lcom/bbm/util/b/a;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private final n:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/cd;->a:Lcom/bbm/d;

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iput-object v0, p0, Lcom/bbm/ui/c/cd;->b:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/ui/views/a;

    invoke-direct {v0}, Lcom/bbm/ui/views/a;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/c/cd;->j:Lcom/bbm/ui/views/a;

    new-instance v0, Lcom/bbm/ui/c/ce;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ce;-><init>(Lcom/bbm/ui/c/cd;)V

    iput-object v0, p0, Lcom/bbm/ui/c/cd;->n:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/cd;)Landroid/widget/GridLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->g:Landroid/widget/GridLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/c/cd;Lcom/bbm/j/w;)Lcom/bbm/j/w;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/cd;->e:Lcom/bbm/j/w;

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/bbm/d/ec;)V
    .registers 8

    const v0, 0x7f0a0228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0362

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v2, p2, Lcom/bbm/d/ec;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    :cond_27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/bbm/ui/c/cd;->k:Lcom/bbm/util/b/a;

    iget-object v4, p2, Lcom/bbm/d/ec;->o:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/bbm/util/b/a;->a(Ljava/lang/Object;Landroid/widget/ImageView;II)V

    iget-object v1, p2, Lcom/bbm/d/ec;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setTag(Ljava/lang/Object;)V

    :cond_3f
    const v0, 0x7f0a0365

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iget-boolean v1, p2, Lcom/bbm/d/ec;->b:Z

    if-eqz v1, :cond_51

    const/4 v1, 0x0

    :goto_4d
    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    return-void

    :cond_51
    const/16 v1, 0x8

    goto :goto_4d
.end method

.method static synthetic b(Lcom/bbm/ui/c/cd;)Lcom/bbm/j/w;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->e:Lcom/bbm/j/w;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/c/cd;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/c/cd;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->b:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/c/cd;)V
    .registers 15

    const/4 v13, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->e:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/16 v1, 0xf

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v4, v5

    move v2, v5

    :goto_17
    if-ge v4, v6, :cond_14c

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/ev;

    iget-object v7, p0, Lcom/bbm/ui/c/cd;->g:Landroid/widget/GridLayout;

    invoke-virtual {v7, v4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/bbm/ui/c/cd;->a:Lcom/bbm/d;

    iget-object v8, v8, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v1, v1, Lcom/bbm/d/ev;->a:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v8

    iget-object v1, v8, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v9, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v9, :cond_13e

    if-nez v7, :cond_13e

    iget-object v1, p0, Lcom/bbm/ui/c/cd;->g:Landroid/widget/GridLayout;

    iget-object v2, p0, Lcom/bbm/ui/c/cd;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v7, 0x7f0300bf

    invoke-virtual {v2, v7, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bbm/ui/c/cd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Lcom/bbm/ui/c/cd;->g:Landroid/widget/GridLayout;

    invoke-virtual {v9}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcom/bbm/ui/c/cd;->g:Landroid/widget/GridLayout;

    invoke-virtual {v10}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int v9, v1, v9

    div-int/lit8 v1, v9, 0x3

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x3

    new-instance v10, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v10}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    div-int/lit8 v11, v4, 0x3

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    mul-int/lit8 v11, v11, 0x4

    rem-int/lit8 v12, v4, 0x6

    packed-switch v12, :pswitch_data_160

    :goto_79
    iput v1, v10, Landroid/widget/GridLayout$LayoutParams;->width:I

    iput v2, v10, Landroid/widget/GridLayout$LayoutParams;->height:I

    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v1, 0x7f0a0228

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const v1, 0x7f0a0362

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v5}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    const v1, 0x7f0a011b

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/bbm/ui/c/cd;->d:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v1, p0, Lcom/bbm/ui/c/cd;->g:Landroid/widget/GridLayout;

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v1

    if-lt v1, v4, :cond_bf

    iget-object v1, p0, Lcom/bbm/ui/c/cd;->g:Landroid/widget/GridLayout;

    invoke-virtual {v1, v7, v4}, Landroid/widget/GridLayout;->addView(Landroid/view/View;I)V

    :cond_bf
    iget-object v1, p0, Lcom/bbm/ui/c/cd;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v7, v8}, Lcom/bbm/ui/c/cd;->a(Landroid/view/View;Lcom/bbm/d/ec;)V

    move v1, v3

    :goto_c8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto/16 :goto_17

    :pswitch_ce
    invoke-static {v11, v13}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-static {v5, v13}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    sub-int v1, v9, v1

    move v2, v1

    goto :goto_79

    :pswitch_de
    invoke-static {v11, v3}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-static {v13, v3}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    sub-int v2, v9, v1

    div-int/lit8 v2, v2, 0x2

    goto :goto_79

    :pswitch_ef
    add-int/lit8 v2, v11, 0x1

    invoke-static {v2, v3}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-static {v13, v3}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    sub-int v2, v9, v1

    div-int/lit8 v2, v2, 0x2

    goto/16 :goto_79

    :pswitch_103
    add-int/lit8 v2, v11, 0x2

    invoke-static {v2, v3}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-static {v5, v3}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    sub-int v2, v9, v1

    div-int/lit8 v2, v2, 0x2

    goto/16 :goto_79

    :pswitch_117
    add-int/lit8 v2, v11, 0x3

    invoke-static {v2, v3}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-static {v5, v3}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    sub-int v2, v9, v1

    div-int/lit8 v2, v2, 0x2

    goto/16 :goto_79

    :pswitch_12b
    add-int/lit8 v2, v11, 0x2

    invoke-static {v2, v13}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-static {v3, v13}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    sub-int v1, v9, v1

    move v2, v1

    goto/16 :goto_79

    :cond_13e
    iget-object v1, v8, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v9, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v9, :cond_15c

    if-eqz v7, :cond_15c

    invoke-direct {p0, v7, v8}, Lcom/bbm/ui/c/cd;->a(Landroid/view/View;Lcom/bbm/d/ec;)V

    move v1, v3

    goto/16 :goto_c8

    :cond_14c
    if-eqz v2, :cond_15b

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->j:Lcom/bbm/ui/views/a;

    iget-object v1, v0, Lcom/bbm/ui/views/a;->l:Lcom/bbm/j/k;

    iget-boolean v1, v1, Lcom/bbm/j/k;->k:Z

    if-nez v1, :cond_15b

    iget-object v0, v0, Lcom/bbm/ui/views/a;->l:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    :cond_15b
    return-void

    :cond_15c
    move v1, v2

    goto/16 :goto_c8

    nop

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_de
        :pswitch_ef
        :pswitch_103
        :pswitch_117
        :pswitch_12b
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4

    const-string v0, "Disaplay_profile onItemClicked"

    const-class v1, Lcom/bbm/ui/c/cd;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    const/4 v3, 0x0

    const-string v0, "onCreateView"

    const-class v1, Lcom/bbm/ui/c/cd;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->m:Landroid/view/View;

    if-nez v0, :cond_af

    const v0, 0x7f030088

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/cd;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/cd;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbm/ui/c/cd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/c/cd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/bbm/ui/c/cd;->d:I

    const v0, 0x7f03012b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->m:Landroid/view/View;

    const v2, 0x7f0a038c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbm/ui/c/cd;->h:Landroid/widget/ListView;

    const v0, 0x7f0a039c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/bbm/ui/c/cd;->g:Landroid/widget/GridLayout;

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/c/cd;->n:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->m:Landroid/view/View;

    const v1, 0x7f0a038d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/cd;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bbm/ui/c/cd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/bbm/util/b/a;

    invoke-virtual {p0}, Lcom/bbm/ui/c/cd;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    invoke-direct {v1, v2, v0}, Lcom/bbm/util/b/a;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/bbm/ui/c/cd;->k:Lcom/bbm/util/b/a;

    new-instance v0, Lcom/bbm/util/b/f;

    invoke-direct {v0}, Lcom/bbm/util/b/f;-><init>()V

    iget-object v1, p0, Lcom/bbm/ui/c/cd;->k:Lcom/bbm/util/b/a;

    invoke-virtual {v1, v0}, Lcom/bbm/util/b/a;->a(Lcom/bbm/util/b/f;)V

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->k:Lcom/bbm/util/b/a;

    iget-object v1, p0, Lcom/bbm/ui/c/cd;->a:Lcom/bbm/d;

    iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lcom/bbm/d/a;->m()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/bbm/util/b/i;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->k:Lcom/bbm/util/b/a;

    iput-boolean v3, v0, Lcom/bbm/util/b/i;->j:Z

    new-instance v0, Lcom/bbm/ui/c/cf;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/cf;-><init>(Lcom/bbm/ui/c/cd;)V

    iput-object v0, p0, Lcom/bbm/ui/c/cd;->f:Landroid/view/View$OnClickListener;

    :cond_af
    new-instance v0, Lcom/bbm/ui/c/cg;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/cg;-><init>(Lcom/bbm/ui/c/cd;)V

    iput-object v0, p0, Lcom/bbm/ui/c/cd;->i:Lcom/bbm/j/k;

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->j:Lcom/bbm/ui/views/a;

    invoke-virtual {p0}, Lcom/bbm/ui/c/cd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/cd;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bbm/ui/c/cd;->h:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/bbm/ui/c/cd;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bbm/ui/c/cd;->k:Lcom/bbm/util/b/a;

    iget-object v6, p0, Lcom/bbm/ui/c/cd;->g:Landroid/widget/GridLayout;

    iget-object v7, v0, Lcom/bbm/ui/views/a;->e:Lcom/bbm/ui/ef;

    if-nez v7, :cond_fc

    iput-object v2, v0, Lcom/bbm/ui/views/a;->c:Landroid/content/Context;

    iput-object v1, v0, Lcom/bbm/ui/views/a;->d:Landroid/app/Activity;

    iput-object v4, v0, Lcom/bbm/ui/views/a;->f:Landroid/view/View;

    new-instance v1, Lcom/bbm/ui/views/d;

    invoke-direct {v1, v0}, Lcom/bbm/ui/views/d;-><init>(Lcom/bbm/ui/views/a;)V

    iput-object v1, v0, Lcom/bbm/ui/views/a;->h:Landroid/view/View$OnClickListener;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/bbm/ui/views/a;->i:Ljava/util/HashMap;

    iput-object v3, v0, Lcom/bbm/ui/views/a;->g:Landroid/widget/ListView;

    iget-object v1, v0, Lcom/bbm/ui/views/a;->b:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lcom/bbm/d/a;->J()Lcom/bbm/j/w;

    move-result-object v1

    iput-object v1, v0, Lcom/bbm/ui/views/a;->a:Lcom/bbm/j/w;

    iput-object v5, v0, Lcom/bbm/ui/views/a;->k:Lcom/bbm/util/b/g;

    iput-object v6, v0, Lcom/bbm/ui/views/a;->j:Landroid/widget/GridLayout;

    new-instance v1, Lcom/bbm/ui/views/c;

    iget-object v2, v0, Lcom/bbm/ui/views/a;->a:Lcom/bbm/j/w;

    invoke-direct {v1, v0, v2}, Lcom/bbm/ui/views/c;-><init>(Lcom/bbm/ui/views/a;Lcom/bbm/j/r;)V

    iput-object v1, v0, Lcom/bbm/ui/views/a;->e:Lcom/bbm/ui/ef;

    iget-object v1, v0, Lcom/bbm/ui/views/a;->g:Landroid/widget/ListView;

    iget-object v0, v0, Lcom/bbm/ui/views/a;->e:Lcom/bbm/ui/ef;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_fc
    iget-object v0, p0, Lcom/bbm/ui/c/cd;->m:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .registers 3

    const-string v0, "onDetach"

    const-class v1, Lcom/bbm/ui/c/cd;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->j:Lcom/bbm/ui/views/a;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->j:Lcom/bbm/ui/views/a;

    iget-object v0, v0, Lcom/bbm/ui/views/a;->j:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    :cond_15
    iget-object v0, p0, Lcom/bbm/ui/c/cd;->h:Landroid/widget/ListView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->h:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1f
    const-string v0, "onDetatch"

    const-class v1, Lcom/bbm/ui/c/cd;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    const-string v0, "onPause"

    const-class v1, Lcom/bbm/ui/c/cd;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->i:Lcom/bbm/j/k;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->i:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    :cond_13
    iget-object v0, p0, Lcom/bbm/ui/c/cd;->j:Lcom/bbm/ui/views/a;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->j:Lcom/bbm/ui/views/a;

    iget-object v1, v0, Lcom/bbm/ui/views/a;->e:Lcom/bbm/ui/ef;

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/bbm/ui/views/a;->e:Lcom/bbm/ui/ef;

    invoke-virtual {v1}, Lcom/bbm/ui/ef;->b()V

    :cond_22
    iget-object v1, v0, Lcom/bbm/ui/views/a;->l:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->e()V

    iget-object v1, v0, Lcom/bbm/ui/views/a;->i:Ljava/util/HashMap;

    if-eqz v1, :cond_30

    iget-object v0, v0, Lcom/bbm/ui/views/a;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_30
    iget-object v0, p0, Lcom/bbm/ui/c/cd;->k:Lcom/bbm/util/b/a;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->k:Lcom/bbm/util/b/a;

    invoke-virtual {v0}, Lcom/bbm/util/b/a;->c()V

    :cond_39
    const-string v0, "onPause"

    const-class v1, Lcom/bbm/ui/c/cd;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public onResume()V
    .registers 4

    const-string v0, "onResume"

    const-class v1, Lcom/bbm/ui/c/cd;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->a:Lcom/bbm/d;

    iget-object v1, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bbm/util/ac;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bbm/d/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :cond_32
    new-instance v2, Lcom/bbm/d/co;

    invoke-direct {v2}, Lcom/bbm/d/co;-><init>()V

    invoke-virtual {v2, v0}, Lcom/bbm/d/co;->b(Ljava/lang/String;)Lcom/bbm/d/co;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/ui/c/cd;->i:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    :cond_43
    const-string v0, "onResume"

    const-class v1, Lcom/bbm/ui/c/cd;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
