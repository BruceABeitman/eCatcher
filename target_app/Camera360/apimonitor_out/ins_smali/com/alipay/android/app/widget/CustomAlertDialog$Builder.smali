.class public Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"
.field private final mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;-><init>(Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;)V
iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mContext:Landroid/content/Context;
return-void
.end method
.method public apply(Lcom/alipay/android/app/widget/CustomAlertDialog;)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mPositiveButton:Ljava/lang/CharSequence;
if-eqz v0, :cond_13
const/4 v0, -0x1
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mPositiveButton:Ljava/lang/CharSequence;
iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v2, v2, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;
invoke-virtual {p1, v0, v1, v2, v3}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
:cond_13
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mNegativeButton:Ljava/lang/CharSequence;
if-eqz v0, :cond_25
const/4 v0, -0x2
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mNegativeButton:Ljava/lang/CharSequence;
iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v2, v2, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;
invoke-virtual {p1, v0, v1, v2, v3}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
:cond_25
return-void
.end method
.method public create()Lcom/alipay/android/app/widget/CustomAlertDialog;
.registers 3
new-instance v0, Lcom/alipay/android/app/widget/CustomAlertDialog;
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
invoke-direct {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;-><init>(Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;)V
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->apply(Lcom/alipay/android/app/widget/CustomAlertDialog;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setCanceledOnTouchOutside(Z)V
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-boolean v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mCancelable:Z
invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setCancelable(Z)V
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;
if-eqz v1, :cond_29
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;
invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
:cond_29
return-object v0
.end method
.method public setCancelable(Z)V
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-boolean p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mCancelable:Z
return-void
.end method
.method public setIcon(I)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
move-result-object v0
return-object v0
.end method
.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mIcon:Landroid/graphics/drawable/Drawable;
return-object p0
.end method
.method public setMessage(I)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mContext:Landroid/content/Context;
invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mMessage:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setMessage(Ljava/lang/CharSequence;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mMessage:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mContext:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
move-result-object v0
return-object v0
.end method
.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mNegativeButton:Ljava/lang/CharSequence;
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p2, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;
return-object p0
.end method
.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;
return-void
.end method
.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mContext:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
move-result-object v0
return-object v0
.end method
.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.registers 4
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mPositiveButton:Ljava/lang/CharSequence;
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p2, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;
return-object p0
.end method
.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.registers 6
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mIsListMode:Z
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mAdapter:Landroid/widget/ListAdapter;
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p3, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput p2, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mCheckedItem:I
return-object p0
.end method
.method public setTitle(I)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mContext:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
move-result-object v0
return-object v0
.end method
.method public setTitle(Ljava/lang/CharSequence;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mTitle:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setView(Landroid/view/View;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p1, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mView:Landroid/view/View;
return-object p0
.end method
.method public show()Lcom/alipay/android/app/widget/CustomAlertDialog;
.registers 2
invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->create()Lcom/alipay/android/app/widget/CustomAlertDialog;
move-result-object v0
invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->show()V
return-object v0
.end method