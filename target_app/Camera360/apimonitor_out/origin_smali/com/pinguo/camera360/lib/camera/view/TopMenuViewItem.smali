.class public Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
.super Ljava/lang/Object;
.source "TopMenuViewItem.java"


# instance fields
.field private mCheckView:Landroid/widget/CheckBox;

.field private mImageView:Landroid/widget/ImageView;

.field private mRotateImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;

.field private mSwitchView:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;

.field private mToggleCloudImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ImageView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mSwitchView:Landroid/view/View;

    iput-object p2, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mCheckView:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mSwitchView:Landroid/view/View;

    iput-object p2, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mRotateImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mCheckView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mRotateImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    return-object v0
.end method

.method public getSwichView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mSwitchView:Landroid/view/View;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mCheckView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mCheckView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setAlpha(F)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mSwitchView:Landroid/view/View;

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mSwitchView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mRotateImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    if-eqz v0, :cond_1a

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mRotateImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setAlpha(F)V

    :cond_1a
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mCheckView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mCheckView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_9
    return-void
.end method

.method public setClickable(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mSwitchView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mSwitchView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_9
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mRotateImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mRotateImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setClickable(Z)V

    :cond_12
    return-void
.end method

.method public setCompatibleAlpha(F)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mRotateImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mRotateImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    invoke-static {v0, p1}, Lcom/pinguo/lib/util/ViewUtils;->setViewAlpha(Landroid/view/View;F)V

    :cond_9
    return-void
.end method

.method public setEnabled(Z)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setClickable(Z)V

    if-eqz p1, :cond_1b

    const/high16 v0, 0x3f80

    :goto_7
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setCompatibleAlpha(F)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1a

    if-nez p1, :cond_1f

    sget-object v2, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    :goto_15
    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1a
    return-void

    :cond_1b
    const v0, 0x3e3851ec

    goto :goto_7

    :cond_1f
    sget-object v2, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    aget-object v1, v2, v3

    goto :goto_15
.end method

.method public setImageResource(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mSwitchView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mSwitchView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mRotateImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mRotateImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method
