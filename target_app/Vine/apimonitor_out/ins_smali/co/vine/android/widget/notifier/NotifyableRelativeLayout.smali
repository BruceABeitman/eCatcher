.class public Lco/vine/android/widget/notifier/NotifyableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "NotifyableRelativeLayout.java"
.field private mCount:I
.field private mListener:Lco/vine/android/widget/notifier/NotifyableRelativeLayout$NotifierClickListener;
.field private mNotificationMargin:I
.field private mVineGreen:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, p1}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->init(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0, p1}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->init(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-virtual {p0, p1}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->init(Landroid/content/Context;)V
return-void
.end method
.method static synthetic access$000(Lco/vine/android/widget/notifier/NotifyableRelativeLayout;)Lco/vine/android/widget/notifier/NotifyableRelativeLayout$NotifierClickListener;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->mListener:Lco/vine/android/widget/notifier/NotifyableRelativeLayout$NotifierClickListener;
return-object v0
.end method
.method static synthetic access$100(Lco/vine/android/widget/notifier/NotifyableRelativeLayout;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->hideNotification()V
return-void
.end method
.method private hideNotification()V
.registers 5
const v1, 0x7f0a00f9
invoke-virtual {p0, v1}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v1
const-wide/16 v2, 0x3e8
invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v1
new-instance v2, Lco/vine/android/recorder/ViewGoneAnimationListener;
invoke-direct {v2, v0}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method private showNotification()V
.registers 3
const v1, 0x7f0a00f9
invoke-virtual {p0, v1}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public indicate(I)V
.registers 8
if-gtz p1, :cond_8
invoke-direct {p0}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->hideNotification()V
:goto_5
iput p1, p0, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->mCount:I
return-void
:cond_8
const v1, 0x7f0a00f9
invoke-virtual {p0, v1}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {p0}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->getResources()Landroid/content/res/Resources;
move-result-object v1
const/high16 v2, 0x7f0d
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-direct {p0}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->showNotification()V
goto :goto_5
.end method
.method public init(Landroid/content/Context;)V
.registers 9
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const-string v5, "layout_inflater"
invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/LayoutInflater;
const v5, 0x7f030042
const/4 v6, 0x0
invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v4
const v5, 0x7f0a00f9
invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
const v5, 0x7f020289
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
const v5, 0x7f090096
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I
move-result v5
iput v5, p0, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->mVineGreen:I
iget v5, p0, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->mVineGreen:I
sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
invoke-static {v3, v0}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0, v4}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->addView(Landroid/view/View;)V
const v5, 0x7f0b0084
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v5
const v6, 0x7f0b005f
invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v6
add-int/2addr v5, v6
iput v5, p0, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->mNotificationMargin:I
new-instance v5, Lco/vine/android/widget/notifier/NotifyableRelativeLayout$1;
invoke-direct {v5, p0}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout$1;-><init>(Lco/vine/android/widget/notifier/NotifyableRelativeLayout;)V
invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 11
const/4 v1, 0x0
:goto_1
invoke-virtual {p0}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->getChildCount()I
move-result v3
if-ge v1, v3, :cond_29
invoke-virtual {p0, v1}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getId()I
move-result v3
const v4, 0x7f0a00f8
if-ne v3, v4, :cond_26
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;
const/16 v3, 0xa
invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
iget v3, p0, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->mNotificationMargin:I
iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->bringChildToFront(Landroid/view/View;)V
:cond_26
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_29
invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V
return-void
.end method
.method public personalizeColor(I)V
.registers 6
const v2, 0x7f0a00f9
invoke-virtual {p0, v2}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
invoke-virtual {p0}, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f020289
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iget v2, p0, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->mVineGreen:I
if-eq p1, v2, :cond_1f
const v2, 0x3e75c28f
invoke-static {p1, v2}, Lco/vine/android/util/Util;->getColorWithBlackPercentage(IF)I
move-result p1
:cond_1f
sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
invoke-static {v1, v0}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setNotifierListener(Lco/vine/android/widget/notifier/NotifyableRelativeLayout$NotifierClickListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/notifier/NotifyableRelativeLayout;->mListener:Lco/vine/android/widget/notifier/NotifyableRelativeLayout$NotifierClickListener;
return-void
.end method