.class public Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarOverlayLayout.java"


# static fields
.field static final mActionBarSizeAttr:[I


# instance fields
.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field private mActionBarBottom:Landroid/view/View;

.field private mActionBarHeight:I

.field private mActionBarTop:Landroid/view/View;

.field private mActionView:Landroid/support/v7/internal/widget/ActionBarView;

.field private mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private mContent:Landroid/view/View;

.field private final mZeroRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarSizeAttr:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mZeroRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mZeroRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p3, :cond_14

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_14

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_14
    if-eqz p4, :cond_21

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_21

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_21
    if-eqz p6, :cond_2e

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2e

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_2e
    if-eqz p5, :cond_3b

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3b

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_3b
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarSizeAttr:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method pullChildren()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_3d

    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_19

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    :cond_19
    sget v0, Landroid/support/v7/appcompat/R$id;->top_action_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/view/View;

    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    sget v0, Landroid/support/v7/appcompat/R$id;->split_action_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    :cond_3d
    return-void
.end method

.method public setActionBar(Landroid/support/v7/app/ActionBar;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-void
.end method
