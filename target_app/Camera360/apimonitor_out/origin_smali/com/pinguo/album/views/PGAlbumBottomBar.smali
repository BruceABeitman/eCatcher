.class public Lcom/pinguo/album/views/PGAlbumBottomBar;
.super Ljava/lang/Object;
.source "PGAlbumBottomBar.java"


# static fields
.field public static final BOTTOM_BAR_MODE:[I = null

.field public static final BOTTOM_BAR_MODE_ALBUM:I = 0x0

.field public static final BOTTOM_BAR_MODE_FULL_IMAGE:I = 0x1

.field public static final BOTTOM_BAR_MODE_NONE:I = -0x1

.field public static final BOTTOM_BUTTON_IDS:[I

.field public static final BOTTOM_MODE_LAYOUT_ID:[I


# instance fields
.field private mActivity:Lcom/pinguo/album/activities/BaseActivity;

.field private mBarContainer:Landroid/view/ViewGroup;

.field private mBottomModePanel:Landroid/view/View;

.field private mCurBottomBarMode:I

.field private mOnActionModeListener:Lcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    new-array v0, v2, [I

    aput v1, v0, v1

    sput-object v0, Lcom/pinguo/album/views/PGAlbumBottomBar;->BOTTOM_BAR_MODE:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/pinguo/album/views/PGAlbumBottomBar;->BOTTOM_MODE_LAYOUT_ID:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/pinguo/album/views/PGAlbumBottomBar;->BOTTOM_BUTTON_IDS:[I

    return-void

    :array_18
    .array-data 0x4
        0x9t 0x0t 0x3t 0x7ft
        0x9t 0x0t 0x3t 0x7ft
    .end array-data

    :array_20
    .array-data 0x4
        0x54t 0x0t 0xat 0x7ft
        0x55t 0x0t 0xat 0x7ft
        0x56t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/pinguo/album/activities/BaseActivity;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mActivity:Lcom/pinguo/album/activities/BaseActivity;

    iput-object p2, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBarContainer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public getActionBarMode()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mCurBottomBarMode:I

    return v0
.end method

.method public getActionPanel()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBottomModePanel:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setOnActionMode(ILcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;)V
    .registers 10

    const/4 v6, -0x1

    iput p1, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mCurBottomBarMode:I

    iget-object v3, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mActivity:Lcom/pinguo/album/activities/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget-object v4, Lcom/pinguo/album/views/PGAlbumBottomBar;->BOTTOM_MODE_LAYOUT_ID:[I

    aget v4, v4, p1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBottomModePanel:Landroid/view/View;

    iget-object v3, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBarContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBottomModePanel:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p2, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mOnActionModeListener:Lcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;

    sget-object v4, Lcom/pinguo/album/views/PGAlbumBottomBar;->BOTTOM_BUTTON_IDS:[I

    array-length v5, v4

    const/4 v3, 0x0

    :goto_2b
    if-lt v3, v5, :cond_2e

    return-void

    :cond_2e
    aget v0, v4, v3

    iget-object v6, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBottomModePanel:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3d

    iget-object v6, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mOnActionModeListener:Lcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b
.end method

.method public setVisible(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p2, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    if-nez p1, :cond_1c

    iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBarContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mActivity:Lcom/pinguo/album/activities/BaseActivity;

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_b

    :cond_1c
    iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBarContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mActivity:Lcom/pinguo/album/activities/BaseActivity;

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_b
.end method

.method public updateBottomButton(Z)V
    .registers 8

    sget-object v3, Lcom/pinguo/album/views/PGAlbumBottomBar;->BOTTOM_BUTTON_IDS:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_4
    if-lt v2, v4, :cond_7

    return-void

    :cond_7
    aget v0, v3, v2

    iget-object v5, p0, Lcom/pinguo/album/views/PGAlbumBottomBar;->mBottomModePanel:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
