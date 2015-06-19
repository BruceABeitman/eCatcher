.class public Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
.super Ljava/lang/Object;
.source "ShareBSAlertController.java"
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
.field public mOnPrepareListViewListener:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$OnPrepareListViewListener;
.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;
.field public mPositiveButtonText:Ljava/lang/CharSequence;
.field public mRecycleOnMeasure:Z
.field public mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;
.field public mTitle:Ljava/lang/CharSequence;
.field public mTitleDesc:Ljava/lang/CharSequence;
.field public mView:Landroid/view/View;
.field public mViewSpacingBottom:I
.field public mViewSpacingLeft:I
.field public mViewSpacingRight:I
.field public mViewSpacingSpecified:Z
.field public mViewSpacingTop:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->gravity:I
iput v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mIconId:I
iput-boolean v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mViewSpacingSpecified:Z
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCheckedItem:I
iput-boolean v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mRecycleOnMeasure:Z
iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mContext:Landroid/content/Context;
iput-boolean v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCancelable:Z
const-string/jumbo v0, "layout_inflater"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
iput-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;
return-void
.end method
.method private createListView(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)V
.registers 12
const v9, 0x7f0a0099
const/4 v8, 0x1
const/4 v7, 0x0
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;
const v3, 0x7f03001c
const/4 v4, 0x0
invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/ListView;
const v2, 0x7f03001d
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCursor:Landroid/database/Cursor;
if-nez v1, :cond_52
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;
if-eqz v1, :cond_48
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;
:goto_1e
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$OnPrepareListViewListener;
if-eqz v1, :cond_27
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$OnPrepareListViewListener;
invoke-interface {v1, v6}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V
:cond_27
#setter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mAdapter:Landroid/widget/ListAdapter;
invoke-static {p1, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$8(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;Landroid/widget/ListAdapter;)V
iget v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCheckedItem:I
#setter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mCheckedItem:I
invoke-static {p1, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$9(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;I)V
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
if-eqz v1, :cond_66
new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$1;
invoke-direct {v1, p0, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$1;-><init>(Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)V
invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
:goto_3b
:cond_3b
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
if-eqz v1, :cond_44
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
:cond_44
#setter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mListView:Landroid/widget/ListView;
invoke-static {p1, v6}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$10(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;Landroid/widget/ListView;)V
return-void
:cond_48
new-instance v0, Landroid/widget/ArrayAdapter;
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mContext:Landroid/content/Context;
iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;
invoke-direct {v0, v1, v2, v9, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V
goto :goto_1e
:cond_52
new-instance v0, Landroid/widget/SimpleCursorAdapter;
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mContext:Landroid/content/Context;
iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCursor:Landroid/database/Cursor;
new-array v4, v8, [Ljava/lang/String;
iget-object v5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;
aput-object v5, v4, v7
new-array v5, v8, [I
aput v9, v5, v7
invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
goto :goto_1e
:cond_66
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;
if-eqz v1, :cond_3b
new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;
invoke-direct {v1, p0, v6, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;-><init>(Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;Landroid/widget/ListView;Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)V
invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
goto :goto_3b
.end method
.method public apply(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)V
.registers 8
const/4 v3, 0x0
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;
if-eqz v0, :cond_65
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;
invoke-virtual {p1, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setCustomTitle(Landroid/view/View;)V
:cond_a
:goto_a
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;
if-eqz v0, :cond_8a
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;
invoke-virtual {p1, v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setMessage(Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;Ljava/lang/CharSequence;)V
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;
:cond_1b
:goto_1b
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;
if-eqz v0, :cond_27
const/4 v0, -0x1
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;
iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;
invoke-virtual {p1, v0, v1, v2, v3}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
:cond_27
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;
if-eqz v0, :cond_33
const/4 v0, -0x2
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;
iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;
invoke-virtual {p1, v0, v1, v2, v3}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
:cond_33
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;
if-eqz v0, :cond_3f
const/4 v0, -0x3
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;
iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;
invoke-virtual {p1, v0, v1, v2, v3}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
:cond_3f
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;
if-nez v0, :cond_4b
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCursor:Landroid/database/Cursor;
if-nez v0, :cond_4b
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;
if-eqz v0, :cond_4e
:cond_4b
invoke-direct {p0, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->createListView(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)V
:cond_4e
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mView:Landroid/view/View;
if-eqz v0, :cond_64
iget-boolean v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mViewSpacingSpecified:Z
if-eqz v0, :cond_9c
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mView:Landroid/view/View;
iget v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mViewSpacingLeft:I
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mViewSpacingTop:I
iget v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mViewSpacingRight:I
iget v5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mViewSpacingBottom:I
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setView(Landroid/view/View;IIII)V
:cond_64
:goto_64
return-void
:cond_65
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;
if-eqz v0, :cond_6e
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;
invoke-virtual {p1, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setTitle(Ljava/lang/CharSequence;)V
:cond_6e
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mTitleDesc:Ljava/lang/CharSequence;
if-eqz v0, :cond_77
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mTitleDesc:Ljava/lang/CharSequence;
invoke-virtual {p1, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setTitleDesc(Ljava/lang/CharSequence;)V
:cond_77
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_80
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;
invoke-virtual {p1, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V
:cond_80
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mIconId:I
if-ltz v0, :cond_a
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mIconId:I
invoke-virtual {p1, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setIcon(I)V
goto :goto_a
:cond_8a
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->gravity:I
if-nez v0, :cond_94
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;
invoke-virtual {p1, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setMessage(Ljava/lang/CharSequence;)V
goto :goto_1b
:cond_94
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;
iget v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->gravity:I
invoke-virtual {p1, v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setMessage(Ljava/lang/CharSequence;I)V
goto :goto_1b
:cond_9c
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mView:Landroid/view/View;
invoke-virtual {p1, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setView(Landroid/view/View;)V
goto :goto_64
.end method