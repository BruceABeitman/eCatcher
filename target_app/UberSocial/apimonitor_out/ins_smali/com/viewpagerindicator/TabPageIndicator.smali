.class public Lcom/viewpagerindicator/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"
.implements Lcom/viewpagerindicator/a;
.field  a:Ljava/lang/Runnable;
.field  b:I
.field private c:Landroid/view/View$OnClickListener;
.field private d:Landroid/widget/LinearLayout;
.field private e:Landroid/support/v4/view/ViewPager;
.field private f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.field private g:Landroid/view/LayoutInflater;
.field private h:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/viewpagerindicator/TabPageIndicator$1;
invoke-direct {v0, p0}, Lcom/viewpagerindicator/TabPageIndicator$1;-><init>(Lcom/viewpagerindicator/TabPageIndicator;)V
iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->c:Landroid/view/View$OnClickListener;
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Landroid/view/LayoutInflater;
new-instance v0, Landroid/widget/LinearLayout;
invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Landroid/widget/LinearLayout;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
const/4 v2, -0x2
const/4 v3, -0x1
invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method static synthetic a(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
.registers 2
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;
return-object v0
.end method
.method private a(I)V
.registers 4
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/Runnable;
if-eqz v1, :cond_f
iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/Runnable;
invoke-virtual {p0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_f
new-instance v1, Lcom/viewpagerindicator/TabPageIndicator$2;
invoke-direct {v1, p0, v0}, Lcom/viewpagerindicator/TabPageIndicator$2;-><init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/view/View;)V
iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private a(Ljava/lang/String;I)V
.registers 9
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Landroid/view/LayoutInflater;
const v1, 0x7f030094
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/viewpagerindicator/TabPageIndicator$TabView;
invoke-virtual {v0, p0, p1, p2}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->a(Lcom/viewpagerindicator/TabPageIndicator;Ljava/lang/String;I)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->setFocusable(Z)V
iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->c:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Landroid/widget/LinearLayout;
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
const/4 v3, 0x0
const/4 v4, -0x1
const/high16 v5, 0x3f80
invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public a(Landroid/support/v4/view/ViewPager;I)V
.registers 3
invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V
invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V
return-void
.end method
.method public c()V
.registers 5
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;
move-result-object v0
check-cast v0, Lcom/viewpagerindicator/i;
move-object v1, v0
check-cast v1, Landroid/support/v4/view/PagerAdapter;
invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I
move-result v2
const/4 v1, 0x0
:goto_15
if-ge v1, v2, :cond_21
invoke-interface {v0, v1}, Lcom/viewpagerindicator/i;->a(I)Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v3, v1}, Lcom/viewpagerindicator/TabPageIndicator;->a(Ljava/lang/String;I)V
add-int/lit8 v1, v1, 0x1
goto :goto_15
:cond_21
iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I
if-le v0, v2, :cond_29
add-int/lit8 v0, v2, -0x1
iput v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I
:cond_29
iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I
invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V
invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->requestLayout()V
return-void
.end method
.method public onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/Runnable;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z
:cond_c
return-void
.end method
.method public onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/Runnable;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_c
return-void
.end method
.method public onMeasure(II)V
.registers 8
const/high16 v4, 0x4000
const/4 v1, 0x1
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v2
if-ne v2, v4, :cond_3f
move v0, v1
:goto_a
invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setFillViewport(Z)V
iget-object v3, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Landroid/widget/LinearLayout;
invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v3
if-le v3, v1, :cond_4a
if-eq v2, v4, :cond_1b
const/high16 v1, -0x8000
if-ne v2, v1, :cond_4a
:cond_1b
const/4 v1, 0x2
if-le v3, v1, :cond_41
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
int-to-float v1, v1
const v2, 0x3ecccccd
mul-float/2addr v1, v2
float-to-int v1, v1
iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:I
:goto_2a
invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I
move-result v1
invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V
invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I
move-result v2
if-eqz v0, :cond_3e
if-eq v1, v2, :cond_3e
iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I
invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V
:cond_3e
return-void
:cond_3f
const/4 v0, 0x0
goto :goto_a
:cond_41
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
div-int/lit8 v1, v1, 0x2
iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:I
goto :goto_2a
:cond_4a
const/4 v1, -0x1
iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:I
goto :goto_2a
.end method
.method public onPageScrollStateChanged(I)V
.registers 3
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V
:cond_9
return-void
.end method
.method public onPageScrolled(IFI)V
.registers 5
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V
:cond_9
return-void
.end method
.method public onPageSelected(I)V
.registers 3
invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V
:cond_c
return-void
.end method
.method public setCurrentItem(I)V
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;
if-nez v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "ViewPager has not been bound."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v3
move v2, v1
:goto_16
if-ge v2, v3, :cond_2f
iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v4
if-ne v2, p1, :cond_2d
const/4 v0, 0x1
:goto_21
invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V
if-eqz v0, :cond_29
invoke-direct {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->a(I)V
:cond_29
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_16
:cond_2d
move v0, v1
goto :goto_21
:cond_2f
return-void
.end method
.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
.registers 2
iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
return-void
.end method
.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
.registers 4
invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "ViewPager does not have adapter instance."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
instance-of v0, v0, Lcom/viewpagerindicator/i;
if-nez v0, :cond_1a
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "ViewPager adapter must implement TitleProvider to be used with TitlePageIndicator."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;
invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->c()V
return-void
.end method