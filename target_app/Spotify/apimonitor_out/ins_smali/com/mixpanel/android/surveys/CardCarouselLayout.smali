.class  Lcom/mixpanel/android/surveys/CardCarouselLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"
.field private static a:I
.field private static b:F
.field private static c:F
.field private static d:F
.field private final e:Ljava/util/List;
.field private f:Lcom/mixpanel/android/surveys/c;
.field private g:Lcom/mixpanel/android/surveys/c;
.field private h:Lcom/mixpanel/android/surveys/b;
.method static constructor <clinit>()V
.registers 2
const/high16 v1, 0x3f00
const/16 v0, 0x2d
sput v0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a:I
const v0, 0x3f4ccccd
sput v0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->b:F
sput v1, Lcom/mixpanel/android/surveys/CardCarouselLayout;->c:F
sput v1, Lcom/mixpanel/android/surveys/CardCarouselLayout;->d:F
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->e:Ljava/util/List;
const/4 v0, 0x0
iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->h:Lcom/mixpanel/android/surveys/b;
invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->e:Ljava/util/List;
const/4 v0, 0x0
iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->h:Lcom/mixpanel/android/surveys/b;
invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->e:Ljava/util/List;
const/4 v0, 0x0
iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->h:Lcom/mixpanel/android/surveys/b;
invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Landroid/content/Context;)V
return-void
.end method
.method static synthetic a(Lcom/mixpanel/android/surveys/CardCarouselLayout;)Lcom/mixpanel/android/surveys/b;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->h:Lcom/mixpanel/android/surveys/b;
return-object v0
.end method
.method private a(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x0
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/mixpanel/android/c;->e:I
invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/mixpanel/android/surveys/c;
invoke-direct {v2, p0, v1}, Lcom/mixpanel/android/surveys/c;-><init>(Lcom/mixpanel/android/surveys/CardCarouselLayout;Landroid/view/View;)V
iput-object v2, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->f:Lcom/mixpanel/android/surveys/c;
sget v2, Lcom/mixpanel/android/c;->e:I
invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/mixpanel/android/surveys/c;
invoke-direct {v2, p0, v0}, Lcom/mixpanel/android/surveys/c;-><init>(Lcom/mixpanel/android/surveys/CardCarouselLayout;Landroid/view/View;)V
iput-object v2, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->g:Lcom/mixpanel/android/surveys/c;
invoke-virtual {p0, v1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->addView(Landroid/view/View;)V
invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->addView(Landroid/view/View;)V
return-void
.end method
.method public final a(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->f:Lcom/mixpanel/android/surveys/c;
invoke-virtual {v0, p1, p2}, Lcom/mixpanel/android/surveys/c;->a(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->removeAllViews()V
iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->f:Lcom/mixpanel/android/surveys/c;
invoke-virtual {v0}, Lcom/mixpanel/android/surveys/c;->a()Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->g:Lcom/mixpanel/android/surveys/c;
invoke-virtual {v0}, Lcom/mixpanel/android/surveys/c;->a()Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->invalidate()V
return-void
.end method
.method public final a(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;)V
.registers 17
iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->g:Lcom/mixpanel/android/surveys/c;
iget-object v1, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->f:Lcom/mixpanel/android/surveys/c;
iput-object v1, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->g:Lcom/mixpanel/android/surveys/c;
iput-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->f:Lcom/mixpanel/android/surveys/c;
iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->f:Lcom/mixpanel/android/surveys/c;
invoke-virtual {v0, p1, p2}, Lcom/mixpanel/android/surveys/c;->a(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->g:Lcom/mixpanel/android/surveys/c;
invoke-virtual {v0}, Lcom/mixpanel/android/surveys/c;->a()Landroid/view/View;
move-result-object v11
iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->f:Lcom/mixpanel/android/surveys/c;
invoke-virtual {v0}, Lcom/mixpanel/android/surveys/c;->a()Landroid/view/View;
move-result-object v12
const/4 v0, 0x0
invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V
const/4 v0, 0x0
invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V
const/4 v1, 0x0
const/4 v0, 0x0
sget-object v2, Lcom/mixpanel/android/surveys/CardCarouselLayout$2;->a:[I
invoke-virtual/range {p3 .. p3}, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_1ac
:goto_2e
new-instance v2, Lcom/mixpanel/android/surveys/CardCarouselLayout$1;
invoke-direct {v2, p0, v11}, Lcom/mixpanel/android/surveys/CardCarouselLayout$1;-><init>(Lcom/mixpanel/android/surveys/CardCarouselLayout;Landroid/view/View;)V
invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {v11, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
invoke-virtual {v12, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->invalidate()V
return-void
:pswitch_40
new-instance v10, Landroid/view/animation/AnimationSet;
const/4 v0, 0x0
invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V
new-instance v0, Landroid/view/animation/RotateAnimation;
const/4 v1, 0x0
sget v2, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a:I
neg-int v2, v2
int-to-float v2, v2
const/4 v3, 0x1
sget v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;->c:F
const/4 v5, 0x1
sget v6, Lcom/mixpanel/android/surveys/CardCarouselLayout;->d:F
invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V
const-wide/16 v1, 0x14a
invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V
const-wide/16 v1, 0x84
invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V
invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v0, Landroid/view/animation/ScaleAnimation;
const/high16 v1, 0x3f80
sget v2, Lcom/mixpanel/android/surveys/CardCarouselLayout;->b:F
const/high16 v3, 0x3f80
sget v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;->b:F
const/4 v5, 0x1
sget v6, Lcom/mixpanel/android/surveys/CardCarouselLayout;->c:F
const/4 v7, 0x1
sget v8, Lcom/mixpanel/android/surveys/CardCarouselLayout;->d:F
invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V
const-wide/16 v1, 0x14a
invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
const-wide/16 v1, 0x84
invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V
invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v0, Landroid/view/animation/TranslateAnimation;
const/4 v1, 0x2
const/high16 v2, -0x4080
const/4 v3, 0x2
const v4, -0x3feccccd
const/4 v5, 0x2
const/4 v6, 0x0
const/4 v7, 0x2
const/4 v8, 0x0
invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V
new-instance v1, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const-wide/16 v1, 0x14a
invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V
invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v9, Landroid/view/animation/AnimationSet;
const/4 v0, 0x0
invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V
new-instance v0, Landroid/view/animation/RotateAnimation;
sget v1, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a:I
int-to-float v1, v1
const/4 v2, 0x0
const/4 v3, 0x1
sget v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;->c:F
const/4 v5, 0x1
sget v6, Lcom/mixpanel/android/surveys/CardCarouselLayout;->d:F
invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V
const-wide/16 v1, 0xc6
invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V
invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v0, Landroid/view/animation/ScaleAnimation;
sget v1, Lcom/mixpanel/android/surveys/CardCarouselLayout;->b:F
const/high16 v2, 0x3f80
sget v3, Lcom/mixpanel/android/surveys/CardCarouselLayout;->b:F
const/high16 v4, 0x3f80
const/4 v5, 0x1
sget v6, Lcom/mixpanel/android/surveys/CardCarouselLayout;->c:F
const/4 v7, 0x1
sget v8, Lcom/mixpanel/android/surveys/CardCarouselLayout;->d:F
invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V
const-wide/16 v1, 0xc6
invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v0, Landroid/view/animation/TranslateAnimation;
const/4 v1, 0x2
const v2, 0x3fa66666
const/4 v3, 0x2
const/4 v4, 0x0
const/4 v5, 0x2
const/4 v6, 0x0
const/4 v7, 0x2
const/4 v8, 0x0
invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V
const-wide/16 v1, 0x14a
invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V
invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
move-object v0, v9
move-object v1, v10
goto/16 :goto_2e
:pswitch_f6
new-instance v10, Landroid/view/animation/AnimationSet;
const/4 v0, 0x0
invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V
new-instance v0, Landroid/view/animation/RotateAnimation;
const/4 v1, 0x0
sget v2, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a:I
int-to-float v2, v2
const/4 v3, 0x1
sget v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;->c:F
const/4 v5, 0x1
sget v6, Lcom/mixpanel/android/surveys/CardCarouselLayout;->d:F
invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V
const-wide/16 v1, 0xc6
invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V
const-wide/16 v1, 0x84
invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V
invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v0, Landroid/view/animation/ScaleAnimation;
const/high16 v1, 0x3f80
sget v2, Lcom/mixpanel/android/surveys/CardCarouselLayout;->b:F
const/high16 v3, 0x3f80
sget v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;->b:F
const/4 v5, 0x1
sget v6, Lcom/mixpanel/android/surveys/CardCarouselLayout;->c:F
const/4 v7, 0x1
sget v8, Lcom/mixpanel/android/surveys/CardCarouselLayout;->d:F
invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V
const-wide/16 v1, 0xc6
invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
const-wide/16 v1, 0x84
invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V
invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v0, Landroid/view/animation/TranslateAnimation;
const/4 v1, 0x2
const/high16 v2, -0x4080
const/4 v3, 0x2
const v4, 0x3e99999a
const/4 v5, 0x2
const/4 v6, 0x0
const/4 v7, 0x2
const/4 v8, 0x0
invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V
new-instance v1, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const-wide/16 v1, 0x14a
invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V
invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v9, Landroid/view/animation/AnimationSet;
const/4 v0, 0x0
invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V
new-instance v0, Landroid/view/animation/RotateAnimation;
sget v1, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a:I
neg-int v1, v1
int-to-float v1, v1
const/4 v2, 0x0
const/4 v3, 0x1
sget v4, Lcom/mixpanel/android/surveys/CardCarouselLayout;->c:F
const/4 v5, 0x1
sget v6, Lcom/mixpanel/android/surveys/CardCarouselLayout;->d:F
invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V
const-wide/16 v1, 0xc6
invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V
invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v0, Landroid/view/animation/ScaleAnimation;
sget v1, Lcom/mixpanel/android/surveys/CardCarouselLayout;->b:F
const/high16 v2, 0x3f80
sget v3, Lcom/mixpanel/android/surveys/CardCarouselLayout;->b:F
const/high16 v4, 0x3f80
const/4 v5, 0x1
sget v6, Lcom/mixpanel/android/surveys/CardCarouselLayout;->c:F
const/4 v7, 0x1
sget v8, Lcom/mixpanel/android/surveys/CardCarouselLayout;->d:F
invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V
const-wide/16 v1, 0xc6
invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v0, Landroid/view/animation/TranslateAnimation;
const/4 v1, 0x2
const v2, -0x4059999a
const/4 v3, 0x2
const/4 v4, 0x0
const/4 v5, 0x2
const/4 v6, 0x0
const/4 v7, 0x2
const/4 v8, 0x0
invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V
const-wide/16 v1, 0x14a
invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V
invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
move-object v0, v9
move-object v1, v10
goto/16 :goto_2e
:pswitch_data_1ac
.packed-switch 0x1
:pswitch_40
:pswitch_f6
.end packed-switch
.end method
.method public final a(Lcom/mixpanel/android/surveys/b;)V
.registers 2
iput-object p1, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->h:Lcom/mixpanel/android/surveys/b;
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 11
const/16 v4, 0x8
const/4 v1, 0x0
iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->f:Lcom/mixpanel/android/surveys/c;
invoke-virtual {v0}, Lcom/mixpanel/android/surveys/c;->a()Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
move-result v0
if-eq v0, v4, :cond_33
invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
invoke-virtual {v2, v1, v1, v0, v3}, Landroid/view/View;->layout(IIII)V
:goto_1a
iget-object v2, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->g:Lcom/mixpanel/android/surveys/c;
invoke-virtual {v2}, Lcom/mixpanel/android/surveys/c;->a()Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
move-result v3
if-eq v3, v4, :cond_32
invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I
move-result v4
add-int/2addr v3, v0
invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V
:cond_32
return-void
:cond_33
move v0, v1
goto :goto_1a
.end method
.method protected onMeasure(II)V
.registers 15
const/high16 v11, 0x4000
const/4 v10, -0x1
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getChildCount()I
move-result v5
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
if-ne v0, v11, :cond_14
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
if-eq v0, v11, :cond_60
:cond_14
const/4 v0, 0x1
:goto_15
iget-object v2, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->e:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->clear()V
move v4, v1
move v2, v1
move v3, v1
:goto_1d
if-ge v4, v5, :cond_62
invoke-virtual {p0, v4}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getChildAt(I)Landroid/view/View;
move-result-object v6
invoke-virtual {v6}, Landroid/view/View;->getVisibility()I
move-result v7
const/16 v8, 0x8
if-eq v7, v8, :cond_5d
invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v7
iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-static {p1, v1, v8}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getChildMeasureSpec(III)I
move-result v8
iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-static {p2, v1, v9}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getChildMeasureSpec(III)I
move-result v9
invoke-virtual {v6, v8, v9}, Landroid/view/View;->measure(II)V
invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I
move-result v8
invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I
move-result v2
invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I
move-result v8
invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I
move-result v3
if-eqz v0, :cond_5d
iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I
if-eq v8, v10, :cond_58
iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I
if-ne v7, v10, :cond_5d
:cond_58
iget-object v7, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->e:Ljava/util/List;
invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_5d
add-int/lit8 v4, v4, 0x1
goto :goto_1d
:cond_60
move v0, v1
goto :goto_15
:cond_62
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getSuggestedMinimumHeight()I
move-result v0
invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getSuggestedMinimumWidth()I
move-result v3
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v2
invoke-static {v2, p1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->resolveSize(II)I
move-result v2
invoke-static {v0, p2}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->resolveSize(II)I
move-result v0
invoke-virtual {p0, v2, v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->setMeasuredDimension(II)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_83
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_bd
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I
if-ne v2, v10, :cond_af
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getMeasuredWidth()I
move-result v2
invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
:goto_9f
iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I
if-ne v5, v10, :cond_b6
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getMeasuredHeight()I
move-result v3
invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
:goto_ab
invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V
goto :goto_83
:cond_af
iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-static {p1, v1, v2}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getChildMeasureSpec(III)I
move-result v2
goto :goto_9f
:cond_b6
iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-static {p2, v1, v3}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getChildMeasureSpec(III)I
move-result v3
goto :goto_ab
:cond_bd
return-void
.end method
.method public shouldDelayChildPressedState()Z
.registers 2
const/4 v0, 0x0
return v0
.end method