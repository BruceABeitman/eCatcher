.class public Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;
.super Ljava/lang/Object;
.source "BSAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/ui/dialog/BSAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public gravity:I

.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mRichText:Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleDesc:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->gravity:I

    iput v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIconId:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mViewSpacingSpecified:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItem:I

    iput-boolean v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCancelable:Z

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createListView(Lcom/pinguo/camera360/ui/dialog/BSAlertController;)V
    .registers 12

    const v4, 0x7f0a0099

    const/4 v9, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030042

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/pinguo/camera360/ui/dialog/RecycleListView;

    iget-boolean v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5b

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    const v3, 0x7f030044

    iget-object v5, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$1;-><init>(Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/pinguo/camera360/ui/dialog/RecycleListView;)V

    :goto_26
    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_2f
    #setter for: Lcom/pinguo/camera360/ui/dialog/BSAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->access$8(Lcom/pinguo/camera360/ui/dialog/BSAlertController;Landroid/widget/ListAdapter;)V

    iget v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItem:I

    #setter for: Lcom/pinguo/camera360/ui/dialog/BSAlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->access$9(Lcom/pinguo/camera360/ui/dialog/BSAlertController;I)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9d

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;-><init>(Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;Lcom/pinguo/camera360/ui/dialog/BSAlertController;)V

    invoke-virtual {v6, v1}, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_4c
    iget-boolean v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_aa

    invoke-virtual {v6, v9}, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->setChoiceMode(I)V

    :cond_53
    :goto_53
    iget-boolean v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v6, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->mRecycleOnMeasure:Z

    #setter for: Lcom/pinguo/camera360/ui/dialog/BSAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->access$10(Lcom/pinguo/camera360/ui/dialog/BSAlertController;Landroid/widget/ListView;)V

    return-void

    :cond_5b
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$2;-><init>(Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/pinguo/camera360/ui/dialog/RecycleListView;)V

    goto :goto_26

    :cond_67
    iget-boolean v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_79

    const v2, 0x7f030045

    :goto_6e
    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_87

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7d

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    :goto_78
    goto :goto_26

    :cond_79
    const v2, 0x7f030043

    goto :goto_6e

    :cond_7d
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_78

    :cond_87
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_26

    :cond_9d
    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_43

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;-><init>(Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;Lcom/pinguo/camera360/ui/dialog/RecycleListView;Lcom/pinguo/camera360/ui/dialog/BSAlertController;)V

    invoke-virtual {v6, v1}, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_43

    :cond_aa
    iget-boolean v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_53

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->setChoiceMode(I)V

    goto :goto_53
.end method


# virtual methods
.method public apply(Lcom/pinguo/camera360/ui/dialog/BSAlertController;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setCustomTitle(Landroid/view/View;)V

    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mRichText:Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mRichText:Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setMessage(Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;Ljava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mRichText:Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_27

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_27
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_33

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_33
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3f

    const/4 v0, -0x3

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_3f
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4e

    :cond_4b
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->createListView(Lcom/pinguo/camera360/ui/dialog/BSAlertController;)V

    :cond_4e
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_64

    iget-boolean v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_9c

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setView(Landroid/view/View;IIII)V

    :cond_64
    :goto_64
    return-void

    :cond_65
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6e
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mTitleDesc:Ljava/lang/CharSequence;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mTitleDesc:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setTitleDesc(Ljava/lang/CharSequence;)V

    :cond_77
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_80
    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setIcon(I)V

    goto :goto_a

    :cond_8a
    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->gravity:I

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_94
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->gravity:I

    invoke-virtual {p1, v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    goto :goto_1b

    :cond_9c
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setView(Landroid/view/View;)V

    goto :goto_64
.end method
