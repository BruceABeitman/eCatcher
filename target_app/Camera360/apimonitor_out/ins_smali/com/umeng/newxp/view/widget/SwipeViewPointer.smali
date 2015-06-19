.class public Lcom/umeng/newxp/view/widget/SwipeViewPointer;
.super Landroid/widget/LinearLayout;
.source "SwipeViewPointer.java"
.field private a:I
.field private b:Landroid/graphics/drawable/Drawable;
.field private c:Landroid/graphics/drawable/Drawable;
.field private d:Ljava/util/ArrayList;
.field private e:I
.field private f:I
.field private g:Landroid/content/Context;
.field private h:Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const/4 v0, 0x7
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
iput v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->e:I
iput v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->f:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->h:Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;
iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->g:Landroid/content/Context;
invoke-direct {p0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x7
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
iput v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->e:I
iput v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->f:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->h:Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;
iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->g:Landroid/content/Context;
return-void
.end method
.method static synthetic a(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->h:Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;
return-object v0
.end method
.method private a()V
.registers 5
const/4 v3, 0x0
const-string/jumbo v0, "uk.co.jasonfry.android.tools.ui.PageControl"
const-string/jumbo v1, "Initialising PageControl"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->d:Ljava/util/ArrayList;
new-instance v0, Landroid/graphics/drawable/ShapeDrawable;
invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V
iput-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b:Landroid/graphics/drawable/Drawable;
new-instance v0, Landroid/graphics/drawable/ShapeDrawable;
invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V
iput-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->c:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b:Landroid/graphics/drawable/Drawable;
iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
iget v2, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->c:Landroid/graphics/drawable/Drawable;
iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
iget v2, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;
invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
int-to-float v0, v0
iget v2, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
int-to-float v2, v2
invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V
new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;
invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
int-to-float v0, v0
iget v3, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
int-to-float v3, v3
invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b:Landroid/graphics/drawable/Drawable;
check-cast v0, Landroid/graphics/drawable/ShapeDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
move-result-object v0
const v3, -0xbbbbbc
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->c:Landroid/graphics/drawable/Drawable;
check-cast v0, Landroid/graphics/drawable/ShapeDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
move-result-object v0
const v3, -0x333334
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b:Landroid/graphics/drawable/Drawable;
check-cast v0, Landroid/graphics/drawable/ShapeDrawable;
invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->c:Landroid/graphics/drawable/Drawable;
check-cast v0, Landroid/graphics/drawable/ShapeDrawable;
invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
int-to-float v0, v0
invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, v1
float-to-int v0, v0
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
new-instance v0, Lcom/umeng/newxp/view/widget/c;
invoke-direct {v0, p0}, Lcom/umeng/newxp/view/widget/c;-><init>(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)V
invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-void
.end method
.method static synthetic b(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->f:I
return v0
.end method
.method private b()V
.registers 7
new-instance v0, Landroid/widget/ImageView;
iget-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->g:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
iget v2, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
iget v3, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
iget v2, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
div-int/lit8 v2, v2, 0x2
iget v3, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
iget v4, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
div-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->d:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->addView(Landroid/view/View;)V
return-void
.end method
.method static synthetic c(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->e:I
return v0
.end method
.method public addPageCount(I)V
.registers 3
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->e:I
add-int/2addr v0, p1
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->e:I
const/4 v0, 0x0
:goto_6
if-lt v0, p1, :cond_9
return-void
:cond_9
invoke-direct {p0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b()V
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method public getActiveDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getCurrentPage()I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->f:I
return v0
.end method
.method public getInactiveDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->c:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getIndicatorSize()I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
return v0
.end method
.method public getOnPageControlClickListener()Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->h:Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;
return-object v0
.end method
.method public getPageCount()I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->e:I
return v0
.end method
.method protected onFinishInflate()V
.registers 1
invoke-direct {p0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a()V
return-void
.end method
.method public setActiveDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 4
iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->d:Ljava/util/ArrayList;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_1d
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->d:Ljava/util/ArrayList;
iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->f:I
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iget-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_1d
return-void
.end method
.method public setCurrentPage(I)V
.registers 4
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->e:I
if-ge p1, v0, :cond_22
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->d:Ljava/util/ArrayList;
iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->f:I
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iget-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->d:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iget-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iput p1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->f:I
:cond_22
return-void
.end method
.method public setInactiveDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 5
iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->c:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->d:Ljava/util/ArrayList;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_23
const/4 v0, 0x0
move v1, v0
:goto_10
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->e:I
if-lt v1, v0, :cond_24
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->d:Ljava/util/ArrayList;
iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->f:I
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iget-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_23
return-void
:cond_24
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->d:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iget-object v2, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_10
.end method
.method public setIndicatorSize(I)V
.registers 7
iput p1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
const/4 v0, 0x0
move v1, v0
:goto_4
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->e:I
if-lt v1, v0, :cond_9
return-void
:cond_9
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->d:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
iget v3, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
iget v4, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a:I
invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_4
.end method
.method public setOnPageControlClickListener(Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->h:Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;
return-void
.end method
.method public setPageCount(I)V
.registers 3
iput p1, p0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->e:I
const/4 v0, 0x0
:goto_3
if-lt v0, p1, :cond_6
return-void
:cond_6
invoke-direct {p0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b()V
add-int/lit8 v0, v0, 0x1
goto :goto_3
.end method