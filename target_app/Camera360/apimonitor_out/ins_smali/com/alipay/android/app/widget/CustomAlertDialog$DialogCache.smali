.class  Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"
.field  mAdapter:Landroid/widget/ListAdapter;
.field  mButtonNegativeMessage:Landroid/os/Message;
.field  mButtonPositiveMessage:Landroid/os/Message;
.field  mCancelable:Z
.field public mCheckedItem:I
.field  mContext:Landroid/content/Context;
.field  mIcon:Landroid/graphics/drawable/Drawable;
.field  mIsListMode:Z
.field  mMessage:Ljava/lang/CharSequence;
.field  mNegativeButton:Ljava/lang/CharSequence;
.field  mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;
.field  mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
.field  mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
.field  mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;
.field  mPositiveButton:Ljava/lang/CharSequence;
.field  mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;
.field  mTitle:Ljava/lang/CharSequence;
.field  mView:Landroid/view/View;
.method private constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mCancelable:Z
const/4 v0, -0x1
iput v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mCheckedItem:I
iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mIsListMode:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;)V
.registers 2
invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;-><init>()V
return-void
.end method