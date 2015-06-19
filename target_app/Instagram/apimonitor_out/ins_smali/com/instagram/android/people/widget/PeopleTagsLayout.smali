.class public Lcom/instagram/android/people/widget/PeopleTagsLayout;
.super Landroid/view/ViewGroup;
.source "PeopleTagsLayout.java"
.field protected a:Z
.field private b:Lcom/instagram/android/people/widget/m;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a:Z
return-void
.end method
.method private a()V
.registers 12
const/4 v4, 0x0
invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getOverlaps()Ljava/util/List;
move-result-object v0
const/16 v1, 0x14
new-array v5, v1, [I
const/16 v1, 0x15
new-array v6, v1, [I
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_11
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_53
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
new-instance v1, Lcom/instagram/android/people/widget/j;
invoke-direct {v1, p0}, Lcom/instagram/android/people/widget/j;-><init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;)V
invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
const/4 v1, -0x1
aput v1, v6, v4
move v2, v4
:goto_29
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-ge v2, v1, :cond_11
invoke-direct {p0, v0, v2, v2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Ljava/util/List;II)[I
move-result-object v1
move-object v3, v1
move v1, v2
:goto_35
aget v8, v3, v4
aget v9, v6, v1
if-ge v8, v9, :cond_44
add-int/lit8 v1, v1, -0x1
aget v1, v5, v1
invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Ljava/util/List;II)[I
move-result-object v3
goto :goto_35
:cond_44
add-int/lit8 v8, v2, 0x1
aget v9, v3, v4
const/4 v10, 0x1
aget v3, v3, v10
add-int/2addr v3, v9
aput v3, v6, v8
aput v1, v5, v2
add-int/lit8 v2, v2, 0x1
goto :goto_29
:cond_53
return-void
.end method
.method static synthetic a(Lcom/instagram/android/people/widget/PeopleTagsLayout;)V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setTagsLayoutListener(Lcom/instagram/android/people/widget/m;)V
return-void
.end method
.method protected static a(Lcom/instagram/android/people/widget/c;Z)V
.registers 9
const/high16 v2, 0x3f80
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getAbsoluteTagPosition()Landroid/graphics/PointF;
move-result-object v3
new-instance v0, Landroid/view/animation/ScaleAnimation;
iget v5, v3, Landroid/graphics/PointF;->x:F
iget v6, v3, Landroid/graphics/PointF;->y:F
move v3, v1
move v4, v2
invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V
if-eqz p1, :cond_25
new-instance v1, Landroid/view/animation/OvershootInterpolator;
invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
:goto_1c
const-wide/16 v1, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->startAnimation(Landroid/view/animation/Animation;)V
return-void
:cond_25
new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
goto :goto_1c
.end method
.method private a(Lcom/instagram/model/people/b;Lcom/instagram/feed/d/l;Z)V
.registers 11
new-instance v3, Ljava/util/LinkedList;
invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v4
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/instagram/model/people/b;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_16
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_44
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/model/people/PeopleTag;
if-eqz p2, :cond_42
const/4 v1, 0x1
:goto_25
invoke-virtual {p0, v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Lcom/instagram/model/people/PeopleTag;Z)Lcom/instagram/android/people/widget/c;
move-result-object v1
if-eqz p2, :cond_32
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v6
invoke-virtual {v1, v6}, Lcom/instagram/android/people/widget/c;->setMediaId(Ljava/lang/String;)V
:cond_32
invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_57
move-object v0, v1
:goto_40
move-object v2, v0
goto :goto_16
:cond_42
const/4 v1, 0x0
goto :goto_25
:cond_44
if-eqz v2, :cond_49
invoke-virtual {v2}, Lcom/instagram/android/people/widget/c;->bringToFront()V
:cond_49
if-eqz p3, :cond_53
new-instance v0, Lcom/instagram/android/people/widget/i;
invoke-direct {v0, p0, v3, p1}, Lcom/instagram/android/people/widget/i;-><init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;Ljava/util/List;Lcom/instagram/model/people/b;)V
invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setTagsLayoutListener(Lcom/instagram/android/people/widget/m;)V
:cond_53
invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->requestLayout()V
return-void
:cond_57
move-object v0, v2
goto :goto_40
.end method
.method private a(Ljava/util/List;II)[I
.registers 13
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getMeasuredWidth()I
move-result v2
invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/people/widget/c;
invoke-virtual {v0, v2}, Lcom/instagram/android/people/widget/c;->a(I)I
move-result v1
invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/people/widget/c;
invoke-virtual {v0, v2}, Lcom/instagram/android/people/widget/c;->b(I)I
move-result v2
invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/people/widget/c;
invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getBubbleWidth()I
move-result v0
add-int/2addr v0, v2
sub-int v3, v0, v1
move v5, p2
move v2, v4
:goto_28
if-gt v5, p3, :cond_39
invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/people/widget/c;
invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getBubbleWidth()I
move-result v0
add-int/2addr v2, v0
add-int/lit8 v0, v5, 0x1
move v5, v0
goto :goto_28
:cond_39
if-gt v2, v3, :cond_97
invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/people/widget/c;
invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getPreferredBounds()Landroid/graphics/Rect;
move-result-object v0
iget v0, v0, Landroid/graphics/Rect;->left:I
add-int v1, v0, v2
invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/people/widget/c;
invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getPreferredBounds()Landroid/graphics/Rect;
move-result-object v0
iget v0, v0, Landroid/graphics/Rect;->right:I
sub-int/2addr v1, v0
invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/people/widget/c;
invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getPreferredBounds()Landroid/graphics/Rect;
move-result-object v0
iget v0, v0, Landroid/graphics/Rect;->left:I
div-int/lit8 v1, v1, 0x2
sub-int/2addr v0, v1
move v1, v2
:goto_66
invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I
move-result v5
move v3, v4
:goto_6b
if-gt p2, p3, :cond_8e
invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/people/widget/c;
invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getBubbleWidth()I
move-result v0
mul-int/2addr v0, v1
div-int v6, v0, v2
invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/people/widget/c;
add-int v7, v5, v3
div-int/lit8 v8, v6, 0x2
add-int/2addr v7, v8
invoke-virtual {v0, v7}, Lcom/instagram/android/people/widget/c;->c(I)V
add-int v0, v3, v6
add-int/lit8 p2, p2, 0x1
move v3, v0
goto :goto_6b
:cond_8e
const/4 v0, 0x2
new-array v0, v0, [I
aput v5, v0, v4
const/4 v2, 0x1
aput v1, v0, v2
return-object v0
:cond_97
move v0, v1
move v1, v3
goto :goto_66
.end method
.method private b(Lcom/instagram/android/people/widget/c;)V
.registers 9
const/high16 v1, 0x3f80
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/instagram/android/people/widget/c;->getAbsoluteTagPosition()Landroid/graphics/PointF;
move-result-object v3
new-instance v0, Landroid/view/animation/ScaleAnimation;
iget v5, v3, Landroid/graphics/PointF;->x:F
iget v6, v3, Landroid/graphics/PointF;->y:F
move v3, v1
move v4, v2
invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V
new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const-wide/16 v1, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
new-instance v1, Lcom/instagram/android/people/widget/k;
invoke-direct {v1, p0, p1}, Lcom/instagram/android/people/widget/k;-><init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;Lcom/instagram/android/people/widget/c;)V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {p1, v0}, Lcom/instagram/android/people/widget/c;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method private getOverlaps()Ljava/util/List;
.registers 9
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
new-instance v3, Ljava/util/HashSet;
invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I
move-result v4
const/4 v0, 0x0
move v1, v0
:goto_10
if-ge v1, v4, :cond_7d
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_79
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
new-instance v5, Ljava/util/ArrayList;
const/16 v0, 0x8
invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;
move-result-object v0
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Landroid/graphics/Rect;
invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getMaxBounds()Landroid/graphics/Rect;
move-result-object v0
invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
add-int/lit8 v0, v1, 0x1
:goto_43
if-ge v0, v4, :cond_79
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;
move-result-object v7
invoke-virtual {v7}, Lcom/instagram/android/people/widget/c;->c()Z
move-result v7
if-eqz v7, :cond_76
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;
move-result-object v7
invoke-virtual {v7}, Lcom/instagram/android/people/widget/c;->getMaxBounds()Landroid/graphics/Rect;
move-result-object v7
invoke-static {v6, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
move-result v7
if-eqz v7, :cond_76
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;
move-result-object v7
invoke-virtual {v7}, Lcom/instagram/android/people/widget/c;->getMaxBounds()Landroid/graphics/Rect;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;
move-result-object v7
invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_76
add-int/lit8 v0, v0, 0x1
goto :goto_43
:cond_79
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_10
:cond_7d
return-object v2
.end method
.method private setTagsLayoutListener(Lcom/instagram/android/people/widget/m;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->b:Lcom/instagram/android/people/widget/m;
return-void
.end method
.method protected final a(I)Lcom/instagram/android/people/widget/c;
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/android/people/widget/c;
return-object v0
.end method
.method protected final a(Lcom/instagram/model/people/PeopleTag;Z)Lcom/instagram/android/people/widget/c;
.registers 5
invoke-virtual {p1}, Lcom/instagram/model/people/PeopleTag;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/model/people/PeopleTag;->b()Landroid/graphics/PointF;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Ljava/lang/String;Landroid/graphics/PointF;)Lcom/instagram/android/people/widget/c;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/android/people/widget/c;->setTag(Ljava/lang/Object;)V
invoke-virtual {v0, p2}, Lcom/instagram/android/people/widget/c;->setClickable(Z)V
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->addView(Landroid/view/View;)V
return-object v0
.end method
.method protected final a(Ljava/lang/String;Landroid/graphics/PointF;)Lcom/instagram/android/people/widget/c;
.registers 5
new-instance v0, Lcom/instagram/android/people/widget/c;
invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/android/people/widget/c;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p1}, Lcom/instagram/android/people/widget/c;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, p2}, Lcom/instagram/android/people/widget/c;->setNormalizedPosition(Landroid/graphics/PointF;)V
return-object v0
.end method
.method public final a(Lcom/instagram/feed/d/l;Z)V
.registers 4
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->U()Lcom/instagram/model/people/b;
move-result-object v0
invoke-direct {p0, v0, p1, p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Lcom/instagram/model/people/b;Lcom/instagram/feed/d/l;Z)V
return-void
.end method
.method public a(Lcom/instagram/model/people/b;Z)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Lcom/instagram/model/people/b;Lcom/instagram/feed/d/l;Z)V
return-void
.end method
.method final a(Lcom/instagram/android/people/widget/c;)Z
.registers 10
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I
move-result v2
move v1, v0
:goto_6
if-ge v1, v2, :cond_11
invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildAt(I)Landroid/view/View;
move-result-object v3
if-eq v3, p1, :cond_11
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_11
new-instance v3, Landroid/graphics/Rect;
invoke-virtual {p1}, Lcom/instagram/android/people/widget/c;->getDrawingBounds()Landroid/graphics/Rect;
move-result-object v4
invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
sget v4, Lcom/instagram/android/people/widget/c;->f:I
sget v5, Lcom/instagram/android/people/widget/c;->f:I
invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->inset(II)V
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v5
const/16 v6, 0xfa
invoke-static {v5, v6}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v5
float-to-int v5, v5
add-int/lit8 v1, v1, 0x1
:goto_37
if-ge v1, v2, :cond_60
invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;
move-result-object v6
invoke-virtual {v6}, Lcom/instagram/android/people/widget/c;->getDrawingBounds()Landroid/graphics/Rect;
move-result-object v6
invoke-virtual {v4, v6, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
move-result v6
if-eqz v6, :cond_61
sget v6, Lcom/instagram/android/people/widget/c;->f:I
sget v7, Lcom/instagram/android/people/widget/c;->f:I
invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->inset(II)V
invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z
move-result v6
if-nez v6, :cond_61
invoke-virtual {v4}, Landroid/graphics/Rect;->width()I
move-result v6
invoke-virtual {v4}, Landroid/graphics/Rect;->height()I
move-result v7
mul-int/2addr v6, v7
if-lt v6, v5, :cond_61
const/4 v0, 0x1
:cond_60
return v0
:cond_61
add-int/lit8 v1, v1, 0x1
goto :goto_37
.end method
.method protected final c()V
.registers 3
iget-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a()V
:cond_7
const/4 v0, 0x0
:goto_8
invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I
move-result v1
if-ge v0, v1, :cond_18
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/people/widget/c;->a()V
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_18
return-void
.end method
.method public final d()V
.registers 5
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I
move-result v2
move v0, v1
:goto_6
if-ge v0, v2, :cond_12
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;
move-result-object v3
invoke-direct {p0, v3}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->b(Lcom/instagram/android/people/widget/c;)V
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_12
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xe
if-lt v0, v2, :cond_33
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/high16 v2, 0x3f80
const/4 v3, 0x0
invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V
const-wide/16 v1, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->startAnimation(Landroid/view/animation/Animation;)V
:cond_33
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 11
const/4 v1, 0x0
move v0, v1
:goto_2
invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I
move-result v2
if-ge v0, v2, :cond_16
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildAt(I)Landroid/view/View;
move-result-object v2
sub-int v3, p4, p2
sub-int v4, p5, p3
invoke-virtual {v2, v1, v1, v3, v4}, Landroid/view/View;->layout(IIII)V
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_16
invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->c()V
iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->b:Lcom/instagram/android/people/widget/m;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->b:Lcom/instagram/android/people/widget/m;
invoke-interface {v0}, Lcom/instagram/android/people/widget/m;->a()V
:cond_22
return-void
.end method
.method protected onMeasure(II)V
.registers 6
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
const/4 v0, 0x0
:goto_5
invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I
move-result v2
if-ge v0, v2, :cond_15
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, p1, p1}, Landroid/view/View;->measure(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_15
invoke-virtual {p0, v1, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setMeasuredDimension(II)V
return-void
.end method