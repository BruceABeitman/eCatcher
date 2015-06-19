.class public Landroid/support/v7/internal/view/menu/ActionMenuItemView;
.super Landroid/support/v7/internal/widget/CompatTextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/menu/ActionMenuItemView$AllCapsTransformationMethod;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMinWidth:I

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v2, Landroid/support/v7/internal/view/menu/ActionMenuItemView$AllCapsTransformationMethod;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView$AllCapsTransformationMethod;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    return-void
.end method

.method private updateTextButtonVisibility()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    move v0, v1

    :goto_b
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_20

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_1f

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_20

    :cond_1f
    move v2, v1

    :cond_20
    and-int/2addr v0, v2

    if-eqz v0, :cond_2b

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_25
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_29
    move v0, v2

    goto :goto_b

    :cond_2b
    const/4 v1, 0x0

    goto :goto_25
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public initialize(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V
    .registers 4

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getTitleForItemView(Landroid/support/v7/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setId(I)V

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    return-void

    :cond_29
    const/16 v0, 0x8

    goto :goto_1e
.end method

.method public needsDividerAfter()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    :cond_b
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_9

    :goto_8
    return v8

    :cond_9
    const/4 v10, 0x2

    new-array v5, v10, [I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    aget v10, v5, v9

    div-int/lit8 v11, v3, 0x2

    add-int v4, v10, v11

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v10}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v1, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v4, v10, :cond_54

    const/16 v10, 0x35

    aget v8, v5, v8

    sub-int v8, v6, v8

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v8, v11

    invoke-virtual {v0, v10, v8, v3}, Landroid/widget/Toast;->setGravity(III)V

    :goto_4f
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v8, v9

    goto :goto_8

    :cond_54
    const/16 v10, 0x51

    invoke-virtual {v0, v10, v8, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_4f
.end method

.method protected onMeasure(II)V
    .registers 15

    const/high16 v11, 0x4000

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v7, :cond_1d

    iget v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/support/v7/internal/widget/CompatTextView;->setPadding(IIII)V

    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/CompatTextView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v1

    const/high16 v7, -0x8000

    if-ne v5, v7, :cond_69

    iget v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_36
    if-eq v5, v11, :cond_45

    iget v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v7, :cond_45

    if-ge v1, v2, :cond_45

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v7, p2}, Landroid/support/v7/internal/widget/CompatTextView;->onMeasure(II)V

    :cond_45
    if-nez v3, :cond_68

    iget-object v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_68

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v4

    iget-object v7, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v7, v4, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/support/v7/internal/widget/CompatTextView;->setPadding(IIII)V

    :cond_68
    return-void

    :cond_69
    iget v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_36
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .registers 2

    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    return-void
.end method

.method public setExpandedFormat(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_f

    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    :cond_f
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method public setItemInvoker(Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    iput p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/widget/CompatTextView;->setPadding(IIII)V

    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method public showsIcon()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
