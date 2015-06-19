.class public Lcom/spotify/mobile/android/ui/view/ConnectIconView;
.super Landroid/view/View;
.source "SourceFile"
.field  a:Landroid/animation/Animator$AnimatorListener;
.field private b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
.field private c:Landroid/graphics/Path;
.field private d:Landroid/graphics/Path;
.field private e:Landroid/graphics/Path;
.field private f:Landroid/graphics/Path;
.field private g:Landroid/graphics/Path;
.field private h:Landroid/graphics/Paint;
.field private i:Landroid/graphics/Paint;
.field private j:Landroid/graphics/Paint;
.field private k:Landroid/graphics/Paint;
.field private l:Landroid/graphics/Paint;
.field private m:I
.field private n:I
.field private o:J
.field private p:I
.field private q:I
.field private r:I
.field private s:Landroid/animation/ValueAnimator;
.field private t:Landroid/animation/ValueAnimator;
.field private u:F
.field private v:F
.field private w:Z
.field private x:Landroid/util/SparseArray;
.field private y:Lcom/spotify/mobile/android/ui/view/d;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
sget-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
iput v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->m:I
iput v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->n:I
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->w:Z
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->x:Landroid/util/SparseArray;
new-instance v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$1;-><init>(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a:Landroid/animation/Animator$AnimatorListener;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
sget-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
iput v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->m:I
iput v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->n:I
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->w:Z
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->x:Landroid/util/SparseArray;
new-instance v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$1;-><init>(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a:Landroid/animation/Animator$AnimatorListener;
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
iput v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->m:I
iput v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->n:I
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->w:Z
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->x:Landroid/util/SparseArray;
new-instance v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$1;-><init>(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a:Landroid/animation/Animator$AnimatorListener;
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method private declared-synchronized a(FFFF)F
.registers 8
const/high16 v0, 0x3f80
monitor-enter p0
cmpg-float v1, p4, p1
if-gez v1, :cond_9
:cond_7
:goto_7
monitor-exit p0
return v0
:cond_9
cmpl-float v1, p3, p2
if-gtz v1, :cond_7
cmpg-float v1, p3, p1
if-gez v1, :cond_12
move p3, p1
:cond_12
cmpl-float v1, p4, p2
if-lez v1, :cond_17
move p4, p2
:cond_17
sub-float v1, p4, p3
sub-float v2, p2, p1
div-float/2addr v1, v2
sub-float/2addr v0, v1
goto :goto_7
.end method
.method private declared-synchronized a(F)Landroid/graphics/DashPathEffect;
.registers 5
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->u:F
sub-float/2addr v0, p1
const/high16 v1, 0x4000
div-float/2addr v0, v1
const/4 v1, 0x2
new-array v1, v1, [F
const/4 v2, 0x0
aput p1, v1, v2
const/4 v2, 0x1
aput v0, v1, v2
new-instance v0, Landroid/graphics/DashPathEffect;
invoke-direct {v0, v1, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V
:try_end_15
.catchall {:try_start_1 .. :try_end_15} :catchall_17
monitor-exit p0
return-object v0
:catchall_17
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)Lcom/spotify/mobile/android/ui/view/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->y:Lcom/spotify/mobile/android/ui/view/d;
return-object v0
.end method
.method private declared-synchronized a(I)V
.registers 3
monitor-enter p0
:try_start_1
iput p1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->p:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->h:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->i:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->j:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->k:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->l:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->invalidate()V
:try_end_1f
.catchall {:try_start_1 .. :try_end_1f} :catchall_21
monitor-exit p0
return-void
:catchall_21
move-exception v0
monitor-exit p0
throw v0
.end method
.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
sget-object v0, Lcom/spotify/music/d;->q:[I
invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-static {}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->values()[Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
move-result-object v1
const/4 v2, 0x0
sget-object v3, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->ordinal()I
move-result v3
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v2
aget-object v1, v1, v2
iput-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/view/ConnectIconView;F)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b(F)V
return-void
.end method
.method private declared-synchronized a(ZLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
.registers 8
const/high16 v3, 0x43fa
monitor-enter p0
if-eqz p1, :cond_42
const/4 v0, 0x2
:try_start_6
new-array v0, v0, [F
const/4 v1, 0x0
iget v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->v:F
aput v2, v0, v1
const/4 v1, 0x1
const/4 v2, 0x0
aput v2, v0, v1
invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
iget v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->v:F
mul-float/2addr v0, v3
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->u:F
div-float/2addr v0, v1
float-to-long v0, v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
:goto_23
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
new-instance v1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$2;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$2;-><init>(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)V
invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
if-eqz p2, :cond_34
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
:cond_34
if-eqz p3, :cond_3b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
:cond_3b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
:try_end_40
.catchall {:try_start_6 .. :try_end_40} :catchall_65
monitor-exit p0
return-void
:cond_42
const/4 v0, 0x2
:try_start_43
new-array v0, v0, [F
const/4 v1, 0x0
iget v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->v:F
aput v2, v0, v1
const/4 v1, 0x1
iget v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->u:F
aput v2, v0, v1
invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
iget v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->u:F
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->v:F
sub-float/2addr v0, v1
mul-float/2addr v0, v3
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->u:F
div-float/2addr v0, v1
float-to-long v0, v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
:try_end_64
.catchall {:try_start_43 .. :try_end_64} :catchall_65
goto :goto_23
:catchall_65
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
return-object v0
.end method
.method private declared-synchronized b(F)V
.registers 5
monitor-enter p0
:try_start_1
iput p1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->v:F
invoke-static {p1}, Ljava/lang/Math;->round(F)I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->x:Landroid/util/SparseArray;
invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_18
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->x:Landroid/util/SparseArray;
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(F)Landroid/graphics/DashPathEffect;
move-result-object v2
invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_18
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->l:Landroid/graphics/Paint;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->x:Landroid/util/SparseArray;
invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/PathEffect;
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->invalidate()V
:try_end_28
.catchall {:try_start_1 .. :try_end_28} :catchall_2a
monitor-exit p0
return-void
:catchall_2a
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized b(Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;)V
.registers 4
monitor-enter p0
:try_start_1
sget-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$6;->a:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_38
iget v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->r:I
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(I)V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b(F)V
:goto_15
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iput-wide v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->o:J
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
:try_end_1d
.catchall {:try_start_1 .. :try_end_1d} :catchall_2a
monitor-exit p0
return-void
:try_start_1f
:pswitch_1f
iget v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->r:I
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(I)V
iget v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->u:F
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b(F)V
:try_end_29
.catchall {:try_start_1f .. :try_end_29} :catchall_2a
goto :goto_15
:catchall_2a
move-exception v0
monitor-exit p0
throw v0
:pswitch_2d
:try_start_2d
iget v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->q:I
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(I)V
iget v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->u:F
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b(F)V
:try_end_37
.catchall {:try_start_2d .. :try_end_37} :catchall_2a
goto :goto_15
:pswitch_data_38
.packed-switch 0x1
:pswitch_1f
:pswitch_2d
.end packed-switch
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/view/ConnectIconView;F)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->c(F)V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)Landroid/animation/ValueAnimator;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
return-object v0
.end method
.method private declared-synchronized c()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->s:Landroid/animation/ValueAnimator;
:cond_17
:try_end_17
.catchall {:try_start_1 .. :try_end_17} :catchall_19
monitor-exit p0
return-void
:catchall_19
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized c(F)V
.registers 8
const/high16 v5, 0x437f
const/high16 v1, 0x3f80
monitor-enter p0
:try_start_5
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->w:Z
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_3e
if-nez v0, :cond_b
:goto_9
monitor-exit p0
return-void
:cond_b
sub-float v0, p1, v1
add-float/2addr v1, p1
:try_start_e
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->i:Landroid/graphics/Paint;
const/4 v3, 0x0
const/high16 v4, 0x3f80
invoke-direct {p0, v3, v4, v0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(FFFF)F
move-result v3
mul-float/2addr v3, v5
float-to-int v3, v3
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->j:Landroid/graphics/Paint;
const/high16 v3, 0x3f80
const/high16 v4, 0x4000
invoke-direct {p0, v3, v4, v0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(FFFF)F
move-result v3
mul-float/2addr v3, v5
float-to-int v3, v3
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->k:Landroid/graphics/Paint;
const/high16 v3, 0x4000
const/high16 v4, 0x4040
invoke-direct {p0, v3, v4, v0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(FFFF)F
move-result v0
mul-float/2addr v0, v5
float-to-int v0, v0
invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->invalidate()V
:try_end_3d
.catchall {:try_start_e .. :try_end_3d} :catchall_3e
goto :goto_9
:catchall_3e
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)F
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->u:F
return v0
.end method
.method private declared-synchronized d()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
:cond_17
:try_end_17
.catchall {:try_start_1 .. :try_end_17} :catchall_19
monitor-exit p0
return-void
:catchall_19
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a()Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(ILandroid/animation/Animator$AnimatorListener;)V
.registers 6
monitor-enter p0
const/4 v0, 0x2
:try_start_2
new-array v0, v0, [F
fill-array-data v0, :array_3a
invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
if-eqz p2, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
:cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
new-instance v1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$3;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$3;-><init>(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)V
invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
const-wide/16 v1, 0x258
invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->t:Landroid/animation/ValueAnimator;
invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
:try_end_35
.catchall {:try_start_2 .. :try_end_35} :catchall_37
monitor-exit p0
return-void
:catchall_37
move-exception v0
monitor-exit p0
throw v0
:array_3a
.array-data 0x4
0x0t 0x0t 0x0t 0xc0t
0x0t 0x0t 0xa0t 0x40t
.end array-data
.end method
.method public final declared-synchronized a(Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;)V
.registers 6
const/4 v1, 0x0
const/4 v0, 0x1
monitor-enter p0
:try_start_3
iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->w:Z
if-nez v2, :cond_e
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->invalidate()V
:goto_c
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_33
monitor-exit p0
return-void
:try_start_e
:cond_e
sget-object v2, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->d:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
if-ne p1, v2, :cond_36
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
sget-object v3, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->d:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
if-eq v2, v3, :cond_36
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->c()V
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->d()V
sget-object v1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->c:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b(Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;)V
const/4 v1, -0x1
const/4 v2, 0x0
invoke-virtual {p0, v1, v2}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(ILandroid/animation/Animator$AnimatorListener;)V
:cond_28
:goto_28
if-eqz v0, :cond_30
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iput-wide v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->o:J
:cond_30
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
:try_end_32
.catchall {:try_start_e .. :try_end_32} :catchall_33
goto :goto_c
:catchall_33
move-exception v0
monitor-exit p0
throw v0
:cond_36
:try_start_36
sget-object v2, Lcom/spotify/mobile/android/ui/view/ConnectIconView$6;->a:[I
iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_106
:goto_43
move v0, v1
goto :goto_28
:pswitch_45
sget-object v2, Lcom/spotify/mobile/android/ui/view/ConnectIconView$6;->a:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_112
move v0, v1
goto :goto_28
:pswitch_52
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->c()V
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->d()V
const/4 v1, 0x0
new-instance v2, Lcom/spotify/mobile/android/ui/view/ConnectIconView$4;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$4;-><init>(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)V
const/4 v3, 0x0
invoke-direct {p0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(ZLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
goto :goto_28
:pswitch_63
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->c()V
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->d()V
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->q:I
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(I)V
const/4 v1, 0x0
new-instance v2, Lcom/spotify/mobile/android/ui/view/ConnectIconView$5;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$5;-><init>(Lcom/spotify/mobile/android/ui/view/ConnectIconView;)V
const/4 v3, 0x0
invoke-direct {p0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(ZLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
goto :goto_28
:pswitch_79
sget-object v2, Lcom/spotify/mobile/android/ui/view/ConnectIconView$6;->a:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_11a
move v0, v1
goto :goto_28
:pswitch_86
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->c()V
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a:Landroid/animation/Animator$AnimatorListener;
invoke-direct {p0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(ZLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
goto :goto_28
:pswitch_91
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->d()V
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->q:I
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(I)V
const/4 v1, 0x1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a:Landroid/animation/Animator$AnimatorListener;
invoke-virtual {p0, v1, v2}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(ILandroid/animation/Animator$AnimatorListener;)V
goto :goto_28
:pswitch_a0
sget-object v2, Lcom/spotify/mobile/android/ui/view/ConnectIconView$6;->a:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_122
:pswitch_ab
move v0, v1
goto/16 :goto_28
:pswitch_ae
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->c()V
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->r:I
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(I)V
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a:Landroid/animation/Animator$AnimatorListener;
invoke-direct {p0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(ZLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
goto/16 :goto_28
:pswitch_bf
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->r:I
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->y:Lcom/spotify/mobile/android/ui/view/d;
if-eqz v1, :cond_28
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->y:Lcom/spotify/mobile/android/ui/view/d;
invoke-interface {v1, p1}, Lcom/spotify/mobile/android/ui/view/d;->a(Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;)V
goto/16 :goto_28
:pswitch_cf
sget-object v2, Lcom/spotify/mobile/android/ui/view/ConnectIconView$6;->a:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_12c
goto/16 :goto_43
:pswitch_dc
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->d()V
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->r:I
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->y:Lcom/spotify/mobile/android/ui/view/d;
if-eqz v1, :cond_28
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->y:Lcom/spotify/mobile/android/ui/view/d;
invoke-interface {v1, p1}, Lcom/spotify/mobile/android/ui/view/d;->a(Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;)V
goto/16 :goto_28
:pswitch_ef
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->d()V
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->r:I
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(I)V
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a:Landroid/animation/Animator$AnimatorListener;
invoke-direct {p0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(ZLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
goto/16 :goto_28
:pswitch_100
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->d()V
:try_end_103
.catchall {:try_start_36 .. :try_end_103} :catchall_33
goto/16 :goto_28
nop
:pswitch_data_12c
.packed-switch 0x1
:pswitch_dc
:pswitch_100
:pswitch_ef
.end packed-switch
:pswitch_data_112
.packed-switch 0x1
:pswitch_52
:pswitch_63
.end packed-switch
:pswitch_data_122
.packed-switch 0x1
:pswitch_bf
:pswitch_ab
:pswitch_ae
.end packed-switch
:pswitch_data_11a
.packed-switch 0x2
:pswitch_91
:pswitch_86
.end packed-switch
:pswitch_data_106
.packed-switch 0x1
:pswitch_79
:pswitch_a0
:pswitch_45
:pswitch_cf
.end packed-switch
.end method
.method public final declared-synchronized a(Lcom/spotify/mobile/android/ui/view/d;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->y:Lcom/spotify/mobile/android/ui/view/d;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-void
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final b()J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->o:J
return-wide v0
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 13
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
iget v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->m:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getWidth()I
move-result v1
if-ne v0, v1, :cond_13
iget v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->n:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getHeight()I
move-result v1
if-eq v0, v1, :cond_425
:cond_13
const/4 v0, 0x1
:goto_14
if-eqz v0, :cond_428
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->w:Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getWidth()I
move-result v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getHeight()I
move-result v1
iput v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->m:I
iput v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->n:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getPaddingLeft()I
move-result v2
sub-int/2addr v0, v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getPaddingRight()I
move-result v2
sub-int/2addr v0, v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getPaddingTop()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getPaddingBottom()I
move-result v2
sub-int/2addr v1, v2
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->n:I
sub-int/2addr v1, v0
div-int/lit8 v1, v1, 0x2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getPaddingTop()I
move-result v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getPaddingBottom()I
move-result v3
sub-int/2addr v2, v3
add-int v7, v1, v2
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->m:I
sub-int/2addr v1, v0
div-int/lit8 v1, v1, 0x2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getPaddingLeft()I
move-result v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getPaddingRight()I
move-result v3
sub-int/2addr v2, v3
add-int v8, v1, v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0900bd
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
iput v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->q:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0900be
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
iput v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->r:I
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->r:I
iput v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->p:I
int-to-float v0, v0
const v1, 0x42383d71
div-float v9, v0, v1
const/high16 v0, 0x4040
mul-float v10, v0, v9
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
const/high16 v1, 0x41d8
const v2, 0x4137ae14
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V
const/high16 v1, 0x41d8
const/high16 v2, 0x4130
const v3, 0x41d5d70a
const v4, 0x41291eb8
const v5, 0x41d26666
const v6, 0x4125eb85
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x41cef5c3
const v2, 0x4122b852
const v3, 0x41cae148
const v4, 0x4123ae14
const/high16 v5, 0x41c8
const v6, 0x412851ec
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x41b88f5c
const v2, 0x414170a4
const v3, 0x418b0a3d
const/high16 v4, 0x4182
const v5, 0x4164f5c3
const v6, 0x418570a4
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x4164cccd
const v2, 0x4185851f
const v3, 0x41647ae1
const v4, 0x4185851f
const v5, 0x416451ec
const v6, 0x4185851f
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x4150cccd
const v2, 0x418747ae
const v3, 0x411f5c29
const v4, 0x418acccd
const v5, 0x411ee148
const v6, 0x418ae148
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x411547ae
const v2, 0x418b999a
const v3, 0x410e147b
const v4, 0x418fae14
const v5, 0x410e147b
const v6, 0x41948f5c
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x410e147b
const v2, 0x41b73333
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V
const v1, 0x410e147b
const v2, 0x41b75c29
const v3, 0x410e147b
const v4, 0x41b7851f
const v5, 0x410e147b
const v6, 0x41b7ae14
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x410e147b
const v2, 0x41b7d70a
const v3, 0x410e147b
const/high16 v4, 0x41b8
const v5, 0x410e147b
const v6, 0x41b828f6
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x410e147b
const v2, 0x41dab852
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V
const v1, 0x410e147b
const v2, 0x41df999a
const v3, 0x411547ae
const v4, 0x41e3c28f
const v5, 0x411ee148
const v6, 0x41e47ae1
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x411f5c29
const v2, 0x41e47ae1
const v3, 0x4150cccd
const v4, 0x41e8147b
const v5, 0x416451ec
const v6, 0x41e9d70a
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x41647ae1
const v2, 0x41e9d70a
const v3, 0x4164cccd
const v4, 0x41e9d70a
const v5, 0x4164f5c3
const v6, 0x41e9d70a
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x418b0a3d
const v2, 0x41ed47ae
const v3, 0x41b87ae1
const v4, 0x420747ae
const/high16 v5, 0x41c8
const v6, 0x420d8f5c
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x41c9c28f
const v2, 0x420e47ae
const/high16 v3, 0x41cc
const v4, 0x420eae14
const v5, 0x41ce28f6
const v6, 0x420eae14
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x41cf999a
const v2, 0x420eae14
const v3, 0x41d10a3d
const v4, 0x420e851f
const v5, 0x41d26666
const v6, 0x420e3333
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x41d5d70a
const v2, 0x420d6666
const/high16 v3, 0x41d8
const v4, 0x420ba3d7
const/high16 v5, 0x41d8
const v6, 0x4209c28f
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const/high16 v1, 0x41d8
const v2, 0x41b828f6
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V
const/high16 v1, 0x41d8
const/high16 v2, 0x41b8
const/high16 v3, 0x41d8
const v4, 0x41b7d70a
const/high16 v5, 0x41d8
const v6, 0x41b7ae14
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const/high16 v1, 0x41d8
const v2, 0x41b7851f
const/high16 v3, 0x41d8
const v4, 0x41b75c29
const/high16 v5, 0x41d8
const v6, 0x41b73333
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const/high16 v1, 0x41d8
const v2, 0x4137ae14
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V
invoke-virtual {v0}, Landroid/graphics/Path;->close()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->c:Landroid/graphics/Path;
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
const v1, 0x41f2f5c3
const v2, 0x41963d71
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V
const v1, 0x41f8b852
const v2, 0x41a028f6
const v3, 0x41fc147b
const v4, 0x41abc28f
const v5, 0x41fc147b
const v6, 0x41b8147b
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x41fc147b
const v2, 0x41c43d71
const v3, 0x41f8cccd
const v4, 0x41cfae14
const v5, 0x41f33333
const v6, 0x41d9851f
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->d:Landroid/graphics/Path;
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
const v1, 0x420beb85
const v2, 0x417547ae
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V
const v1, 0x4211ae14
const v2, 0x418c51ec
const/high16 v3, 0x4215
const v4, 0x41a170a4
const/high16 v5, 0x4215
const v6, 0x41b8147b
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const/high16 v1, 0x4215
const v2, 0x41ce6666
const v3, 0x4211c28f
const v4, 0x41e347ae
const v5, 0x420c28f6
const v6, 0x41f4e148
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->e:Landroid/graphics/Path;
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
const v1, 0x421e51ec
const v2, 0x413e147b
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V
const v1, 0x4226eb85
const v2, 0x4170f5c3
const v3, 0x422bf5c3
const v4, 0x41971eb8
const v5, 0x422bf5c3
const v6, 0x41b8147b
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x422bf5c3
const v2, 0x41d8a3d7
const v3, 0x4227147b
const v4, 0x41f6e148
const v5, 0x421ea3d7
const v6, 0x42080a3d
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->f:Landroid/graphics/Path;
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
const v1, 0x4211a3d7
const v2, 0x42171eb8
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V
const v1, 0x42037ae1
const v2, 0x4223e148
const v3, 0x41e170a4
const v4, 0x422ba3d7
const v5, 0x41b83d71
const v6, 0x422ba3d7
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const/high16 v1, 0x4140
const v2, 0x422ba3d7
const v3, 0x40447ae1
const/high16 v4, 0x4208
const v5, 0x40447ae1
const v6, 0x41b8147b
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x40447ae1
const v2, 0x414051ec
const/high16 v3, 0x4140
const v4, 0x40470a3d
const v5, 0x41b83d71
const v6, 0x40470a3d
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
const v1, 0x41e13333
const v2, 0x40470a3d
const v3, 0x420351ec
const v4, 0x40a147ae
const v5, 0x42117ae1
const v6, 0x41033333
invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->g:Landroid/graphics/Path;
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v0, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V
int-to-float v1, v8
int-to-float v2, v7
invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->c:Landroid/graphics/Path;
invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->d:Landroid/graphics/Path;
invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->e:Landroid/graphics/Path;
invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->f:Landroid/graphics/Path;
invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->g:Landroid/graphics/Path;
invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->p:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->h:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->p:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
const/16 v1, 0xff
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->i:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->p:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
const/16 v1, 0xff
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->j:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->p:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
const/16 v1, 0xff
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->k:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->p:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(F)Landroid/graphics/DashPathEffect;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->l:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/PathMeasure;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->g:Landroid/graphics/Path;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V
const/4 v1, 0x0
iput v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->v:F
invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->u:F
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->l:Landroid/graphics/Paint;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->i:Landroid/graphics/Paint;
const/16 v1, 0xff
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->j:Landroid/graphics/Paint;
const/16 v1, 0xff
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->k:Landroid/graphics/Paint;
const/16 v1, 0xff
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->x:Landroid/util/SparseArray;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {p0, v2}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(F)Landroid/graphics/DashPathEffect;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b(Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->w:Z
:goto_424
return-void
:cond_425
const/4 v0, 0x0
goto/16 :goto_14
:cond_428
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->c:Landroid/graphics/Path;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->h:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->d:Landroid/graphics/Path;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->i:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->e:Landroid/graphics/Path;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->j:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->f:Landroid/graphics/Path;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->k:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->g:Landroid/graphics/Path;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->l:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
goto :goto_424
.end method
.method protected declared-synchronized onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/ui/view/ConnectIconView; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
monitor-enter p0
:try_start_1
check-cast p1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget-object v0, p1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
iget-wide v0, p1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;->b:J
iput-wide v0, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->o:J
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_14
monitor-exit p0
const-string v1, " - Lcom/spotify/mobile/android/ui/view/ConnectIconView; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected declared-synchronized onSaveInstanceState()Landroid/os/Parcelable;
.registers 6
const-string v1, " + Lcom/spotify/mobile/android/ui/view/ConnectIconView; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
monitor-enter p0
:try_start_1
invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
iget-wide v3, p0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->o:J
invoke-direct {v1, v0, v2, v3, v4}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$SavedState;-><init>(Landroid/os/Parcelable;Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;J)V
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_10
monitor-exit p0
move-object v2, v1
const-string v1, " - Lcom/spotify/mobile/android/ui/view/ConnectIconView; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v1, v2
return-object v1
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method