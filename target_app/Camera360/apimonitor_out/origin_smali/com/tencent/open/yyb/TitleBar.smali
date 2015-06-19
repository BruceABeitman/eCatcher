.class public Lcom/tencent/open/yyb/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "ProGuard"


# static fields
.field public static final BACKBTN_LEFT_MARGIN:F = 20.0f

.field private static final BACK_BTN_HEIGHT:F = 18.0f

.field private static final BACK_BTN_WIDTH:F = 11.0f

.field private static final BACK_PADDING_BOTTOM:F = 7.0f

.field private static final BACK_PADDING_LEFT:F = 15.0f

.field private static final BACK_PADDING_RIGHT:F = 20.0f

.field private static final BACK_PADDING_TOP:F = 7.0f

.field private static final ID_BACK_BTN:I = 0x2710

.field public static final SHAREBTN_RIGHT_MARGIN:F = 10.0f

.field private static final SHARE_BTN_SIZE:F = 52.0f

.field private static final SOURCE_BACK_BTN:Ljava/lang/String; = "yyb_icon_back.png"

.field private static final SOURCE_MORE_BTN:Ljava/lang/String; = "yyb_appdetail_showmore.png"

.field private static final SOURCE_TITLEBAR:Ljava/lang/String; = "yyb_topbar.9.png"

.field public static final TITLEBAR_HEIGHT:F = 51.0f


# instance fields
.field private backBtn:Landroid/widget/ImageView;

.field private backLayout:Landroid/widget/RelativeLayout;

.field private density:F

.field private shareBtn:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/tencent/open/yyb/TitleBar;->density:F

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x424c

    invoke-direct {p0, v2}, Lcom/tencent/open/yyb/TitleBar;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/tencent/open/yyb/TitleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v0, "yyb_topbar.9.png"

    invoke-static {v0, p1}, Lcom/tencent/open/yyb/b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/open/yyb/TitleBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/tencent/open/yyb/TitleBar;->initBackLayout()V

    invoke-direct {p0}, Lcom/tencent/open/yyb/TitleBar;->initShareBtn()V

    return-void
.end method

.method private dip2px(F)I
    .registers 4

    iget v0, p0, Lcom/tencent/open/yyb/TitleBar;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initBackBtn()V
    .registers 6

    const/high16 v3, 0x41a0

    const/high16 v4, 0x40e0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/open/yyb/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->backBtn:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x4130

    invoke-direct {p0, v1}, Lcom/tencent/open/yyb/TitleBar;->dip2px(F)I

    move-result v1

    const/high16 v2, 0x4190

    invoke-direct {p0, v2}, Lcom/tencent/open/yyb/TitleBar;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0, v3}, Lcom/tencent/open/yyb/TitleBar;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/tencent/open/yyb/TitleBar;->backBtn:Landroid/widget/ImageView;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    iget-object v1, p0, Lcom/tencent/open/yyb/TitleBar;->backBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->backBtn:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->backBtn:Landroid/widget/ImageView;

    const-string/jumbo v1, "yyb_icon_back.png"

    invoke-virtual {p0}, Lcom/tencent/open/yyb/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/yyb/b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->backBtn:Landroid/widget/ImageView;

    const/high16 v1, 0x4170

    invoke-direct {p0, v1}, Lcom/tencent/open/yyb/TitleBar;->dip2px(F)I

    move-result v1

    invoke-direct {p0, v4}, Lcom/tencent/open/yyb/TitleBar;->dip2px(F)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/tencent/open/yyb/TitleBar;->dip2px(F)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/tencent/open/yyb/TitleBar;->dip2px(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->backLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tencent/open/yyb/TitleBar;->backBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initBackLayout()V
    .registers 4

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/tencent/open/yyb/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->backLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/open/yyb/TitleBar;->backLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->backLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/open/yyb/TitleBar;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tencent/open/yyb/TitleBar;->initBackBtn()V

    invoke-direct {p0}, Lcom/tencent/open/yyb/TitleBar;->initTitle()V

    return-void
.end method

.method private initShareBtn()V
    .registers 4

    const/high16 v2, 0x4250

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/open/yyb/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->shareBtn:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/tencent/open/yyb/TitleBar;->dip2px(F)I

    move-result v0

    invoke-direct {p0, v2}, Lcom/tencent/open/yyb/TitleBar;->dip2px(F)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/tencent/open/yyb/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    iget-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->shareBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->shareBtn:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->shareBtn:Landroid/widget/ImageView;

    const-string/jumbo v1, "yyb_appdetail_showmore.png"

    invoke-virtual {p0}, Lcom/tencent/open/yyb/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/yyb/b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->shareBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/tencent/open/yyb/TitleBar;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initTitle()V
    .registers 6

    const/4 v2, -0x2

    const/high16 v3, 0x41a0

    const/high16 v4, 0x4000

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/open/yyb/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->title:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x1

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-direct {p0, v3}, Lcom/tencent/open/yyb/TitleBar;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/tencent/open/yyb/TitleBar;->title:Landroid/widget/TextView;

    const-string/jumbo v2, "#fefefe"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/tencent/open/yyb/TitleBar;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/tencent/open/yyb/TitleBar;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    const-string/jumbo v3, "#2E000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/tencent/open/yyb/TitleBar;->backLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/tencent/open/yyb/TitleBar;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getBackBtn()Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->backLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getSharBtn()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->shareBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/open/yyb/TitleBar;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
