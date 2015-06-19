.class public final Lcom/instagram/android/people/widget/c;
.super Landroid/view/ViewGroup;
.source "PeopleTagView.java"
.field protected static final a:I
.field protected static final b:I
.field protected static final c:I
.field protected static final d:I
.field protected static final e:I
.field protected static final f:I
.field protected static final g:I
.field protected static final h:I
.field protected static final i:I
.field protected static final j:I
.field protected k:Landroid/widget/TextView;
.field protected l:Landroid/widget/ImageView;
.field protected m:Landroid/widget/ImageView;
.field protected n:Landroid/widget/ImageView;
.field private o:Z
.field private p:I
.field private q:Landroid/graphics/Rect;
.field private r:Landroid/graphics/Rect;
.field private s:Landroid/graphics/Rect;
.field private t:Z
.field private u:Landroid/graphics/PointF;
.field private v:Landroid/graphics/PointF;
.method static constructor <clinit>()V
.registers 3
const/16 v2, 0xa
const/4 v1, 0x7
const/16 v0, 0x9
invoke-static {v0}, Lcom/instagram/android/people/widget/c;->e(I)I
move-result v0
sput v0, Lcom/instagram/android/people/widget/c;->a:I
invoke-static {v1}, Lcom/instagram/android/people/widget/c;->e(I)I
move-result v0
sput v0, Lcom/instagram/android/people/widget/c;->b:I
invoke-static {v1}, Lcom/instagram/android/people/widget/c;->e(I)I
move-result v0
sput v0, Lcom/instagram/android/people/widget/c;->c:I
const/4 v0, 0x6
invoke-static {v0}, Lcom/instagram/android/people/widget/c;->e(I)I
move-result v0
sput v0, Lcom/instagram/android/people/widget/c;->d:I
const/16 v0, 0x3c
invoke-static {v0}, Lcom/instagram/android/people/widget/c;->e(I)I
move-result v0
sput v0, Lcom/instagram/android/people/widget/c;->e:I
invoke-static {v2}, Lcom/instagram/android/people/widget/c;->e(I)I
move-result v0
sput v0, Lcom/instagram/android/people/widget/c;->f:I
invoke-static {v2}, Lcom/instagram/android/people/widget/c;->e(I)I
move-result v0
sput v0, Lcom/instagram/android/people/widget/c;->g:I
sget v0, Lcom/instagram/android/people/widget/c;->f:I
sget v1, Lcom/instagram/android/people/widget/c;->g:I
add-int/2addr v0, v1
sput v0, Lcom/instagram/android/people/widget/c;->h:I
const/16 v0, 0x14
invoke-static {v0}, Lcom/instagram/android/people/widget/c;->e(I)I
move-result v0
sput v0, Lcom/instagram/android/people/widget/c;->i:I
const/4 v0, 0x5
invoke-static {v0}, Lcom/instagram/android/people/widget/c;->e(I)I
move-result v0
sput v0, Lcom/instagram/android/people/widget/c;->j:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/people/widget/c;->o:Z
iput v1, p0, Lcom/instagram/android/people/widget/c;->p:I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v0, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v0, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v0, p0, Lcom/instagram/android/people/widget/c;->s:Landroid/graphics/Rect;
iput-boolean v1, p0, Lcom/instagram/android/people/widget/c;->t:Z
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V
iput-object v0, p0, Lcom/instagram/android/people/widget/c;->v:Landroid/graphics/PointF;
invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->e()V
return-void
.end method
.method private a(Landroid/graphics/PointF;)Landroid/graphics/PointF;
.registers 5
iget v0, p1, Landroid/graphics/PointF;->x:F
sget v1, Lcom/instagram/android/people/widget/c;->i:I
int-to-float v1, v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
move-result v0
iput v0, p1, Landroid/graphics/PointF;->x:F
iget v0, p1, Landroid/graphics/PointF;->x:F
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getMeasuredWidth()I
move-result v1
sget v2, Lcom/instagram/android/people/widget/c;->i:I
sub-int/2addr v1, v2
int-to-float v1, v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
iput v0, p1, Landroid/graphics/PointF;->x:F
iget v0, p1, Landroid/graphics/PointF;->y:F
sget v1, Lcom/instagram/android/people/widget/c;->j:I
int-to-float v1, v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
move-result v0
iput v0, p1, Landroid/graphics/PointF;->y:F
iget v0, p1, Landroid/graphics/PointF;->y:F
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getMeasuredHeight()I
move-result v1
sget v2, Lcom/instagram/android/people/widget/c;->j:I
sub-int/2addr v1, v2
int-to-float v1, v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
iput v0, p1, Landroid/graphics/PointF;->y:F
return-object p1
.end method
.method private d(I)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->u:Landroid/graphics/PointF;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iput p1, p0, Lcom/instagram/android/people/widget/c;->p:I
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->u:Landroid/graphics/PointF;
iget v1, v1, Landroid/graphics/PointF;->x:F
iget v2, p0, Lcom/instagram/android/people/widget/c;->p:I
int-to-float v2, v2
mul-float/2addr v1, v2
iput v1, v0, Landroid/graphics/PointF;->x:F
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->u:Landroid/graphics/PointF;
iget v1, v1, Landroid/graphics/PointF;->y:F
iget v2, p0, Lcom/instagram/android/people/widget/c;->p:I
int-to-float v2, v2
mul-float/2addr v1, v2
iput v1, v0, Landroid/graphics/PointF;->y:F
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->setPosition(Landroid/graphics/PointF;)V
goto :goto_4
.end method
.method private static e(I)I
.registers 3
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
invoke-static {v0, p0}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v0
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method private e()V
.registers 3
const/4 v1, -0x2
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->f()Landroid/widget/TextView;
move-result-object v1
iput-object v1, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->g()Landroid/widget/ImageView;
move-result-object v1
iput-object v1, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;
invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->h()Landroid/widget/ImageView;
move-result-object v1
iput-object v1, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;
invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->i()Landroid/widget/ImageView;
move-result-object v1
iput-object v1, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/widget/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;
invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/widget/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;
invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/widget/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/widget/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private f()Landroid/widget/TextView;
.registers 5
const/4 v3, 0x0
new-instance v0, Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/au;->tag_bubble_bg:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V
sget v1, Lcom/instagram/android/people/widget/c;->h:I
sget v2, Lcom/instagram/android/people/widget/c;->h:I
invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
const/4 v1, 0x2
const/high16 v2, 0x4160
invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V
sget v1, Lcom/instagram/android/people/widget/c;->e:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V
const/16 v1, 0x11
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x106000b
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
return-object v0
.end method
.method private g()Landroid/widget/ImageView;
.registers 3
new-instance v0, Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/au;->carrot_up_bg:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
return-object v0
.end method
.method private h()Landroid/widget/ImageView;
.registers 3
new-instance v0, Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/au;->carrot_down_bg:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
return-object v0
.end method
.method private i()Landroid/widget/ImageView;
.registers 3
new-instance v0, Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/au;->tag_close_bg:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-object v0
.end method
.method private j()V
.registers 9
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getArrowXPosition()I
move-result v0
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getArrowYPosition()I
move-result v1
iget-object v2, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
sget v3, Lcom/instagram/android/people/widget/c;->f:I
sub-int/2addr v2, v3
iget-object v3, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;
invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I
move-result v3
div-int/lit8 v3, v3, 0x2
sget v4, Lcom/instagram/android/people/widget/c;->b:I
sub-int v4, v1, v4
sget v5, Lcom/instagram/android/people/widget/c;->a:I
sub-int/2addr v4, v5
iget-object v5, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;
invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v5
add-int/2addr v4, v5
iget-object v5, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v5
add-int/2addr v4, v5
iget v5, p0, Lcom/instagram/android/people/widget/c;->p:I
if-le v4, v5, :cond_91
invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->l()V
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;
sub-int v5, v0, v3
sget v6, Lcom/instagram/android/people/widget/c;->c:I
add-int/2addr v6, v1
iget-object v7, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;
invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v7
sub-int/2addr v6, v7
add-int/2addr v3, v0
sget v7, Lcom/instagram/android/people/widget/c;->c:I
add-int/2addr v1, v7
invoke-virtual {v4, v5, v6, v3, v1}, Landroid/widget/ImageView;->layout(IIII)V
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
sub-int v3, v0, v2
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;
invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I
move-result v4
sget v5, Lcom/instagram/android/people/widget/c;->a:I
add-int/2addr v4, v5
iget-object v5, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v5
sub-int/2addr v4, v5
add-int/2addr v0, v2
iget-object v5, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;
invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I
move-result v5
sget v6, Lcom/instagram/android/people/widget/c;->a:I
add-int/2addr v5, v6
invoke-virtual {v1, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V
:goto_6d
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->s:Landroid/graphics/Rect;
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v2
sget v3, Lcom/instagram/android/people/widget/c;->i:I
add-int/2addr v1, v3
sget v3, Lcom/instagram/android/people/widget/c;->f:I
sub-int/2addr v1, v3
iget-object v3, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
add-int/2addr v2, v4
sget v4, Lcom/instagram/android/people/widget/c;->i:I
sub-int/2addr v2, v4
sget v4, Lcom/instagram/android/people/widget/c;->f:I
add-int/2addr v2, v4
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->bottom:I
invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V
return-void
:cond_91
invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->k()V
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;
sub-int v5, v0, v3
sget v6, Lcom/instagram/android/people/widget/c;->b:I
sub-int v6, v1, v6
add-int/2addr v3, v0
sget v7, Lcom/instagram/android/people/widget/c;->b:I
sub-int/2addr v1, v7
iget-object v7, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;
invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v7
add-int/2addr v1, v7
invoke-virtual {v4, v5, v6, v3, v1}, Landroid/widget/ImageView;->layout(IIII)V
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
sub-int v3, v0, v2
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;
invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I
move-result v4
sget v5, Lcom/instagram/android/people/widget/c;->a:I
sub-int/2addr v4, v5
add-int/2addr v0, v2
iget-object v5, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;
invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I
move-result v5
sget v6, Lcom/instagram/android/people/widget/c;->a:I
sub-int/2addr v5, v6
iget-object v6, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v6
add-int/2addr v5, v6
invoke-virtual {v1, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V
goto :goto_6d
.end method
.method private k()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method private l()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->m:Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->n:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method final a(I)I
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/c;->b(I)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->s:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
return v0
.end method
.method public final a()V
.registers 7
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
iget-object v3, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->right:I
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->bottom:I
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->d()Z
move-result v0
if-eqz v0, :cond_57
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
sget v1, Lcom/instagram/android/people/widget/c;->d:I
add-int/2addr v0, v1
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getMeasuredWidth()I
move-result v1
if-le v0, v1, :cond_58
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
sget v2, Lcom/instagram/android/people/widget/c;->d:I
sub-int/2addr v1, v2
iget-object v2, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
sget v3, Lcom/instagram/android/people/widget/c;->d:I
sub-int/2addr v2, v3
iget-object v3, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
sget v4, Lcom/instagram/android/people/widget/c;->d:I
sub-int/2addr v3, v4
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I
move-result v4
add-int/2addr v3, v4
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->top:I
sget v5, Lcom/instagram/android/people/widget/c;->d:I
sub-int/2addr v4, v5
iget-object v5, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v5
add-int/2addr v4, v5
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V
:cond_57
:goto_57
return-void
:cond_58
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
sget v2, Lcom/instagram/android/people/widget/c;->d:I
add-int/2addr v1, v2
iget-object v2, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I
move-result v2
sub-int/2addr v1, v2
iget-object v2, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
sget v3, Lcom/instagram/android/people/widget/c;->d:I
sub-int/2addr v2, v3
iget-object v3, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->right:I
sget v4, Lcom/instagram/android/people/widget/c;->d:I
add-int/2addr v3, v4
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->top:I
sget v5, Lcom/instagram/android/people/widget/c;->d:I
sub-int/2addr v4, v5
iget-object v5, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v5
add-int/2addr v4, v5
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V
goto :goto_57
.end method
.method final a(Landroid/view/animation/Animation;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/c;->setAnimation(Landroid/view/animation/Animation;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/people/widget/c;->o:Z
return-void
.end method
.method public final a(II)Z
.registers 8
const/4 v1, 0x0
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
move v0, v1
:goto_7
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getChildCount()I
move-result v3
if-ge v0, v3, :cond_21
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v4
if-nez v4, :cond_22
invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V
invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z
move-result v3
if-eqz v3, :cond_22
const/4 v1, 0x1
:cond_21
return v1
:cond_22
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method
.method final b(I)I
.registers 5
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v0
sub-int v0, p1, v0
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getArrowXPosition()I
move-result v1
sget v2, Lcom/instagram/android/people/widget/c;->g:I
sub-int/2addr v1, v2
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
return v0
.end method
.method public final b()V
.registers 3
const/16 v1, 0x8
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_f
:cond_f
return-void
:cond_10
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-ne v0, v1, :cond_f
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_f
.end method
.method final b(Landroid/view/animation/Animation;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/c;->startAnimation(Landroid/view/animation/Animation;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/people/widget/c;->o:Z
return-void
.end method
.method protected final b(II)Z
.registers 5
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->c()Z
move-result v0
if-eqz v0, :cond_c
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->d()Z
move-result v0
if-nez v0, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return v0
:cond_e
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V
invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z
move-result v0
goto :goto_d
.end method
.method final c(I)V
.registers 7
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v0
div-int/lit8 v0, v0, 0x2
sub-int v0, p1, v0
sget v1, Lcom/instagram/android/people/widget/c;->f:I
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getMeasuredWidth()I
move-result v2
iget-object v3, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
invoke-virtual {v3}, Landroid/graphics/Rect;->width()I
move-result v3
sub-int/2addr v2, v3
sget v3, Lcom/instagram/android/people/widget/c;->f:I
sub-int/2addr v2, v3
invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->s:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getArrowXPosition()I
move-result v2
sget v3, Lcom/instagram/android/people/widget/c;->i:I
sub-int/2addr v2, v3
sget v3, Lcom/instagram/android/people/widget/c;->f:I
add-int/2addr v2, v3
invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
sget v2, Lcom/instagram/android/people/widget/c;->f:I
sub-int v2, v0, v2
iget-object v3, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
sget v4, Lcom/instagram/android/people/widget/c;->f:I
sub-int/2addr v0, v4
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v4
add-int/2addr v0, v4
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->bottom:I
invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V
return-void
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/people/widget/c;->o:Z
return v0
.end method
.method protected final d()Z
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->l:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method protected final getAbsoluteTagPosition()Landroid/graphics/PointF;
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->v:Landroid/graphics/PointF;
return-object v0
.end method
.method protected final getArrowXPosition()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->v:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->x:F
float-to-int v0, v0
return v0
.end method
.method protected final getArrowYPosition()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->v:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->y:F
float-to-int v0, v0
return v0
.end method
.method final getBubbleWidth()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v0
return v0
.end method
.method final getDrawingBounds()Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->r:Landroid/graphics/Rect;
return-object v0
.end method
.method final getMaxBounds()Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->s:Landroid/graphics/Rect;
return-object v0
.end method
.method public final getMediaId()Ljava/lang/String;
.registers 2
sget v0, Lcom/facebook/av;->key_media_id:I
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method protected final getNormalizedPosition()Landroid/graphics/PointF;
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->u:Landroid/graphics/PointF;
return-object v0
.end method
.method final getPreferredBounds()Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
return-object v0
.end method
.method public final getTaggedUserId()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/model/people/PeopleTag;
invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getText()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method protected final onLayout(ZIIII)V
.registers 6
return-void
.end method
.method protected final onMeasure(II)V
.registers 6
const/4 v1, 0x0
move v0, v1
:goto_2
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getChildCount()I
move-result v2
if-ge v0, v2, :cond_12
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_12
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/instagram/android/people/widget/c;->setMeasuredDimension(II)V
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getMeasuredWidth()I
move-result v0
iget v1, p0, Lcom/instagram/android/people/widget/c;->p:I
if-eq v1, v0, :cond_28
invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/c;->d(I)V
:cond_28
return-void
.end method
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 6
const/4 v0, 0x0
const/4 v2, 0x1
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->isClickable()Z
move-result v1
if-eqz v1, :cond_42
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
float-to-int v1, v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
float-to-int v3, v3
invoke-virtual {p0, v1, v3}, Lcom/instagram/android/people/widget/c;->a(II)Z
move-result v1
if-eqz v1, :cond_63
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
if-nez v1, :cond_43
iput-boolean v2, p0, Lcom/instagram/android/people/widget/c;->t:Z
:goto_20
:cond_20
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-eqz v1, :cond_41
instance-of v0, v1, Lcom/instagram/android/people/widget/PeopleTagsLayout;
if-eqz v0, :cond_41
move-object v0, v1
check-cast v0, Lcom/instagram/android/people/widget/PeopleTagsLayout;
invoke-virtual {v0, p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Lcom/instagram/android/people/widget/c;)Z
move-result v0
if-eqz v0, :cond_4f
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-ne v0, v2, :cond_41
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->bringToFront()V
check-cast v1, Lcom/instagram/android/people/widget/PeopleTagsLayout;
invoke-virtual {v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->invalidate()V
:cond_41
:goto_41
move v0, v2
:goto_42
:cond_42
return v0
:cond_43
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
if-ne v1, v2, :cond_20
iput-boolean v0, p0, Lcom/instagram/android/people/widget/c;->t:Z
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->setPressed(Z)V
goto :goto_20
:cond_4f
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_59
invoke-virtual {p0, v2}, Lcom/instagram/android/people/widget/c;->setPressed(Z)V
goto :goto_41
:cond_59
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-ne v0, v2, :cond_41
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->performClick()Z
goto :goto_41
:cond_63
iget-boolean v1, p0, Lcom/instagram/android/people/widget/c;->t:Z
if-eqz v1, :cond_42
const/4 v1, 0x3
invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->setPressed(Z)V
iput-boolean v0, p0, Lcom/instagram/android/people/widget/c;->t:Z
move v0, v2
goto :goto_42
.end method
.method public final performClick()Z
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "PeopleTag.BROADCAST_TAG_CLICKED"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "PeopleTag.INTENT_EXTRA_USER_ID"
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getTaggedUserId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "PeopleTag.INTENT_EXTRA_MEDIA_ID"
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getMediaId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z
invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z
move-result v0
return v0
.end method
.method public final setMediaId(Ljava/lang/String;)V
.registers 3
sget v0, Lcom/facebook/av;->key_media_id:I
invoke-virtual {p0, v0, p1}, Lcom/instagram/android/people/widget/c;->setTag(ILjava/lang/Object;)V
return-void
.end method
.method public final setNormalizedPosition(Landroid/graphics/PointF;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/widget/c;->u:Landroid/graphics/PointF;
return-void
.end method
.method public final setPosition(Landroid/graphics/PointF;)V
.registers 6
invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/c;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;
move-result-object p1
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->v:Landroid/graphics/PointF;
invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->u:Landroid/graphics/PointF;
iget v1, p1, Landroid/graphics/PointF;->x:F
iget v2, p0, Lcom/instagram/android/people/widget/c;->p:I
int-to-float v2, v2
div-float/2addr v1, v2
iget v2, p1, Landroid/graphics/PointF;->y:F
iget v3, p0, Lcom/instagram/android/people/widget/c;->p:I
int-to-float v3, v3
div-float/2addr v2, v3
invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V
invoke-direct {p0}, Lcom/instagram/android/people/widget/c;->j()V
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getArrowXPosition()I
move-result v0
invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->c(I)V
return-void
.end method
.method public final setText(Ljava/lang/CharSequence;)V
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V
iget-object v0, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v0
div-int/lit8 v0, v0, 0x2
sget v1, Lcom/instagram/android/people/widget/c;->f:I
sub-int/2addr v0, v1
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget-object v2, p0, Lcom/instagram/android/people/widget/c;->v:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->x:F
float-to-int v2, v2
sub-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget-object v2, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
iget-object v3, p0, Lcom/instagram/android/people/widget/c;->k:Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lcom/instagram/android/people/widget/c;->s:Landroid/graphics/Rect;
iget-object v2, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
sub-int/2addr v2, v0
sget v3, Lcom/instagram/android/people/widget/c;->i:I
add-int/2addr v2, v3
sget v3, Lcom/instagram/android/people/widget/c;->f:I
sub-int/2addr v2, v3
iget-object v3, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
add-int/2addr v0, v4
sget v4, Lcom/instagram/android/people/widget/c;->i:I
sub-int/2addr v0, v4
sget v4, Lcom/instagram/android/people/widget/c;->f:I
add-int/2addr v0, v4
iget-object v4, p0, Lcom/instagram/android/people/widget/c;->q:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->bottom:I
invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V
return-void
.end method