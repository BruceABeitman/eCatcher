.class public Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.super Ljava/lang/Object;
.source "ShareBSAlertDialog.java"
.field private final p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
invoke-direct {v0, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
return-void
.end method
.method public create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
.registers 4
new-instance v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mContext:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
#getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->mAlert:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;
invoke-static {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->access$0(Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;)Lcom/pinguo/share/ui/dialog/ShareBSAlertController;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->apply(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)V
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-boolean v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCancelable:Z
invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setCancelable(Z)V
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;
if-eqz v1, :cond_2d
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;
invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
:cond_2d
return-object v0
.end method
.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
return-object p0
.end method
.method public setCancelable(Z)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-boolean p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCancelable:Z
return-object p0
.end method
.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 5
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCursor:Landroid/database/Cursor;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p3, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
return-object p0
.end method
.method public setCustomTitle(Landroid/view/View;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;
return-object p0
.end method
.method public setIcon(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mIconId:I
return-object p0
.end method
.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;
return-object p0
.end method
.method public setInverseBackgroundForced(Z)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-boolean p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mForceInverseBackground:Z
return-object p0
.end method
.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 5
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
return-object p0
.end method
.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
return-object p0
.end method
.method public setMessage(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mContext:Landroid/content/Context;
invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setMessage(Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;Ljava/lang/String;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setMessage(Ljava/lang/CharSequence;I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->gravity:I
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 5
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mContext:Landroid/content/Context;
invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;
return-object p0
.end method
.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;
return-object p0
.end method
.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 5
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mContext:Landroid/content/Context;
invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;
return-object p0
.end method
.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;
return-object p0
.end method
.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
return-object p0
.end method
.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
return-object p0
.end method
.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;
return-object p0
.end method
.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 5
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mContext:Landroid/content/Context;
invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;
return-object p0
.end method
.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;
return-object p0
.end method
.method public setRecycleOnMeasureEnabled(Z)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-boolean p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mRecycleOnMeasure:Z
return-object p0
.end method
.method public setTitle(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mContext:Landroid/content/Context;
invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setTitleDesc(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mContext:Landroid/content/Context;
invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mTitleDesc:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setTitleDesc(Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mTitleDesc:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setView(Landroid/view/View;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mView:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mViewSpacingSpecified:Z
return-object p0
.end method
.method public setView(Landroid/view/View;IIII)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;
.registers 8
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput-object p1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mView:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mViewSpacingSpecified:Z
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput p2, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mViewSpacingLeft:I
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput p3, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mViewSpacingTop:I
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput p4, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mViewSpacingRight:I
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->p:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;
iput p5, v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mViewSpacingBottom:I
return-object p0
.end method
.method public show()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V
return-object v0
.end method