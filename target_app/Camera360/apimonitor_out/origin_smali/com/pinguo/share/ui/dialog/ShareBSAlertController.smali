.class public Lcom/pinguo/share/ui/dialog/ShareBSAlertController;
.super Ljava/lang/Object;
.source "ShareBSAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;,
        Lcom/pinguo/share/ui/dialog/ShareBSAlertController$ButtonHandler;,
        Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;
    }
.end annotation


# static fields
.field private static final BIT_BUTTON_NEGATIVE:I = 0x2

.field private static final BIT_BUTTON_NEUTRAL:I = 0x4

.field private static final BIT_BUTTON_POSITIVE:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleDesc:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;

.field private msgGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mViewSpacingSpecified:Z

    iput v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconId:I

    iput v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mCheckedItem:I

    iput v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->msgGravity:I

    new-instance v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;

    invoke-direct {v0, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;-><init>(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)V

    iput-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    new-instance v0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;Landroid/widget/ListView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/content/DialogInterface;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;Landroid/widget/ListAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method static synthetic access$9(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mCheckedItem:I

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_8
    return v2

    :cond_9
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_f

    move v2, v3

    goto :goto_8

    :cond_f
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_16
    if-gtz v0, :cond_1a

    move v2, v3

    goto :goto_8

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_8
.end method

.method private centerButton(Landroid/widget/Button;)V
    .registers 8

    const/16 v5, 0x8

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f0a0092

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f0a0094

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZZLandroid/view/View;)V
    .registers 10

    if-nez p5, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mCheckedItem:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2a

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mCheckedItem:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mCheckedItem:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_2a
    return-void
.end method

.method private setupButtons()Z
    .registers 9

    const/4 v3, 0x1

    const v7, 0x7f0a0094

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_32
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f0a0095

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_5c
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f0a0093

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_86
    if-ne v1, v3, :cond_be

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->centerButton(Landroid/widget/Button;)V

    :cond_8d
    :goto_8d
    if-eqz v1, :cond_d0

    move v2, v3

    :goto_90
    return v2

    :cond_91
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_a0
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x2

    goto :goto_5c

    :cond_af
    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x4

    goto :goto_86

    :cond_be
    const/4 v2, 0x2

    if-ne v1, v2, :cond_c7

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_8d

    :cond_c7
    const/4 v2, 0x4

    if-ne v1, v2, :cond_8d

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_8d

    :cond_d0
    move v2, v4

    goto :goto_90
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .registers 8

    const v5, 0x7f0a008c

    const/16 v4, 0x21

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v2, 0x7f0a008d

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v1, :cond_29

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;

    if-eqz v1, :cond_77

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;

    iget v2, v2, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;->mRichTextSize:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;

    iget v2, v2, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;->mRichTextSizeStartIndex:I

    iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;

    iget v3, v3, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;->mRichTextSizeEndIndex:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;

    iget v2, v2, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;->mRichColor:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;

    iget v2, v2, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;->mRichTextColorStartIndex:I

    iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;

    iget v3, v3, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;->mRichTextColorEndIndex:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;

    :goto_6b
    iget v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->msgGravity:I

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    iget v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->msgGravity:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_28

    :cond_77
    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6b

    :cond_7f
    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_28

    :cond_9e
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_28
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .registers 12

    const v6, 0x7f0a0088

    const/16 v9, 0x8

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_23

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f0a0087

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    :goto_22
    return v1

    :cond_23
    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    const/4 v0, 0x0

    :goto_2c
    move v1, v0

    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f0a005e

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_55

    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_22

    :cond_53
    const/4 v0, 0x1

    goto :goto_2c

    :cond_55
    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconId:I

    if-lez v4, :cond_71

    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x1

    goto :goto_22

    :cond_71
    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7e

    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    goto :goto_22

    :cond_7e
    iget v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconId:I

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    goto/16 :goto_22
.end method

.method private setupView()V
    .registers 15

    const v13, 0x7f0a008e

    const/4 v12, -0x1

    const/16 v11, 0x8

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f0a0089

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitleDesc:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a8

    const-string/jumbo v0, ""

    iget-object v10, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitleDesc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitleDesc:Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_29
    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f0a008b

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    invoke-direct {p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setupButtons()Z

    move-result v4

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f0a0086

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v5

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f0a0090

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v4, :cond_65

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f00

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_65
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f0a008f

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mView:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_96

    iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mViewSpacingLeft:I

    iget v10, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mViewSpacingTop:I

    iget v11, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mViewSpacingRight:I

    iget v12, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v10, v11, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_96
    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_a3
    :goto_a3
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZZLandroid/view/View;)V

    return-void

    :cond_a8
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_29

    :cond_ad
    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a3
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3

    packed-switch p1, :pswitch_data_e

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_4

    :pswitch_8
    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_4

    :pswitch_b
    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_4

    :pswitch_data_e
    .packed-switch -0x3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRotateLayout()Lcom/pinguo/share/ui/dialog/ShareRotatable;
    .registers 4

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v2, 0x7f0a0084

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/share/ui/dialog/ShareRotateLayout;

    return-object v0
.end method

.method public installContent()V
    .registers 4

    const/high16 v2, 0x2

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_14
    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_19
    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f030018

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->setupView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 7

    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_a
    packed-switch p1, :pswitch_data_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16
    iput-object p2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    :goto_1a
    return-void

    :pswitch_1b
    iput-object p2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_1a

    :pswitch_20
    iput-object p2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_1a

    nop

    :pswitch_data_26
    .packed-switch -0x3
        :pswitch_20
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .registers 4

    iput p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconId:I

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    if-lez p1, :cond_10

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method

.method public setMessage(Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;Ljava/lang/CharSequence;)V
    .registers 5

    iput-object p2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessage:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mRichText:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_f
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessage:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->msgGravity:I

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    if-eq v0, p2, :cond_1a

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1a
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public setTitleDesc(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mTitleDesc:Ljava/lang/CharSequence;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .registers 7

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mViewSpacingSpecified:Z

    iput p2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mViewSpacingLeft:I

    iput p3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mViewSpacingTop:I

    iput p4, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mViewSpacingRight:I

    iput p5, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mViewSpacingBottom:I

    return-void
.end method
