.class public Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mParent:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

.field private mTab:Landroid/support/v7/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method attach(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/ActionBar$Tab;Z)V
    .registers 5

    iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mParent:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    if-eqz p3, :cond_b

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public bindTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public getTab()Landroid/support/v7/app/ActionBar$Tab;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    return-object v0
.end method

.method public onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mParent:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mParent:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    iget v0, v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    :goto_b
    if-lez v0, :cond_1c

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_1c

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_1c
    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public update()V
    .registers 15

    const/16 v13, 0x10

    const/4 v12, 0x0

    const/16 v9, 0x8

    const/4 v11, -0x2

    const/4 v10, 0x0

    iget-object v5, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_1f

    if-eqz v1, :cond_1c

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1c
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    :cond_1f
    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_2a

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2a
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_38

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v8, :cond_44

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v8}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    iput-object v10, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    :cond_44
    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v2, :cond_b1

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v8, :cond_6a

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3, v12}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    iput-object v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    :cond_6a
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_74
    :goto_74
    if-eqz v6, :cond_c0

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v8, :cond_99

    new-instance v7, Landroid/support/v7/internal/widget/CompatTextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v7, v8, v10, v9}, Landroid/support/v7/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v7}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    iput-object v7, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    :cond_99
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a3
    :goto_a3
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_38

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_38

    :cond_b1
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_74

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_74

    :cond_c0
    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_a3

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a3
.end method
