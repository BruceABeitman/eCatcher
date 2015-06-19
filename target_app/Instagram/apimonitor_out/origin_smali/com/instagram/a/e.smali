.class public final Lcom/instagram/a/e;
.super Ljava/lang/Object;
.source "ActionBarService.java"

# interfaces
.implements Lcom/instagram/a/a;


# static fields
.field private static final a:Lcom/instagram/a/e;


# instance fields
.field private b:Lcom/instagram/a/b;

.field private c:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private d:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/a/e;

    invoke-direct {v0}, Lcom/instagram/a/e;-><init>()V

    sput-object v0, Lcom/instagram/a/e;->a:Lcom/instagram/a/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .registers 8

    const/4 v4, 0x3

    sget v0, Lcom/facebook/au;->action_bar_blue_button_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_2c

    const/4 v0, -0x2

    :goto_d
    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/a/c;

    iget-object v2, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/instagram/a/d;->b:Lcom/instagram/a/d;

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2c
    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/facebook/at;->action_bar_button_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_d
.end method

.method public static b()Lcom/instagram/a/e;
    .registers 1

    sget-object v0, Lcom/instagram/a/e;->a:Lcom/instagram/a/e;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/au;->dark_action_bar_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    invoke-virtual {p0, p1}, Lcom/instagram/a/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v1, Lcom/facebook/au;->nav_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Lcom/instagram/a/c;

    iget-object v2, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/instagram/a/d;->a:Lcom/instagram/a/d;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static d()V
    .registers 1

    const-string v0, "ActionBarService.action_bar_updated"

    invoke-static {v0}, Lcom/instagram/common/u/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private e(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 5

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instagram/a/e;->a(Landroid/view/View;Z)V

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0, v2}, Lcom/instagram/a/e;->a(Landroid/view/View;Z)V

    return-object v0
.end method

.method public final a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 4

    invoke-virtual {p1}, Lcom/instagram/a/j;->a()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/instagram/a/e;->e(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/instagram/a/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v1, Lcom/facebook/au;->check:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, p2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v1, Lcom/facebook/au;->action_bar_light_blue_button_background:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setBackgroundResource(I)V

    invoke-virtual {p0, v2}, Lcom/instagram/a/e;->c(Z)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method

.method public final a()Lcom/instagram/ui/widget/searchedittext/SearchEditText;
    .registers 5

    const/16 v2, 0x80

    const/4 v3, 0x0

    sget v0, Lcom/facebook/aw;->action_bar_title_search:I

    invoke-virtual {p0, v0}, Lcom/instagram/a/e;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setClearButtonAlpha(I)V

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4f

    const/16 v1, 0x66

    :goto_2b
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v1, Lcom/instagram/a/i;

    invoke-direct {v1, p0}, Lcom/instagram/a/i;-><init>(Lcom/instagram/a/e;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    sget v2, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/au;->action_bar_blue_button_background:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    sget v2, Lcom/facebook/av;->action_bar_textview_custom_title_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/instagram/common/u/f;->d(Landroid/view/View;I)V

    return-object v0

    :cond_4f
    const/16 v1, 0x33

    goto :goto_2b
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/a/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IIILcom/instagram/a/d;)V
    .registers 11

    const/4 v3, 0x0

    move v2, v3

    :goto_2
    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_81

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_4e

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/a/c;

    if-eqz v0, :cond_68

    new-instance v4, Lcom/instagram/a/c;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/instagram/a/c;

    invoke-virtual {v0}, Lcom/instagram/a/c;->a()I

    move-result v0

    invoke-direct {v4, v5, p4, v0}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4e
    instance-of v0, v1, Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz v0, :cond_5d

    move-object v0, v1

    check-cast v0, Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-static {p1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2c

    :cond_5d
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2c

    :cond_68
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10100a7

    aput v5, v4, v3

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4a

    :cond_81
    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v1, 0x3

    const/16 v6, 0x8

    iput-object p1, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    sget v2, Lcom/facebook/au;->action_bar_background:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    new-instance v0, Lcom/instagram/a/f;

    invoke-direct {v0, p0}, Lcom/instagram/a/f;-><init>(Lcom/instagram/a/e;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lcom/instagram/a/c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/instagram/a/d;->b:Lcom/instagram/a/d;

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v2, Lcom/facebook/au;->nav_arrow_back:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Lcom/instagram/a/g;

    invoke-direct {v2, p0}, Lcom/instagram/a/g;-><init>(Lcom/instagram/a/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->action_bar_button_refresh:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/refresh/RefreshButton;

    iput-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, v6}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v2, Lcom/facebook/au;->nav_refresh:I

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, v7}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v2, Lcom/facebook/au;->action_bar_blue_button_background:I

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    new-instance v2, Lcom/instagram/a/h;

    invoke-direct {v2, p0}, Lcom/instagram/a/h;-><init>(Lcom/instagram/a/e;)V

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->action_bar_textview_title:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/as;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/facebook/av;->action_bar_textview_custom_title_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->action_bar_item_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/instagram/common/u/f;->d(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_b5
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_c1

    iget-object v3, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    :cond_c1
    iget-object v0, p0, Lcom/instagram/a/e;->b:Lcom/instagram/a/b;

    invoke-interface {v0, p0}, Lcom/instagram/a/b;->a(Lcom/instagram/a/a;)V

    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/a/e;->b:Lcom/instagram/a/b;

    invoke-static {}, Lcom/instagram/a/e;->d()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->action_bar_textview_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_f
    const/16 v0, 0x8

    goto :goto_b
.end method

.method public final b(I)Landroid/view/View;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->action_bar_textview_custom_title_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    sget v2, Lcom/facebook/av;->action_bar_textview_title:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v1
.end method

.method public final b(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->action_bar_button_text:I

    iget-object v2, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/instagram/a/e;->a(Landroid/view/View;Z)V

    return-object v0
.end method

.method public final b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->action_bar_button_refresh:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_f
    const/16 v0, 0x8

    goto :goto_b
.end method

.method public final c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .registers 4

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/instagram/a/e;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/instagram/a/e;->a(Landroid/view/ViewGroup;)V

    :cond_9
    return-void
.end method

.method public final c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V

    :cond_c
    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final d(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .registers 9

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/au;->dark_action_bar_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/a/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v1, Lcom/facebook/au;->nav_arrow_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Lcom/instagram/a/c;

    iget-object v2, p0, Lcom/instagram/a/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/instagram/a/d;->a:Lcom/instagram/a/d;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, v5}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v1, Lcom/facebook/au;->nav_arrow_next:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, p2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v1, Lcom/facebook/au;->action_bar_light_blue_button_background:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setBackgroundResource(I)V

    invoke-virtual {p0, v5}, Lcom/instagram/a/e;->c(Z)V

    iget-object v0, p0, Lcom/instagram/a/e;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method
