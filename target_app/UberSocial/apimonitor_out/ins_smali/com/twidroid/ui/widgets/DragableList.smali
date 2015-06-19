.class public Lcom/twidroid/ui/widgets/DragableList;
.super Landroid/widget/ListView;
.source "SourceFile"
.field private static final o:I = 0x0
.field private static final p:I = 0x1
.field private a:Landroid/widget/ImageView;
.field private b:Landroid/view/WindowManager;
.field private c:Landroid/view/WindowManager$LayoutParams;
.field private d:I
.field private e:I
.field private f:I
.field private g:I
.field private h:Lcom/twidroid/ui/widgets/e;
.field private i:Lcom/twidroid/ui/widgets/f;
.field private j:Lcom/twidroid/ui/widgets/g;
.field private k:I
.field private l:I
.field private m:I
.field private n:Landroid/view/GestureDetector;
.field private q:I
.field private r:Landroid/graphics/Rect;
.field private s:Landroid/graphics/Bitmap;
.field private final t:I
.field private u:I
.field private v:I
.field private w:I
.field private x:I
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, -0x1
invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v2, p0, Lcom/twidroid/ui/widgets/DragableList;->q:I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->r:Landroid/graphics/Rect;
const/4 v0, 0x0
iput v0, p0, Lcom/twidroid/ui/widgets/DragableList;->x:I
const-string v0, "Music"
const/4 v1, 0x3
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "deletemode"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/twidroid/ui/widgets/DragableList;->q:I
invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/widgets/DragableList;->t:I
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0a0040
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
iput v1, p0, Lcom/twidroid/ui/widgets/DragableList;->u:I
iget v1, p0, Lcom/twidroid/ui/widgets/DragableList;->u:I
div-int/lit8 v1, v1, 0x2
iput v1, p0, Lcom/twidroid/ui/widgets/DragableList;->w:I
const v1, 0x7f0a0034
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lcom/twidroid/ui/widgets/DragableList;->v:I
return-void
.end method
.method private a(I)I
.registers 5
const/4 v1, 0x0
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->f:I
sub-int v0, p1, v0
iget v2, p0, Lcom/twidroid/ui/widgets/DragableList;->w:I
sub-int v2, v0, v2
invoke-direct {p0, v1, v2}, Lcom/twidroid/ui/widgets/DragableList;->a(II)I
move-result v0
if-ltz v0, :cond_16
iget v1, p0, Lcom/twidroid/ui/widgets/DragableList;->e:I
if-gt v0, v1, :cond_15
add-int/lit8 v0, v0, 0x1
:goto_15
:cond_15
return v0
:cond_16
if-gez v2, :cond_15
move v0, v1
goto :goto_15
.end method
.method private a(II)I
.registers 6
if-gez p2, :cond_e
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->u:I
add-int/2addr v0, p2
invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/widgets/DragableList;->a(II)I
move-result v0
if-lez v0, :cond_e
add-int/lit8 v0, v0, -0x1
:goto_d
return v0
:cond_e
iget-object v1, p0, Lcom/twidroid/ui/widgets/DragableList;->r:Landroid/graphics/Rect;
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getChildCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
:goto_16
if-ltz v0, :cond_2e
invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/DragableList;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V
invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
if-eqz v2, :cond_2b
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getFirstVisiblePosition()I
move-result v1
add-int/2addr v0, v1
goto :goto_d
:cond_2b
add-int/lit8 v0, v0, -0x1
goto :goto_16
:cond_2e
const/4 v0, -0x1
goto :goto_d
.end method
.method static synthetic a(Lcom/twidroid/ui/widgets/DragableList;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->a:Landroid/widget/ImageView;
return-object v0
.end method
.method private a()V
.registers 9
const/4 v2, 0x0
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->d:I
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getFirstVisiblePosition()I
move-result v1
sub-int/2addr v0, v1
iget v1, p0, Lcom/twidroid/ui/widgets/DragableList;->d:I
iget v3, p0, Lcom/twidroid/ui/widgets/DragableList;->e:I
if-le v1, v3, :cond_10
add-int/lit8 v0, v0, 0x1
:cond_10
iget v1, p0, Lcom/twidroid/ui/widgets/DragableList;->e:I
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getFirstVisiblePosition()I
move-result v3
sub-int/2addr v1, v3
invoke-virtual {p0, v1}, Lcom/twidroid/ui/widgets/DragableList;->getChildAt(I)Landroid/view/View;
move-result-object v5
move v1, v2
:goto_1c
invoke-virtual {p0, v1}, Lcom/twidroid/ui/widgets/DragableList;->getChildAt(I)Landroid/view/View;
move-result-object v6
if-nez v6, :cond_23
return-void
:cond_23
iget v4, p0, Lcom/twidroid/ui/widgets/DragableList;->u:I
invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_45
iget v3, p0, Lcom/twidroid/ui/widgets/DragableList;->d:I
iget v7, p0, Lcom/twidroid/ui/widgets/DragableList;->e:I
if-ne v3, v7, :cond_41
const/4 v3, 0x4
:goto_32
invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v7
iput v4, v7, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_1c
:cond_41
const/4 v4, 0x1
const/16 v3, 0x8
goto :goto_32
:cond_45
if-ne v1, v0, :cond_56
iget v3, p0, Lcom/twidroid/ui/widgets/DragableList;->d:I
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getCount()I
move-result v7
add-int/lit8 v7, v7, -0x1
if-ge v3, v7, :cond_56
iget v3, p0, Lcom/twidroid/ui/widgets/DragableList;->v:I
move v4, v3
move v3, v2
goto :goto_32
:cond_56
move v3, v2
goto :goto_32
.end method
.method private a(Landroid/graphics/Bitmap;I)V
.registers 8
const/4 v4, 0x0
const/4 v3, -0x2
invoke-direct {p0}, Lcom/twidroid/ui/widgets/DragableList;->b()V
new-instance v0, Landroid/view/WindowManager$LayoutParams;
invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
const/16 v1, 0x30
iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
iget v1, p0, Lcom/twidroid/ui/widgets/DragableList;->f:I
sub-int v1, p2, v1
iget v2, p0, Lcom/twidroid/ui/widgets/DragableList;->g:I
add-int/2addr v1, v2
iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
const/16 v1, 0x398
iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
const/4 v1, -0x3
iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/widget/ImageView;
invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
const/4 v2, -0x1
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V
invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iput-object p1, p0, Lcom/twidroid/ui/widgets/DragableList;->s:Landroid/graphics/Bitmap;
const-string v2, "window"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
iput-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->b:Landroid/view/WindowManager;
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->b:Landroid/view/WindowManager;
iget-object v2, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iput-object v1, p0, Lcom/twidroid/ui/widgets/DragableList;->a:Landroid/widget/ImageView;
return-void
.end method
.method static synthetic a(Lcom/twidroid/ui/widgets/DragableList;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/ui/widgets/DragableList;->a(Z)V
return-void
.end method
.method private a(Z)V
.registers 7
const/4 v1, 0x0
move v0, v1
:goto_2
invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/DragableList;->getChildAt(I)Landroid/view/View;
move-result-object v2
if-nez v2, :cond_2a
if-eqz p1, :cond_20
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getFirstVisiblePosition()I
move-result v2
invoke-virtual {p0, v1}, Lcom/twidroid/ui/widgets/DragableList;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getTop()I
move-result v3
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v4
invoke-virtual {p0, v4}, Lcom/twidroid/ui/widgets/DragableList;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0, v2, v3}, Lcom/twidroid/ui/widgets/DragableList;->setSelectionFromTop(II)V
:cond_20
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->layoutChildren()V
invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/DragableList;->getChildAt(I)Landroid/view/View;
move-result-object v2
if-nez v2, :cond_2a
return-void
:cond_2a
invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
iget v4, p0, Lcom/twidroid/ui/widgets/DragableList;->u:I
iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_2
.end method
.method static synthetic b(Lcom/twidroid/ui/widgets/DragableList;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->r:Landroid/graphics/Rect;
return-object v0
.end method
.method private b()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->a:Landroid/widget/ImageView;
if-eqz v0, :cond_1d
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
iget-object v1, p0, Lcom/twidroid/ui/widgets/DragableList;->a:Landroid/widget/ImageView;
invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->a:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iput-object v2, p0, Lcom/twidroid/ui/widgets/DragableList;->a:Landroid/widget/ImageView;
:cond_1d
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->s:Landroid/graphics/Bitmap;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->s:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v2, p0, Lcom/twidroid/ui/widgets/DragableList;->s:Landroid/graphics/Bitmap;
:cond_28
return-void
.end method
.method private b(I)V
.registers 3
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->m:I
div-int/lit8 v0, v0, 0x3
if-lt p1, v0, :cond_c
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->m:I
div-int/lit8 v0, v0, 0x3
iput v0, p0, Lcom/twidroid/ui/widgets/DragableList;->k:I
:cond_c
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->m:I
mul-int/lit8 v0, v0, 0x2
div-int/lit8 v0, v0, 0x3
if-gt p1, v0, :cond_1c
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->m:I
mul-int/lit8 v0, v0, 0x2
div-int/lit8 v0, v0, 0x3
iput v0, p0, Lcom/twidroid/ui/widgets/DragableList;->l:I
:cond_1c
return-void
.end method
.method private b(II)V
.registers 6
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->q:I
const/4 v1, 0x1
if-ne v0, v1, :cond_1c
const/high16 v0, 0x3f80
iget-object v1, p0, Lcom/twidroid/ui/widgets/DragableList;->a:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I
move-result v1
div-int/lit8 v2, v1, 0x2
if-le p1, v2, :cond_18
sub-int v0, v1, p1
int-to-float v0, v0
div-int/lit8 v1, v1, 0x2
int-to-float v1, v1
div-float/2addr v0, v1
:cond_18
iget-object v1, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
iput v0, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F
:cond_1c
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->q:I
if-nez v0, :cond_24
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I
:cond_24
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->f:I
sub-int v0, p2, v0
iget v1, p0, Lcom/twidroid/ui/widgets/DragableList;->g:I
add-int/2addr v0, v1
invoke-virtual {p0, p1, v0}, Lcom/twidroid/ui/widgets/DragableList;->pointToPosition(II)I
move-result v0
iget v1, p0, Lcom/twidroid/ui/widgets/DragableList;->x:I
if-le v0, v1, :cond_47
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
iget v1, p0, Lcom/twidroid/ui/widgets/DragableList;->f:I
sub-int v1, p2, v1
iget v2, p0, Lcom/twidroid/ui/widgets/DragableList;->g:I
add-int/2addr v1, v2
iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->b:Landroid/view/WindowManager;
iget-object v1, p0, Lcom/twidroid/ui/widgets/DragableList;->a:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/twidroid/ui/widgets/DragableList;->c:Landroid/view/WindowManager$LayoutParams;
invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_47
return-void
.end method
.method static synthetic c(Lcom/twidroid/ui/widgets/DragableList;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/ui/widgets/DragableList;->b()V
return-void
.end method
.method static synthetic d(Lcom/twidroid/ui/widgets/DragableList;)I
.registers 2
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->e:I
return v0
.end method
.method static synthetic e(Lcom/twidroid/ui/widgets/DragableList;)Lcom/twidroid/ui/widgets/g;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->j:Lcom/twidroid/ui/widgets/g;
return-object v0
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 8
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->j:Lcom/twidroid/ui/widgets/g;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->n:Landroid/view/GestureDetector;
if-nez v0, :cond_1c
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->q:I
if-nez v0, :cond_1c
new-instance v0, Landroid/view/GestureDetector;
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getContext()Landroid/content/Context;
move-result-object v1
new-instance v2, Lcom/twidroid/ui/widgets/DragableList$1;
invoke-direct {v2, p0}, Lcom/twidroid/ui/widgets/DragableList$1;-><init>(Lcom/twidroid/ui/widgets/DragableList;)V
invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->n:Landroid/view/GestureDetector;
:cond_1c
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->h:Lcom/twidroid/ui/widgets/e;
if-nez v0, :cond_24
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->i:Lcom/twidroid/ui/widgets/f;
if-eqz v0, :cond_2b
:cond_24
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_b0
:goto_2b
:cond_2b
invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_2f
return v0
:pswitch_30
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
float-to-int v1, v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
float-to-int v2, v0
invoke-virtual {p0, v1, v2}, Lcom/twidroid/ui/widgets/DragableList;->pointToPosition(II)I
move-result v3
const/4 v0, -0x1
if-eq v3, v0, :cond_2b
invoke-virtual {p0, v3}, Lcom/twidroid/ui/widgets/DragableList;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/c/h;
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getFirstVisiblePosition()I
move-result v0
sub-int v0, v3, v0
invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/DragableList;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v4
sub-int v4, v2, v4
iput v4, p0, Lcom/twidroid/ui/widgets/DragableList;->f:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F
move-result v4
float-to-int v4, v4
sub-int/2addr v4, v2
iput v4, p0, Lcom/twidroid/ui/widgets/DragableList;->g:I
const v4, 0x7f090105
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
iget-object v5, p0, Lcom/twidroid/ui/widgets/DragableList;->r:Landroid/graphics/Rect;
invoke-virtual {v4, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V
iget v4, v5, Landroid/graphics/Rect;->right:I
mul-int/lit8 v4, v4, 0x2
if-ge v1, v4, :cond_ab
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-direct {p0, v0, v2}, Lcom/twidroid/ui/widgets/DragableList;->a(Landroid/graphics/Bitmap;I)V
iput v3, p0, Lcom/twidroid/ui/widgets/DragableList;->d:I
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->d:I
iput v0, p0, Lcom/twidroid/ui/widgets/DragableList;->e:I
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getHeight()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/widgets/DragableList;->m:I
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->t:I
sub-int v1, v2, v0
iget v3, p0, Lcom/twidroid/ui/widgets/DragableList;->m:I
div-int/lit8 v3, v3, 0x3
invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I
move-result v1
iput v1, p0, Lcom/twidroid/ui/widgets/DragableList;->k:I
add-int/2addr v0, v2
iget v1, p0, Lcom/twidroid/ui/widgets/DragableList;->m:I
mul-int/lit8 v1, v1, 0x2
div-int/lit8 v1, v1, 0x3
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Lcom/twidroid/ui/widgets/DragableList;->l:I
const/4 v0, 0x0
goto :goto_2f
:cond_ab
invoke-direct {p0}, Lcom/twidroid/ui/widgets/DragableList;->b()V
goto/16 :goto_2b
:pswitch_data_b0
.packed-switch 0x0
:pswitch_30
.end packed-switch
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 8
const/4 v1, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->n:Landroid/view/GestureDetector;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->n:Landroid/view/GestureDetector;
invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
:cond_b
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->h:Lcom/twidroid/ui/widgets/e;
if-nez v0, :cond_13
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->i:Lcom/twidroid/ui/widgets/f;
if-eqz v0, :cond_ec
:cond_13
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->a:Landroid/widget/ImageView;
if-eqz v0, :cond_ec
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_f4
:goto_1e
:cond_1e
move v0, v1
:goto_1f
return v0
:pswitch_20
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->r:Landroid/graphics/Rect;
iget-object v2, p0, Lcom/twidroid/ui/widgets/DragableList;->a:Landroid/widget/ImageView;
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V
invoke-direct {p0}, Lcom/twidroid/ui/widgets/DragableList;->b()V
iget v2, p0, Lcom/twidroid/ui/widgets/DragableList;->q:I
if-ne v2, v1, :cond_4c
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v2
iget v0, v0, Landroid/graphics/Rect;->right:I
mul-int/lit8 v0, v0, 0x3
div-int/lit8 v0, v0, 0x4
int-to-float v0, v0
cmpl-float v0, v2, v0
if-lez v0, :cond_4c
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->j:Lcom/twidroid/ui/widgets/g;
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->j:Lcom/twidroid/ui/widgets/g;
iget v2, p0, Lcom/twidroid/ui/widgets/DragableList;->e:I
invoke-interface {v0, v2}, Lcom/twidroid/ui/widgets/g;->a(I)V
:cond_48
invoke-direct {p0, v1}, Lcom/twidroid/ui/widgets/DragableList;->a(Z)V
goto :goto_1e
:cond_4c
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->i:Lcom/twidroid/ui/widgets/f;
if-eqz v0, :cond_65
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->d:I
if-ltz v0, :cond_65
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->d:I
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getCount()I
move-result v2
if-ge v0, v2, :cond_65
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->i:Lcom/twidroid/ui/widgets/f;
iget v2, p0, Lcom/twidroid/ui/widgets/DragableList;->e:I
iget v4, p0, Lcom/twidroid/ui/widgets/DragableList;->d:I
invoke-interface {v0, v2, v4}, Lcom/twidroid/ui/widgets/f;->a(II)V
:cond_65
invoke-direct {p0, v3}, Lcom/twidroid/ui/widgets/DragableList;->a(Z)V
goto :goto_1e
:pswitch_69
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v2
float-to-int v2, v2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v4
float-to-int v4, v4
invoke-direct {p0, v2, v4}, Lcom/twidroid/ui/widgets/DragableList;->b(II)V
invoke-direct {p0, v4}, Lcom/twidroid/ui/widgets/DragableList;->a(I)I
move-result v2
iget v5, p0, Lcom/twidroid/ui/widgets/DragableList;->x:I
if-lt v2, v5, :cond_1e
if-eqz v0, :cond_84
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->d:I
if-eq v2, v0, :cond_94
:cond_84
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->h:Lcom/twidroid/ui/widgets/e;
if-eqz v0, :cond_8f
iget-object v0, p0, Lcom/twidroid/ui/widgets/DragableList;->h:Lcom/twidroid/ui/widgets/e;
iget v5, p0, Lcom/twidroid/ui/widgets/DragableList;->d:I
invoke-interface {v0, v5, v2}, Lcom/twidroid/ui/widgets/e;->a(II)V
:cond_8f
iput v2, p0, Lcom/twidroid/ui/widgets/DragableList;->d:I
invoke-direct {p0}, Lcom/twidroid/ui/widgets/DragableList;->a()V
:cond_94
invoke-direct {p0, v4}, Lcom/twidroid/ui/widgets/DragableList;->b(I)V
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->l:I
if-le v4, v0, :cond_dc
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->m:I
iget v2, p0, Lcom/twidroid/ui/widgets/DragableList;->l:I
add-int/2addr v0, v2
div-int/lit8 v0, v0, 0x2
if-le v4, v0, :cond_da
const/16 v0, 0x10
:goto_a6
move v2, v0
:goto_a7
if-eqz v2, :cond_1e
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->m:I
div-int/lit8 v0, v0, 0x2
invoke-virtual {p0, v3, v0}, Lcom/twidroid/ui/widgets/DragableList;->pointToPosition(II)I
move-result v0
const/4 v4, -0x1
if-ne v0, v4, :cond_c3
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->m:I
div-int/lit8 v0, v0, 0x2
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getDividerHeight()I
move-result v4
add-int/2addr v0, v4
add-int/lit8 v0, v0, 0x40
invoke-virtual {p0, v3, v0}, Lcom/twidroid/ui/widgets/DragableList;->pointToPosition(II)I
move-result v0
:cond_c3
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/DragableList;->getFirstVisiblePosition()I
move-result v3
sub-int v3, v0, v3
invoke-virtual {p0, v3}, Lcom/twidroid/ui/widgets/DragableList;->getChildAt(I)Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_1e
invoke-virtual {v3}, Landroid/view/View;->getTop()I
move-result v3
sub-int v2, v3, v2
invoke-virtual {p0, v0, v2}, Lcom/twidroid/ui/widgets/DragableList;->setSelectionFromTop(II)V
goto/16 :goto_1e
:cond_da
const/4 v0, 0x4
goto :goto_a6
:cond_dc
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->k:I
if-ge v4, v0, :cond_f2
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->k:I
div-int/lit8 v0, v0, 0x2
if-ge v4, v0, :cond_ea
const/16 v0, -0x10
:goto_e8
move v2, v0
goto :goto_a7
:cond_ea
const/4 v0, -0x4
goto :goto_e8
:cond_ec
invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto/16 :goto_1f
:cond_f2
move v2, v3
goto :goto_a7
:pswitch_data_f4
.packed-switch 0x0
:pswitch_69
:pswitch_20
:pswitch_69
:pswitch_20
.end packed-switch
.end method
.method public setDragListener(Lcom/twidroid/ui/widgets/e;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/widgets/DragableList;->h:Lcom/twidroid/ui/widgets/e;
return-void
.end method
.method public setDropListener(Lcom/twidroid/ui/widgets/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/widgets/DragableList;->i:Lcom/twidroid/ui/widgets/f;
return-void
.end method
.method public setFixedItemsCount(I)V
.registers 3
iget v0, p0, Lcom/twidroid/ui/widgets/DragableList;->x:I
if-ltz v0, :cond_6
iput p1, p0, Lcom/twidroid/ui/widgets/DragableList;->x:I
:cond_6
return-void
.end method
.method public setRemoveListener(Lcom/twidroid/ui/widgets/g;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/widgets/DragableList;->j:Lcom/twidroid/ui/widgets/g;
return-void
.end method