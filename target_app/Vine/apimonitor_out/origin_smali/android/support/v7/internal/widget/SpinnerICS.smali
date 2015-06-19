.class Landroid/support/v7/internal/widget/SpinnerICS;
.super Landroid/support/v7/internal/widget/AbsSpinnerICS;
.source "SpinnerICS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/SpinnerICS$1;,
        Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;,
        Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;,
        Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;,
        Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field static final MODE_DIALOG:I = 0x0

.field static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field mDropDownWidth:I

.field private mGravity:I

.field private mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

.field private mTempAdapter:Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/SpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .registers 5

    const/4 v0, 0x0

    sget v1, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/support/v7/internal/widget/SpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/SpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/widget/SpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AbsSpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mTempRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v4, -0x1

    if-ne p4, v4, :cond_1a

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    :cond_1a
    packed-switch p4, :pswitch_data_74

    :goto_1d
    const/16 v4, 0x11

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mGravity:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mTempAdapter:Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mTempAdapter:Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;

    invoke-interface {v4, v5}, Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object v7, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mTempAdapter:Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;

    :cond_3f
    return-void

    :pswitch_40
    new-instance v4, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;

    invoke-direct {v4, p0, v7}, Landroid/support/v7/internal/widget/SpinnerICS$DialogPopup;-><init>(Landroid/support/v7/internal/widget/SpinnerICS;Landroid/support/v7/internal/widget/SpinnerICS$1;)V

    iput-object v4, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    goto :goto_1d

    :pswitch_48
    new-instance v2, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;-><init>(Landroid/support/v7/internal/widget/SpinnerICS;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v4, 0x3

    const/4 v5, -0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mDropDownWidth:I

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    if-eqz v3, :cond_67

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setVerticalOffset(I)V

    :cond_67
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->setHorizontalOffset(I)V

    :cond_71
    iput-object v2, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    goto :goto_1d

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_40
        :pswitch_48
    .end packed-switch
.end method

.method static synthetic access$200(Landroid/support/v7/internal/widget/SpinnerICS;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private makeAndAddView(I)Landroid/view/View;
    .registers 6

    iget-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mDataChanged:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/SpinnerICS;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    :goto_10
    return-object v1

    :cond_11
    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/SpinnerICS;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    goto :goto_10
.end method

.method private setUpChild(Landroid/view/View;)V
    .registers 13

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    :cond_a
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v6}, Landroid/support/v7/internal/widget/SpinnerICS;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    iget v8, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v8, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    iget-object v8, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    const/4 v2, 0x0

    add-int v3, v2, v7

    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .registers 6

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1b

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/SpinnerICS;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_d
    :goto_d
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    if-ltz v1, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    :cond_1a
    return v2

    :cond_1b
    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_d

    invoke-direct {p0, v4}, Landroid/support/v7/internal/widget/SpinnerICS;->makeAndAddView(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;

    invoke-virtual {v3, v4, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->put(ILandroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->removeAllViewsInLayout()V

    goto :goto_d
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method layout(IZ)V
    .registers 11

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    iget-boolean v5, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mDataChanged:Z

    if-eqz v5, :cond_20

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->handleDataChanged()V

    :cond_20
    iget v5, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mItemCount:I

    if-nez v5, :cond_28

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->resetList()V

    :goto_27
    return-void

    :cond_28
    iget v5, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mNextSelectedPosition:I

    if-ltz v5, :cond_31

    iget v5, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/SpinnerICS;->setSelectedPositionInt(I)V

    :cond_31
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->recycleAllViews()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->removeAllViewsInLayout()V

    iget v5, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSelectedPosition:I

    iput v5, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mFirstPosition:I

    iget v5, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSelectedPosition:I

    invoke-direct {p0, v5}, Landroid/support/v7/internal/widget/SpinnerICS;->makeAndAddView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move v3, v0

    iget v5, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mGravity:I

    and-int/lit8 v5, v5, 0x7

    sparse-switch v5, :sswitch_data_72

    :goto_4d
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v5, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mRecycler:Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/AbsSpinnerICS$RecycleBin;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->invalidate()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->checkSelectionChanged()V

    iput-boolean v7, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mDataChanged:Z

    iput-boolean v7, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mNeedSync:Z

    iget v5, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/SpinnerICS;->setNextSelectedPositionInt(I)V

    goto :goto_27

    :sswitch_65
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    div-int/lit8 v6, v4, 0x2

    sub-int v3, v5, v6

    goto :goto_4d

    :sswitch_6d
    add-int v5, v0, v1

    sub-int v3, v5, v4

    goto :goto_4d

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_65
        0x5 -> :sswitch_6d
    .end sparse-switch
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 16

    if-nez p1, :cond_4

    const/4 v8, 0x0

    :cond_3
    :goto_3
    return v8

    :cond_4
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v0, v1, v7

    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v3, v7

    :goto_32
    if-ge v3, v1, :cond_5e

    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    if-eq v6, v4, :cond_3c

    move v4, v6

    const/4 v5, 0x0

    :cond_3c
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_50

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_50
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_5e
    if-eqz p2, :cond_3

    iget-object v10, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v10, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/SpinnerICS;->setSelection(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;->dismiss()V

    :cond_14
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mInLayout:Z

    invoke-virtual {p0, v1, v1}, Landroid/support/v7/internal/widget/SpinnerICS;->layout(IZ)V

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mInLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onMeasure(II)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    if-eqz v1, :cond_32

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_32

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/internal/widget/SpinnerICS;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/internal/widget/SpinnerICS;->setMeasuredDimension(II)V

    :cond_32
    return-void
.end method

.method public performClick()Z
    .registers 3

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->performClick()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;->show()V

    :cond_14
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/SpinnerICS;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    new-instance v1, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;

    invoke-direct {v1, p1}, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_11
    return-void

    :cond_12
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mTempAdapter:Landroid/support/v7/internal/widget/SpinnerICS$DropDownAdapter;

    goto :goto_11
.end method

.method public setGravity(I)V
    .registers 3

    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mGravity:I

    if-eq v0, p1, :cond_f

    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_a

    or-int/lit8 p1, p1, 0x3

    :cond_a
    iput p1, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mGravity:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->requestLayout()V

    :cond_f
    return-void
.end method

.method public setOnItemClickListener(Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;)V
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setOnItemClickListenerInt(Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setOnItemClickListener(Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS;->mPopup:Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/SpinnerICS$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPromptId(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerICS;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerICS;->setPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method
