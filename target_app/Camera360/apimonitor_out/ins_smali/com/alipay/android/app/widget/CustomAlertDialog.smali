.class public Lcom/alipay/android/app/widget/CustomAlertDialog;
.super Landroid/app/Dialog;
.source "CustomAlertDialog.java"
.implements Landroid/content/DialogInterface;
.field private mBeyondHoneycomb:Z
.field private mButtonDivider:Landroid/view/View;
.field private mButtonGroup:Landroid/view/View;
.field private mButtonHandler:Landroid/view/View$OnClickListener;
.field private mCheckedItem:I
.field private mContentView:Landroid/widget/FrameLayout;
.field private mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
.field private mDialogInterface:Landroid/content/DialogInterface;
.field private mDivider:Landroid/widget/ImageView;
.field private mHandler:Landroid/os/Handler;
.field private mLeftButton:Landroid/widget/Button;
.field private mListAdapter:Landroid/widget/ListAdapter;
.field private mListView:Landroid/widget/ListView;
.field private mMessage:Landroid/widget/TextView;
.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
.field private mRightButton:Landroid/widget/Button;
.field private mTitle:Landroid/widget/TextView;
.method public constructor <init>(Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;)V
.registers 4
iget-object v0, p1, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mContext:Landroid/content/Context;
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getStyle_alert_dialog()I
move-result v1
invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
const/4 v0, -0x1
iput v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mCheckedItem:I
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_2a
const/4 v0, 0x1
:goto_13
iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mBeyondHoneycomb:Z
new-instance v0, Lcom/alipay/android/app/widget/CustomAlertDialog$1;
invoke-direct {v0, p0}, Lcom/alipay/android/app/widget/CustomAlertDialog$1;-><init>(Lcom/alipay/android/app/widget/CustomAlertDialog;)V
iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;
iput-object p1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogInterface:Landroid/content/DialogInterface;
new-instance v0, Lcom/alipay/android/app/widget/CustomAlertDialog$ButtonHandler;
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogInterface:Landroid/content/DialogInterface;
invoke-direct {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V
iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mHandler:Landroid/os/Handler;
return-void
:cond_2a
const/4 v0, 0x0
goto :goto_13
.end method
.method static synthetic access$0(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$1(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/content/DialogInterface;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogInterface:Landroid/content/DialogInterface;
return-object v0
.end method
.method private setupButtons()Z
.registers 9
const/4 v6, 0x1
const/16 v5, 0x8
const/4 v4, 0x0
const/4 v0, 0x0
iget-boolean v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mBeyondHoneycomb:Z
if-eqz v3, :cond_3e
iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mRightButton:Landroid/widget/Button;
:goto_b
iget-boolean v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mBeyondHoneycomb:Z
if-eqz v3, :cond_41
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mLeftButton:Landroid/widget/Button;
:goto_11
iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v3, v3, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mPositiveButton:Ljava/lang/CharSequence;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_44
invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V
:goto_1e
iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v3, v3, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mNegativeButton:Ljava/lang/CharSequence;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_5d
invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V
:goto_2b
iget-object v7, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mButtonDivider:Landroid/view/View;
if-le v0, v6, :cond_76
move v3, v4
:goto_30
invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mButtonGroup:Landroid/view/View;
if-nez v0, :cond_78
:goto_37
invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V
if-eqz v0, :cond_3d
move v4, v6
:cond_3d
return v4
:cond_3e
iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mLeftButton:Landroid/widget/Button;
goto :goto_b
:cond_41
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mRightButton:Landroid/widget/Button;
goto :goto_11
:cond_44
invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V
iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v3, v3, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mPositiveButton:Ljava/lang/CharSequence;
invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;
invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v3, v3, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mButtonPositiveMessage:Landroid/os/Message;
invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_1e
:cond_5d
invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V
iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v3, v3, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mNegativeButton:Ljava/lang/CharSequence;
invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mButtonHandler:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v3, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v3, v3, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mButtonNegativeMessage:Landroid/os/Message;
invoke-virtual {v1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_2b
:cond_76
move v3, v5
goto :goto_30
:cond_78
move v5, v4
goto :goto_37
.end method
.method private setupMessage()V
.registers 4
const/4 v1, 0x0
iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v2, v2, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mMessage:Ljava/lang/CharSequence;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_23
iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v2, v2, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mView:Landroid/view/View;
if-nez v2, :cond_23
const/4 v0, 0x1
:goto_12
if-eqz v0, :cond_25
iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mMessage:Landroid/widget/TextView;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mMessage:Landroid/widget/TextView;
iget-object v2, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v2, v2, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mMessage:Ljava/lang/CharSequence;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_22
return-void
:cond_23
move v0, v1
goto :goto_12
:cond_25
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mMessage:Landroid/widget/TextView;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_22
.end method
.method private setupTitle()V
.registers 5
const/16 v3, 0x8
const/4 v1, 0x0
const/4 v2, 0x0
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mTitle:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mTitle:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDivider:Landroid/widget/ImageView;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_18
return-void
:cond_19
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mTitle:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDivider:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mIcon:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mTitle:Landroid/widget/TextView;
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mIcon:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
:cond_32
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mTitle:Landroid/widget/TextView;
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mTitle:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_18
.end method
.method private setupView()V
.registers 3
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mView:Landroid/view/View;
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mContentView:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mContentView:Landroid/widget/FrameLayout;
iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
goto :goto_6
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/alipay/android/app/widget/CustomAlertDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getLayout_alert_dialog()I
move-result v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setContentView(I)V
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getId_left_button()I
move-result v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mLeftButton:Landroid/widget/Button;
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getId_right_button()I
move-result v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mRightButton:Landroid/widget/Button;
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getId_dialog_split_v()I
move-result v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mButtonDivider:Landroid/view/View;
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getId_dialog_title()I
move-result v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mTitle:Landroid/widget/TextView;
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getId_dialog_message()I
move-result v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mMessage:Landroid/widget/TextView;
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getId_dialog_divider()I
move-result v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDivider:Landroid/widget/ImageView;
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getId_dialog_content_view()I
move-result v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mContentView:Landroid/widget/FrameLayout;
invoke-static {}, Lcom/alipay/android/app/lib/ResourceMap;->getId_dialog_button_group()I
move-result v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mButtonGroup:Landroid/view/View;
invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setupTitle()V
invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setupMessage()V
invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setupView()V
invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setupButtons()Z
const-string v1, " - Lcom/alipay/android/app/widget/CustomAlertDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
.registers 7
if-nez p4, :cond_a
if-eqz p3, :cond_a
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object p4
:cond_a
packed-switch p1, :pswitch_data_28
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "Button does not exist"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_16
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p2, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mPositiveButton:Ljava/lang/CharSequence;
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p4, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mButtonPositiveMessage:Landroid/os/Message;
:goto_1e
return-void
:pswitch_1f
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p2, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mNegativeButton:Ljava/lang/CharSequence;
iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->mDialogCache:Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;
iput-object p4, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$DialogCache;->mButtonNegativeMessage:Landroid/os/Message;
goto :goto_1e
:pswitch_data_28
.packed-switch -0x2
:pswitch_1f
:pswitch_16
.end packed-switch
.end method