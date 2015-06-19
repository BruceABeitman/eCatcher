.class public Lcom/spotify/android/paste/widget/HeaderView;
.super Landroid/view/ViewGroup;
.source "SourceFile"
.field private final a:Landroid/support/v4/view/ViewPager;
.field private final b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
.field private c:Landroid/widget/LinearLayout;
.field private d:Landroid/widget/ImageView;
.field private e:Lcom/spotify/android/paste/widget/internal/a;
.field private f:Landroid/widget/TextView;
.field private g:Landroid/view/View;
.field private h:Lcom/spotify/android/paste/widget/d;
.field private i:Landroid/support/v4/view/ah;
.field private j:Landroid/view/GestureDetector;
.field private k:Z
.field private l:Landroid/util/TypedValue;
.field private m:Landroid/database/DataSetObserver;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/HeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lcom/spotify/android/paste/b;->o:I
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/HeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/4 v3, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/spotify/android/paste/widget/d;
invoke-direct {v0, p0, v3}, Lcom/spotify/android/paste/widget/d;-><init>(Lcom/spotify/android/paste/widget/HeaderView;B)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->h:Lcom/spotify/android/paste/widget/d;
new-instance v0, Landroid/util/TypedValue;
invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->l:Landroid/util/TypedValue;
new-instance v0, Lcom/spotify/android/paste/widget/HeaderView$1;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/HeaderView$1;-><init>(Lcom/spotify/android/paste/widget/HeaderView;)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->m:Landroid/database/DataSetObserver;
const-class v0, Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v0, p0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
new-instance v0, Lcom/spotify/android/paste/widget/HeaderView$2;
invoke-direct {v0, p0, p1}, Lcom/spotify/android/paste/widget/HeaderView$2;-><init>(Lcom/spotify/android/paste/widget/HeaderView;Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->a:Landroid/support/v4/view/ViewPager;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/spotify/android/paste/d;->d:I
iget-object v2, p0, Lcom/spotify/android/paste/widget/HeaderView;->a:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->c:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->c:Landroid/widget/LinearLayout;
sget v1, Lcom/spotify/android/paste/c;->f:I
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->d:Landroid/widget/ImageView;
new-instance v1, Lcom/spotify/android/paste/widget/internal/a;
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->c:Landroid/widget/LinearLayout;
sget v2, Lcom/spotify/android/paste/c;->g:I
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-direct {v1, v0}, Lcom/spotify/android/paste/widget/internal/a;-><init>(Landroid/view/ViewGroup;)V
iput-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->e:Lcom/spotify/android/paste/widget/internal/a;
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->c:Landroid/widget/LinearLayout;
sget v1, Lcom/spotify/android/paste/c;->r:I
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->f:Landroid/widget/TextView;
sget-object v0, Lcom/spotify/android/paste/e;->m:[I
invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/spotify/android/paste/widget/HeaderView;->a(Ljava/lang/String;)V
const/4 v1, 0x1
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
if-eqz v1, :cond_77
iget-object v2, p0, Lcom/spotify/android/paste/widget/HeaderView;->f:Landroid/widget/TextView;
invoke-static {p1, v2, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V
:cond_77
const/4 v1, 0x2
iget-object v2, p0, Lcom/spotify/android/paste/widget/HeaderView;->l:Landroid/util/TypedValue;
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
move-result v1
if-nez v1, :cond_83
const/4 v1, 0x0
iput-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->l:Landroid/util/TypedValue;
:cond_83
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->a:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->h:Lcom/spotify/android/paste/widget/d;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ah;)V
const/high16 v0, 0x4100
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v0
new-instance v1, Lcom/spotify/android/paste/widget/ViewPagerIndicator;
invoke-direct {v1, p1}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
invoke-virtual {v1, v0, v3, v0, v0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->setPadding(IIII)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->a:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->a(Landroid/support/v4/view/ViewPager;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->a:Landroid/support/v4/view/ViewPager;
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/HeaderView;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/HeaderView;->addView(Landroid/view/View;)V
new-instance v0, Landroid/view/GestureDetector;
new-instance v1, Lcom/spotify/android/paste/widget/HeaderView$3;
invoke-direct {v1, p0}, Lcom/spotify/android/paste/widget/HeaderView$3;-><init>(Lcom/spotify/android/paste/widget/HeaderView;)V
invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->j:Landroid/view/GestureDetector;
return-void
.end method
.method static synthetic a(Lcom/spotify/android/paste/widget/HeaderView;)Lcom/spotify/android/paste/widget/ViewPagerIndicator;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/android/paste/widget/HeaderView;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/android/paste/widget/HeaderView;->k:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/android/paste/widget/HeaderView;)Lcom/spotify/android/paste/widget/d;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->h:Lcom/spotify/android/paste/widget/d;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/android/paste/widget/HeaderView;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->k:Z
return v0
.end method
.method static synthetic d(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/view/GestureDetector;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->j:Landroid/view/GestureDetector;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/support/v4/view/ah;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->i:Landroid/support/v4/view/ah;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/android/paste/widget/HeaderView;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->c:Landroid/widget/LinearLayout;
return-object v0
.end method
.method public final a()Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->d:Landroid/widget/ImageView;
return-object v0
.end method
.method public final a(Landroid/support/v4/view/ah;)V
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->i:Landroid/support/v4/view/ah;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->i:Landroid/support/v4/view/ah;
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->m:Landroid/database/DataSetObserver;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ah;->b(Landroid/database/DataSetObserver;)V
:cond_b
iput-object p1, p0, Lcom/spotify/android/paste/widget/HeaderView;->i:Landroid/support/v4/view/ah;
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->i:Landroid/support/v4/view/ah;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->i:Landroid/support/v4/view/ah;
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->m:Landroid/database/DataSetObserver;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ah;->a(Landroid/database/DataSetObserver;)V
:cond_18
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->h:Lcom/spotify/android/paste/widget/d;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/d;->c()V
return-void
.end method
.method public final a(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->e:Lcom/spotify/android/paste/widget/internal/a;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/internal/a;->a(Landroid/view/View;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->f:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->f:Landroid/widget/TextView;
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_13
const/16 v0, 0x8
:goto_f
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V
return-void
:cond_13
const/4 v0, 0x0
goto :goto_f
.end method
.method public final b(Landroid/view/View;)V
.registers 5
const/4 v2, -0x2
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->g:Landroid/view/View;
if-ne v0, p1, :cond_6
:cond_5
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->g:Landroid/view/View;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->c:Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->g:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
:cond_11
iput-object p1, p0, Lcom/spotify/android/paste/widget/HeaderView;->g:Landroid/view/View;
if-eqz p1, :cond_5
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/high16 v1, 0x4120
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/HeaderView;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->c:Landroid/widget/LinearLayout;
invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
goto :goto_5
.end method
.method protected onLayout(ZIIII)V
.registers 11
const/4 v4, 0x0
sub-int v0, p4, p2
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->a:Landroid/support/v4/view/ViewPager;
iget-object v2, p0, Lcom/spotify/android/paste/widget/HeaderView;->a:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I
move-result v2
iget-object v3, p0, Lcom/spotify/android/paste/widget/HeaderView;->a:Landroid/support/v4/view/ViewPager;
invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I
move-result v3
invoke-virtual {v1, v4, v4, v2, v3}, Landroid/support/v4/view/ViewPager;->layout(IIII)V
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->getMeasuredWidth()I
move-result v1
sub-int/2addr v0, v1
div-int/lit8 v0, v0, 0x2
add-int/lit8 v0, v0, 0x0
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->a:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I
move-result v1
add-int/lit8 v1, v1, 0x0
iget-object v2, p0, Lcom/spotify/android/paste/widget/HeaderView;->b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
iget-object v3, p0, Lcom/spotify/android/paste/widget/HeaderView;->b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->getMeasuredWidth()I
move-result v3
add-int/2addr v3, v0
iget-object v4, p0, Lcom/spotify/android/paste/widget/HeaderView;->b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
invoke-virtual {v4}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->getMeasuredHeight()I
move-result v4
add-int/2addr v4, v1
invoke-virtual {v2, v0, v1, v3, v4}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->layout(IIII)V
return-void
.end method
.method protected onMeasure(II)V
.registers 8
const/high16 v4, 0x4000
const/4 v3, 0x0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->l:Landroid/util/TypedValue;
if-eqz v1, :cond_7b
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->l:Landroid/util/TypedValue;
int-to-float v2, v0
int-to-float v0, v0
invoke-virtual {v1, v2, v0}, Landroid/util/TypedValue;->getFraction(FF)F
move-result v0
float-to-int v0, v0
:goto_14
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->d:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->d:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->measure(II)V
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
if-eqz v0, :cond_46
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->getMeasuredHeight()I
move-result v1
sub-int/2addr v0, v1
invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result p2
:cond_46
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->c:Landroid/widget/LinearLayout;
invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->measure(II)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->a:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->c:Landroid/widget/LinearLayout;
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I
move-result v1
invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
iget-object v2, p0, Lcom/spotify/android/paste/widget/HeaderView;->c:Landroid/widget/LinearLayout;
invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I
move-result v2
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->measure(II)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/HeaderView;->c:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I
move-result v0
iget-object v1, p0, Lcom/spotify/android/paste/widget/HeaderView;->c:Landroid/widget/LinearLayout;
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I
move-result v1
iget-object v2, p0, Lcom/spotify/android/paste/widget/HeaderView;->b:Lcom/spotify/android/paste/widget/ViewPagerIndicator;
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->getMeasuredHeight()I
move-result v2
add-int/2addr v1, v2
invoke-virtual {p0, v0, v1}, Lcom/spotify/android/paste/widget/HeaderView;->setMeasuredDimension(II)V
return-void
:cond_7b
div-int/lit8 v0, v0, 0x2
goto :goto_14
.end method