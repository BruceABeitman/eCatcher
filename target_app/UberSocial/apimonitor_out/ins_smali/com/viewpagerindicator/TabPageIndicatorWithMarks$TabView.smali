.class public Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"
.field private a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
.field private b:I
.field private c:Landroid/widget/TextView;
.field private d:Landroid/widget/TextView;
.field private e:Landroid/view/View;
.field private f:Z
.field private g:I
.field private h:I
.field private i:I
.field private j:Z
.field private k:I
.field private l:Z
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method private a(I)V
.registers 4
const/16 v1, 0x8
if-lez p1, :cond_2e
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->d:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->d:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->d:Landroid/widget/TextView;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
:cond_18
const/16 v0, 0x64
if-ge p1, v0, :cond_26
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->d:Landroid/widget/TextView;
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_25
:cond_25
return-void
:cond_26
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->d:Landroid/widget/TextView;
const-string v1, "99+"
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_25
:cond_2e
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->d:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I
move-result v0
if-eq v0, v1, :cond_25
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->d:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_25
.end method
.method private c()Z
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
if-eqz v1, :cond_10
iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-static {v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->r(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)I
move-result v1
iget v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->b:I
if-ne v1, v2, :cond_10
const/4 v0, 0x1
:cond_10
return v0
.end method
.method private d()V
.registers 7
const/4 v5, 0x0
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c:Landroid/widget/TextView;
if-eqz v2, :cond_22
invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->b()Z
move-result v2
if-eqz v2, :cond_3b
iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c:Landroid/widget/TextView;
iget v3, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->k:I
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c:Landroid/widget/TextView;
invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c()Z
move-result v3
iget-boolean v4, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->l:Z
or-int/2addr v3, v4
if-eqz v3, :cond_39
:goto_1f
invoke-virtual {v2, v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
:goto_22
:cond_22
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->e:Landroid/view/View;
if-eqz v0, :cond_38
invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c()Z
move-result v0
if-eqz v0, :cond_61
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->e:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_31
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->e:Landroid/view/View;
iget v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->i:I
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
:cond_38
return-void
:cond_39
move v0, v1
goto :goto_1f
:cond_3b
invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c()Z
move-result v2
if-eqz v2, :cond_4e
iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c:Landroid/widget/TextView;
iget v3, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->g:I
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c:Landroid/widget/TextView;
invoke-virtual {v2, v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
goto :goto_22
:cond_4e
iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c:Landroid/widget/TextView;
iget v3, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->h:I
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c:Landroid/widget/TextView;
iget-boolean v3, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->l:Z
if-eqz v3, :cond_5f
:goto_5b
invoke-virtual {v2, v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
goto :goto_22
:cond_5f
move v0, v1
goto :goto_5b
:cond_61
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->e:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_31
.end method
.method public a()V
.registers 2
iget-boolean v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->f:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->d()V
invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->getUnreadCount()I
move-result v0
invoke-direct {p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a(I)V
goto :goto_4
.end method
.method public a(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;Ljava/lang/String;IIZIFZ)V
.registers 14
const/4 v4, 0x1
const/4 v1, -0x1
const/16 v3, 0xff
iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
iput p3, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->b:I
const v0, 0x1020014
invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c:Landroid/widget/TextView;
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c:Landroid/widget/TextView;
iget-boolean v2, p1, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->d:Z
if-eqz v2, :cond_1d
invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object p2
:cond_1d
invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
const/4 v0, 0x0
cmpl-float v0, p7, v0
if-lez v0, :cond_2f
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c:Landroid/widget/TextView;
invoke-virtual {v0, v4, p7}, Landroid/widget/TextView;->setTextSize(IF)V
:cond_2f
const v0, 0x7f0901d8
invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->e:Landroid/view/View;
const v0, 0x7f0901d7
invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->d:Landroid/widget/TextView;
invoke-direct {p0, p4}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a(I)V
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
if-eqz v0, :cond_74
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->t(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)I
move-result v0
:goto_50
iput v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->g:I
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
if-eqz v0, :cond_76
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->u(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)I
move-result v0
:goto_5c
iput v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->h:I
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
if-eqz v0, :cond_7d
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
iget v0, v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a:I
:goto_66
iput v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->i:I
iput-boolean p5, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->j:Z
iput p6, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->k:I
iput-boolean p8, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->l:Z
invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->d()V
iput-boolean v4, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->f:Z
return-void
:cond_74
move v0, v1
goto :goto_50
:cond_76
const/16 v0, 0xb4
invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
goto :goto_5c
:cond_7d
const v0, -0xffff01
goto :goto_66
.end method
.method protected b()Z
.registers 2
iget-boolean v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->j:Z
return v0
.end method
.method public getIndex()I
.registers 2
iget v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->b:I
return v0
.end method
.method public getUnreadCount()I
.registers 3
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->s(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Lcom/viewpagerindicator/j;
move-result-object v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->s(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Lcom/viewpagerindicator/j;
move-result-object v0
iget v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->b:I
invoke-interface {v0, v1}, Lcom/viewpagerindicator/j;->c(I)I
move-result v0
:goto_18
return v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public onMeasure(II)V
.registers 6
const/high16 v2, 0x4000
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
if-eq v0, v2, :cond_27
invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V
:goto_b
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
iget v0, v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c:I
if-lez v0, :cond_26
invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->getMeasuredWidth()I
move-result v0
iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
iget v1, v1, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c:I
if-le v0, v1, :cond_26
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
iget v0, v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c:I
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-super {p0, v0, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V
:cond_26
return-void
:cond_27
const/4 v0, 0x0
invoke-super {p0, v0, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V
goto :goto_b
.end method
.method public setTextSize(F)V
.registers 3
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->c:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V
return-void
.end method