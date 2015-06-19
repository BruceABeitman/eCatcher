.class public Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
.super Ljava/lang/Object;
.source "BSAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    return-void
.end method


# virtual methods
.method public create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    #getter for: Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->access$0(Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)Lcom/pinguo/camera360/ui/dialog/BSAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->apply(Lcom/pinguo/camera360/ui/dialog/BSAlertController;)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_2d
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p3, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mForceInverseBackground:Z

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;Ljava/lang/String;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mRichText:Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->gravity:I

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p3, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 7

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p4, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p3, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p3, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mRecycleOnMeasure:Z

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p3, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 7

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p4, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p3, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p3, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/Object;ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p3, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleDesc(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mTitleDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleDesc(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mTitleDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
    .registers 8

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mViewSpacingSpecified:Z

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput p2, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mViewSpacingLeft:I

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput p3, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mViewSpacingTop:I

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput p4, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mViewSpacingRight:I

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->p:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput p5, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mViewSpacingBottom:I

    return-object p0
.end method

.method public show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    return-object v0
.end method
