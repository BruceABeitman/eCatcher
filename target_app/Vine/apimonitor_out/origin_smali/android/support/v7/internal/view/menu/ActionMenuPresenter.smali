.class public Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
.super Landroid/support/v7/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$1;,
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;,
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final mPopupPresenterCallback:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    return-void
.end method

.method static synthetic access$102(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$202(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$302(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_9

    move-object v0, v5

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_24

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_21

    move-object v4, v0

    check-cast v4, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_8

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_24
    move-object v0, v5

    goto :goto_8
.end method


# virtual methods
.method public bindItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/support/v7/internal/view/menu/MenuView$ItemView;)V
    .registers 6

    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v1, Landroid/support/v7/internal/view/menu/ActionMenuView;

    move-object v0, p2

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;)V

    return-void
.end method

.method public dismissPopupMenus()Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .registers 5

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_9
.end method

.method public flagActionItems()Z
    .registers 30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_31
    if-ge v11, v15, :cond_61

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_56

    add-int/lit8 v22, v22, 0x1

    :goto_43
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_53

    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_53

    const/16 v17, 0x0

    :cond_53
    add-int/lit8 v11, v11, 0x1

    goto :goto_31

    :cond_56
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_5f

    add-int/lit8 v21, v21, 0x1

    goto :goto_43

    :cond_5f
    const/4 v10, 0x1

    goto :goto_43

    :cond_61
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_75

    if-nez v10, :cond_73

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_75

    :cond_73
    add-int/lit8 v17, v17, -0x1

    :cond_75
    sub-int v17, v17, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    :cond_a4
    const/4 v11, 0x0

    :goto_a5
    if-ge v11, v15, :cond_1ed

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_116

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_d3

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    :cond_d3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_10c

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    :goto_e9
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v26, v26, v18

    if-nez v8, :cond_f3

    move/from16 v8, v18

    :cond_f3
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    if-eqz v9, :cond_102

    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_102
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    :cond_109
    :goto_109
    add-int/lit8 v11, v11, 0x1

    goto :goto_a5

    :cond_10c
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_e9

    :cond_116
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_109

    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    if-gtz v17, :cond_12a

    if-eqz v12, :cond_19d

    :cond_12a
    if-lez v26, :cond_19d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_136

    if-lez v7, :cond_19d

    :cond_136
    const/4 v13, 0x1

    :goto_137
    if-eqz v13, :cond_187

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_157

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    :cond_157
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_19f

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    sub-int/2addr v7, v6

    if-nez v6, :cond_16f

    const/4 v13, 0x0

    :cond_16f
    :goto_16f
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v26, v26, v18

    if-nez v8, :cond_179

    move/from16 v8, v18

    :cond_179
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1ac

    if-ltz v26, :cond_1a9

    const/16 v27, 0x1

    :goto_185
    and-int v13, v13, v27

    :cond_187
    :goto_187
    if-eqz v13, :cond_1b8

    if-eqz v9, :cond_1b8

    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_194
    if-eqz v13, :cond_198

    add-int/lit8 v17, v17, -0x1

    :cond_198
    invoke-virtual {v14, v13}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_109

    :cond_19d
    const/4 v13, 0x0

    goto :goto_137

    :cond_19f
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_16f

    :cond_1a9
    const/16 v27, 0x0

    goto :goto_185

    :cond_1ac
    add-int v27, v26, v8

    if-lez v27, :cond_1b5

    const/16 v27, 0x1

    :goto_1b2
    and-int v13, v13, v27

    goto :goto_187

    :cond_1b5
    const/16 v27, 0x0

    goto :goto_1b2

    :cond_1b8
    if-eqz v12, :cond_194

    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/16 v16, 0x0

    :goto_1c5
    move/from16 v0, v16

    if-ge v0, v11, :cond_194

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1ea

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_1e3

    add-int/lit8 v17, v17, 0x1

    :cond_1e3
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    :cond_1ea
    add-int/lit8 v16, v16, 0x1

    goto :goto_1c5

    :cond_1ed
    const/16 v27, 0x1

    return v27
.end method

.method public getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_c
    instance-of v3, p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-nez v3, :cond_11

    const/4 p2, 0x0

    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_15
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v3, 0x8

    :goto_1d
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    check-cast v2, Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_34
    return-object v0

    :cond_35
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setPresenter(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .registers 5

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    :goto_16
    return v1

    :cond_17
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    goto :goto_16

    :cond_20
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public hideSubMenus()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v0

    iget-boolean v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_17

    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    :cond_17
    iget-boolean v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_21

    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    :cond_21
    iget-boolean v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_2b

    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    :cond_2b
    iget v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    iget-boolean v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_5f

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_47

    new-instance v4, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    :cond_47
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_4e
    iput v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    const/high16 v4, 0x4260

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    iput-object v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    return-void

    :cond_5f
    iput-object v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_4e
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOverflowReserved()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$integer;->abc_max_action_buttons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    :cond_12
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1c
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    move-object v1, p1

    check-cast v1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;

    iget v3, v1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_1a

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget v4, v1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    :cond_1a
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;-><init>()V

    iget v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    :goto_7
    return v2

    :cond_8
    move-object v1, p1

    :goto_9
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_18

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    goto :goto_9

    :cond_18
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    :cond_28
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    new-instance v2, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-direct {v2, p0, p1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->show(Landroid/os/IBinder;)V

    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    const/4 v2, 0x1

    goto :goto_7
.end method

.method public onSubUiVisibilityChanged(Z)V
    .registers 4

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_6
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    return-void
.end method

.method public setItemLimit(I)V
    .registers 3

    iput p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    return-void
.end method

.method public setReserveOverflow(Z)V
    .registers 3

    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    return-void
.end method

.method public setWidthLimit(IZ)V
    .registers 4

    iput p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    iput-boolean p2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    return-void
.end method

.method public shouldIncludeItem(ILandroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .registers 7

    const/4 v5, 0x1

    iget-boolean v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_38

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_38

    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    new-instance v1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    :goto_37
    return v5

    :cond_38
    const/4 v5, 0x0

    goto :goto_37
.end method

.method public updateMenuView(Z)V
    .registers 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-nez v8, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v8, :cond_2d

    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_2d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v7

    if-eqz v7, :cond_2a

    invoke-virtual {v7, p0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2d
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v8, :cond_8a

    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v5

    :goto_37
    const/4 v2, 0x0

    iget-boolean v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v8, :cond_51

    if-eqz v5, :cond_51

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v9, :cond_8e

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v8

    if-nez v8, :cond_8c

    move v2, v9

    :cond_51
    :goto_51
    if-eqz v2, :cond_94

    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v8, :cond_60

    new-instance v8, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v9, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    :cond_60
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eq v6, v8, :cond_80

    if-eqz v6, :cond_73

    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_73
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v4, Landroid/support/v7/internal/view/menu/ActionMenuView;

    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/support/v7/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_80
    :goto_80
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v8, Landroid/support/v7/internal/view/menu/ActionMenuView;

    iget-boolean v9, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v8, v9}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    goto :goto_9

    :cond_8a
    const/4 v5, 0x0

    goto :goto_37

    :cond_8c
    move v2, v10

    goto :goto_51

    :cond_8e
    if-lez v1, :cond_92

    move v2, v9

    :goto_91
    goto :goto_51

    :cond_92
    move v2, v10

    goto :goto_91

    :cond_94
    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v8, :cond_80

    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-ne v8, v9, :cond_80

    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_80
.end method
