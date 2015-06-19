.class public Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:Landroid/support/v7/app/d;
.field private b:Landroid/widget/TextView;
.field private c:Landroid/widget/ImageView;
.field private d:Landroid/view/View;
.field private e:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public a()V
.registers 11
const/16 v9, 0x10
const/4 v8, 0x0
const/16 v7, 0x8
const/4 v6, -0x2
const/4 v5, 0x0
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a:Landroid/support/v7/app/d;
invoke-virtual {v0}, Landroid/support/v7/app/d;->d()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_39
invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eq v0, p0, :cond_1f
if-eqz v0, :cond_1c
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_1c
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V
:cond_1f
iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->d:Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->b:Landroid/widget/TextView;
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->b:Landroid/widget/TextView;
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
:cond_2a
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c:Landroid/widget/ImageView;
if-eqz v0, :cond_38
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c:Landroid/widget/ImageView;
invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c:Landroid/widget/ImageView;
invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_38
:goto_38
return-void
:cond_39
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->d:Landroid/view/View;
if-eqz v1, :cond_44
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->d:Landroid/view/View;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V
iput-object v5, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->d:Landroid/view/View;
:cond_44
invoke-virtual {v0}, Landroid/support/v7/app/d;->b()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0}, Landroid/support/v7/app/d;->c()Ljava/lang/CharSequence;
move-result-object v2
if-eqz v1, :cond_b1
iget-object v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c:Landroid/widget/ImageView;
if-nez v3, :cond_6a
new-instance v3, Landroid/widget/ImageView;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;
move-result-object v4
invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0, v3, v8}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V
iput-object v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c:Landroid/widget/ImageView;
:cond_6a
iget-object v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c:Landroid/widget/ImageView;
invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c:Landroid/widget/ImageView;
invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_74
:goto_74
if-eqz v2, :cond_c0
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->b:Landroid/widget/TextView;
if-nez v1, :cond_99
new-instance v1, Landroid/support/v7/internal/widget/CompatTextView;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;
move-result-object v3
sget v4, Landroid/support/v7/a/d;->actionBarTabTextStyle:I
invoke-direct {v1, v3, v5, v4}, Landroid/support/v7/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->b:Landroid/widget/TextView;
:cond_99
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->b:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->b:Landroid/widget/TextView;
invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V
:goto_a3
:cond_a3
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c:Landroid/widget/ImageView;
if-eqz v1, :cond_38
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/support/v7/app/d;->g()Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_38
:cond_b1
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c:Landroid/widget/ImageView;
if-eqz v1, :cond_74
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c:Landroid/widget/ImageView;
invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c:Landroid/widget/ImageView;
invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_74
:cond_c0
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->b:Landroid/widget/TextView;
if-eqz v1, :cond_a3
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->b:Landroid/widget/TextView;
invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->b:Landroid/widget/TextView;
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_a3
.end method
.method public a(Landroid/support/v7/app/d;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a:Landroid/support/v7/app/d;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a()V
return-void
.end method
.method  a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/d;Z)V
.registers 5
iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->e:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
iput-object p2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a:Landroid/support/v7/app/d;
if-eqz p3, :cond_b
const/16 v0, 0x13
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V
:cond_b
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a()V
return-void
.end method
.method public getTab()Landroid/support/v7/app/d;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a:Landroid/support/v7/app/d;
return-object v0
.end method
.method public onMeasure(II)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->e:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v0, :cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->e:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
iget v0, v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I
:goto_b
if-lez v0, :cond_1c
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I
move-result v1
if-le v1, v0, :cond_1c
const/high16 v1, 0x4000
invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
:cond_1c
return-void
:cond_1d
const/4 v0, 0x0
goto :goto_b
.end method