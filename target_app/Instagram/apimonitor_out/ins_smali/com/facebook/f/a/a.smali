.class public Lcom/facebook/f/a/a;
.super Ljava/lang/Object;
.source "AdvancedDragDetector.java"
.field private static final a:Ljava/lang/Class;
.field private b:I
.field private c:I
.field private d:I
.field private e:I
.field private f:I
.field private g:F
.field private h:F
.field private i:F
.field private j:F
.field private k:Lcom/facebook/f/a/h;
.field private l:I
.field private m:Landroid/view/VelocityTracker;
.field private n:I
.field private o:Lcom/facebook/f/a/c;
.field private p:Lcom/facebook/f/a/d;
.field private q:Lcom/facebook/f/a/f;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/f/a/a;
sput-object v0, Lcom/facebook/f/a/a;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x0
const/high16 v2, -0x4080
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget v0, Lcom/facebook/f/a/g;->b:I
iput v0, p0, Lcom/facebook/f/a/a;->f:I
iput v2, p0, Lcom/facebook/f/a/a;->g:F
iput v2, p0, Lcom/facebook/f/a/a;->h:F
iput v3, p0, Lcom/facebook/f/a/a;->i:F
iput v3, p0, Lcom/facebook/f/a/a;->j:F
iput-object v1, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;
sget v0, Lcom/facebook/f/a/e;->a:I
iput v0, p0, Lcom/facebook/f/a/a;->l:I
iput-object v1, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;
const/4 v0, 0x0
iput v0, p0, Lcom/facebook/f/a/a;->n:I
iput-object v1, p0, Lcom/facebook/f/a/a;->o:Lcom/facebook/f/a/c;
iput-object v1, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;
iput-object v1, p0, Lcom/facebook/f/a/a;->q:Lcom/facebook/f/a/f;
invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/az;->a(Landroid/view/ViewConfiguration;)I
move-result v1
iput v1, p0, Lcom/facebook/f/a/a;->b:I
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v1
iput v1, p0, Lcom/facebook/f/a/a;->c:I
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I
move-result v1
iput v1, p0, Lcom/facebook/f/a/a;->d:I
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I
move-result v0
iput v0, p0, Lcom/facebook/f/a/a;->e:I
return-void
.end method
.method private a(FF)V
.registers 10
const/high16 v6, 0x3f00
invoke-direct {p0}, Lcom/facebook/f/a/a;->g()Z
move-result v0
if-nez v0, :cond_e
invoke-direct {p0}, Lcom/facebook/f/a/a;->f()Z
move-result v0
if-eqz v0, :cond_f
:cond_e
:goto_e
return-void
:cond_f
iget v0, p0, Lcom/facebook/f/a/a;->g:F
sub-float v0, p1, v0
float-to-int v0, v0
iget v1, p0, Lcom/facebook/f/a/a;->h:F
sub-float v1, p2, v1
float-to-int v1, v1
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v2
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v3
iget v4, p0, Lcom/facebook/f/a/a;->i:F
int-to-float v5, v0
add-float/2addr v4, v5
iput v4, p0, Lcom/facebook/f/a/a;->i:F
iget v4, p0, Lcom/facebook/f/a/a;->j:F
int-to-float v5, v1
add-float/2addr v4, v5
iput v4, p0, Lcom/facebook/f/a/a;->j:F
iget v4, p0, Lcom/facebook/f/a/a;->c:I
if-le v3, v4, :cond_5e
iget v4, p0, Lcom/facebook/f/a/a;->f:I
sget v5, Lcom/facebook/f/a/g;->b:I
if-eq v4, v5, :cond_3e
int-to-float v4, v3
mul-float/2addr v4, v6
int-to-float v5, v2
cmpl-float v4, v4, v5
if-lez v4, :cond_5e
:cond_3e
if-gez v1, :cond_4c
invoke-direct {p0}, Lcom/facebook/f/a/a;->a()Z
move-result v0
if-eqz v0, :cond_4c
sget-object v0, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;
invoke-direct {p0, p1, p2, v0}, Lcom/facebook/f/a/a;->a(FFLcom/facebook/f/a/h;)V
goto :goto_e
:cond_4c
if-lez v1, :cond_5a
invoke-direct {p0}, Lcom/facebook/f/a/a;->b()Z
move-result v0
if-eqz v0, :cond_5a
sget-object v0, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;
invoke-direct {p0, p1, p2, v0}, Lcom/facebook/f/a/a;->a(FFLcom/facebook/f/a/h;)V
goto :goto_e
:cond_5a
invoke-direct {p0}, Lcom/facebook/f/a/a;->i()V
goto :goto_e
:cond_5e
iget v1, p0, Lcom/facebook/f/a/a;->b:I
if-le v2, v1, :cond_e
iget v1, p0, Lcom/facebook/f/a/a;->f:I
sget v4, Lcom/facebook/f/a/g;->a:I
if-eq v1, v4, :cond_6f
int-to-float v1, v2
mul-float/2addr v1, v6
int-to-float v2, v3
cmpl-float v1, v1, v2
if-lez v1, :cond_e
:cond_6f
if-gez v0, :cond_7d
invoke-direct {p0}, Lcom/facebook/f/a/a;->c()Z
move-result v1
if-eqz v1, :cond_7d
sget-object v0, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;
invoke-direct {p0, p1, p2, v0}, Lcom/facebook/f/a/a;->a(FFLcom/facebook/f/a/h;)V
goto :goto_e
:cond_7d
if-lez v0, :cond_8b
invoke-direct {p0}, Lcom/facebook/f/a/a;->d()Z
move-result v0
if-eqz v0, :cond_8b
sget-object v0, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;
invoke-direct {p0, p1, p2, v0}, Lcom/facebook/f/a/a;->a(FFLcom/facebook/f/a/h;)V
goto :goto_e
:cond_8b
invoke-direct {p0}, Lcom/facebook/f/a/a;->i()V
goto :goto_e
.end method
.method private a(FFLcom/facebook/f/a/h;)V
.registers 5
iput p1, p0, Lcom/facebook/f/a/a;->g:F
iput p2, p0, Lcom/facebook/f/a/a;->h:F
iput-object p3, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;
sget v0, Lcom/facebook/f/a/e;->c:I
iput v0, p0, Lcom/facebook/f/a/a;->l:I
iget-object v0, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;
invoke-interface {v0}, Lcom/facebook/f/a/d;->a()Z
return-void
.end method
.method private a(I)V
.registers 3
iget v0, p0, Lcom/facebook/f/a/a;->n:I
or-int/2addr v0, p1
iput v0, p0, Lcom/facebook/f/a/a;->n:I
return-void
.end method
.method private a()Z
.registers 3
sget-object v0, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;
iget v1, p0, Lcom/facebook/f/a/a;->n:I
invoke-virtual {v0, v1}, Lcom/facebook/f/a/h;->a(I)Z
move-result v0
return v0
.end method
.method private a(F)Z
.registers 3
iget-object v0, p0, Lcom/facebook/f/a/a;->o:Lcom/facebook/f/a/c;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/facebook/f/a/a;->o:Lcom/facebook/f/a/c;
invoke-interface {v0, p1}, Lcom/facebook/f/a/c;->a(F)Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x1
goto :goto_a
.end method
.method private varargs b([Lcom/facebook/f/a/h;)V
.registers 4
const/4 v0, 0x0
:goto_1
array-length v1, p1
if-ge v0, v1, :cond_14
aget-object v1, p1, v0
if-eqz v1, :cond_11
aget-object v1, p1, v0
invoke-virtual {v1}, Lcom/facebook/f/a/h;->a()I
move-result v1
invoke-direct {p0, v1}, Lcom/facebook/f/a/a;->a(I)V
:cond_11
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_14
return-void
.end method
.method private b()Z
.registers 3
sget-object v0, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;
iget v1, p0, Lcom/facebook/f/a/a;->n:I
invoke-virtual {v0, v1}, Lcom/facebook/f/a/h;->a(I)Z
move-result v0
return v0
.end method
.method private c()Z
.registers 3
sget-object v0, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;
iget v1, p0, Lcom/facebook/f/a/a;->n:I
invoke-virtual {v0, v1}, Lcom/facebook/f/a/h;->a(I)Z
move-result v0
return v0
.end method
.method private d()Z
.registers 3
sget-object v0, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;
iget v1, p0, Lcom/facebook/f/a/a;->n:I
invoke-virtual {v0, v1}, Lcom/facebook/f/a/h;->a(I)Z
move-result v0
return v0
.end method
.method private e()Z
.registers 2
iget v0, p0, Lcom/facebook/f/a/a;->n:I
if-lez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method private f()Z
.registers 3
iget v0, p0, Lcom/facebook/f/a/a;->l:I
sget v1, Lcom/facebook/f/a/e;->c:I
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private g()Z
.registers 3
iget v0, p0, Lcom/facebook/f/a/a;->l:I
sget v1, Lcom/facebook/f/a/e;->d:I
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private h()Z
.registers 3
iget v0, p0, Lcom/facebook/f/a/a;->i:F
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
iget v1, p0, Lcom/facebook/f/a/a;->c:I
int-to-float v1, v1
cmpg-float v0, v0, v1
if-gez v0, :cond_1c
iget v0, p0, Lcom/facebook/f/a/a;->j:F
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
iget v1, p0, Lcom/facebook/f/a/a;->c:I
int-to-float v1, v1
cmpg-float v0, v0, v1
if-gez v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method private i()V
.registers 3
const/high16 v0, -0x4080
iput v0, p0, Lcom/facebook/f/a/a;->g:F
iput v0, p0, Lcom/facebook/f/a/a;->h:F
sget v0, Lcom/facebook/f/a/e;->d:I
iput v0, p0, Lcom/facebook/f/a/a;->l:I
iget-object v0, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;
const/4 v1, 0x0
iput-object v1, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;
if-eqz v0, :cond_14
invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
:cond_14
return-void
.end method
.method private j()Lcom/facebook/f/a/h;
.registers 2
iget-object v0, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;
:goto_6
return-object v0
:cond_7
invoke-direct {p0}, Lcom/facebook/f/a/a;->d()Z
move-result v0
if-eqz v0, :cond_10
sget-object v0, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;
goto :goto_6
:cond_10
invoke-direct {p0}, Lcom/facebook/f/a/a;->b()Z
move-result v0
if-eqz v0, :cond_19
sget-object v0, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;
goto :goto_6
:cond_19
invoke-direct {p0}, Lcom/facebook/f/a/a;->a()Z
move-result v0
if-eqz v0, :cond_22
sget-object v0, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;
goto :goto_6
:cond_22
sget-object v0, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;
goto :goto_6
.end method
.method private k()Z
.registers 2
iget-object v0, p0, Lcom/facebook/f/a/a;->o:Lcom/facebook/f/a/c;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/facebook/f/a/a;->o:Lcom/facebook/f/a/c;
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final a(Lcom/facebook/f/a/c;)V
.registers 2
iput-object p1, p0, Lcom/facebook/f/a/a;->o:Lcom/facebook/f/a/c;
return-void
.end method
.method public final a(Lcom/facebook/f/a/d;)V
.registers 2
iput-object p1, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;
return-void
.end method
.method public final a(Lcom/facebook/f/a/f;)V
.registers 2
iput-object p1, p0, Lcom/facebook/f/a/a;->q:Lcom/facebook/f/a/f;
return-void
.end method
.method public final varargs a([Lcom/facebook/f/a/h;)V
.registers 3
const/4 v0, 0x0
iput v0, p0, Lcom/facebook/f/a/a;->n:I
invoke-direct {p0, p1}, Lcom/facebook/f/a/a;->b([Lcom/facebook/f/a/h;)V
return-void
.end method
.method public final a(Landroid/view/MotionEvent;)Z
.registers 7
const/4 v0, 0x0
const/4 v4, 0x0
iget-object v1, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;
if-eqz v1, :cond_c
invoke-direct {p0}, Lcom/facebook/f/a/a;->e()Z
move-result v1
if-nez v1, :cond_d
:cond_c
:goto_c
return v0
:cond_d
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
packed-switch v1, :pswitch_data_6c
:cond_1c
:goto_1c
invoke-direct {p0}, Lcom/facebook/f/a/a;->f()Z
move-result v0
goto :goto_c
:pswitch_21
sget v1, Lcom/facebook/f/a/e;->b:I
iput v1, p0, Lcom/facebook/f/a/a;->l:I
iput v4, p0, Lcom/facebook/f/a/a;->i:F
iput v4, p0, Lcom/facebook/f/a/a;->j:F
invoke-direct {p0, v3}, Lcom/facebook/f/a/a;->a(F)Z
move-result v1
if-nez v1, :cond_33
invoke-direct {p0}, Lcom/facebook/f/a/a;->i()V
goto :goto_c
:cond_33
iput v2, p0, Lcom/facebook/f/a/a;->g:F
iput v3, p0, Lcom/facebook/f/a/a;->h:F
invoke-direct {p0}, Lcom/facebook/f/a/a;->k()Z
move-result v0
if-eqz v0, :cond_1c
invoke-direct {p0}, Lcom/facebook/f/a/a;->j()Lcom/facebook/f/a/h;
move-result-object v0
invoke-direct {p0, v2, v3, v0}, Lcom/facebook/f/a/a;->a(FFLcom/facebook/f/a/h;)V
goto :goto_1c
:pswitch_45
invoke-direct {p0, v2, v3}, Lcom/facebook/f/a/a;->a(FF)V
goto :goto_1c
:pswitch_49
iget-object v0, p0, Lcom/facebook/f/a/a;->q:Lcom/facebook/f/a/f;
if-eqz v0, :cond_1c
invoke-direct {p0}, Lcom/facebook/f/a/a;->g()Z
move-result v0
if-nez v0, :cond_1c
invoke-direct {p0}, Lcom/facebook/f/a/a;->f()Z
move-result v0
if-nez v0, :cond_1c
invoke-direct {p0}, Lcom/facebook/f/a/a;->h()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/facebook/f/a/a;->q:Lcom/facebook/f/a/f;
invoke-interface {v0, v2, v3}, Lcom/facebook/f/a/f;->a(FF)Z
move-result v0
if-nez v0, :cond_c
invoke-direct {p0}, Lcom/facebook/f/a/a;->i()V
goto :goto_c
nop
:pswitch_data_6c
.packed-switch 0x0
:pswitch_21
:pswitch_49
:pswitch_45
:pswitch_49
.end packed-switch
.end method
.method public final b(Landroid/view/MotionEvent;)Z
.registers 9
const/4 v1, 0x1
const/4 v0, 0x0
const/4 v5, 0x0
invoke-direct {p0}, Lcom/facebook/f/a/a;->f()Z
move-result v2
if-nez v2, :cond_19
invoke-virtual {p0, p1}, Lcom/facebook/f/a/a;->a(Landroid/view/MotionEvent;)Z
sget-object v2, Lcom/facebook/f/a/b;->a:[I
iget v3, p0, Lcom/facebook/f/a/a;->l:I
add-int/lit8 v3, v3, -0x1
aget v2, v2, v3
packed-switch v2, :pswitch_data_ee
move v0, v1
:cond_18
:goto_18
:pswitch_18
return v0
:cond_19
iget-object v2, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;
if-eqz v2, :cond_18
invoke-direct {p0}, Lcom/facebook/f/a/a;->e()Z
move-result v2
if-eqz v2, :cond_18
iget-object v0, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;
if-nez v0, :cond_2d
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v0
iput-object v0, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;
:cond_2d
iget-object v0, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;
invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
packed-switch v0, :pswitch_data_f4
:goto_41
move v0, v1
goto :goto_18
:pswitch_43
iget v0, p0, Lcom/facebook/f/a/a;->g:F
sub-float v0, v2, v0
iget v4, p0, Lcom/facebook/f/a/a;->h:F
sub-float v4, v3, v4
iput v2, p0, Lcom/facebook/f/a/a;->g:F
iput v3, p0, Lcom/facebook/f/a/a;->h:F
iget v2, p0, Lcom/facebook/f/a/a;->i:F
add-float/2addr v2, v0
iput v2, p0, Lcom/facebook/f/a/a;->i:F
iget v2, p0, Lcom/facebook/f/a/a;->j:F
add-float/2addr v2, v4
iput v2, p0, Lcom/facebook/f/a/a;->j:F
iget-object v2, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;
invoke-virtual {v2}, Lcom/facebook/f/a/h;->c()Z
move-result v2
if-eqz v2, :cond_70
iget-object v2, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;
cmpg-float v3, v4, v5
if-gez v3, :cond_6d
sget-object v3, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;
:goto_69
invoke-interface {v2, v0}, Lcom/facebook/f/a/d;->b(F)V
goto :goto_41
:cond_6d
sget-object v3, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;
goto :goto_69
:cond_70
iget-object v2, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;
cmpg-float v3, v0, v5
if-gez v3, :cond_7c
sget-object v3, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;
:goto_78
invoke-interface {v2, v0}, Lcom/facebook/f/a/d;->b(F)V
goto :goto_41
:cond_7c
sget-object v3, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;
goto :goto_78
:pswitch_7f
iget-object v4, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/f/a/a;->m:Landroid/view/VelocityTracker;
const/16 v0, 0x3e8
iget v5, p0, Lcom/facebook/f/a/a;->e:I
int-to-float v5, v5
invoke-virtual {v4, v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V
iget-object v0, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;
invoke-virtual {v0}, Lcom/facebook/f/a/h;->b()Z
move-result v0
if-eqz v0, :cond_ba
invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F
move-result v0
float-to-int v0, v0
:goto_99
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v5
iget v6, p0, Lcom/facebook/f/a/a;->d:I
if-le v5, v6, :cond_d8
if-gez v0, :cond_c3
iget-object v0, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;
iget-object v2, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;
invoke-virtual {v2}, Lcom/facebook/f/a/h;->b()Z
move-result v2
if-eqz v2, :cond_c0
sget-object v2, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;
:goto_af
invoke-interface {v0}, Lcom/facebook/f/a/d;->c()V
:cond_b2
:goto_b2
sget v0, Lcom/facebook/f/a/e;->a:I
iput v0, p0, Lcom/facebook/f/a/a;->l:I
invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V
goto :goto_41
:cond_ba
invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F
move-result v0
float-to-int v0, v0
goto :goto_99
:cond_c0
sget-object v2, Lcom/facebook/f/a/h;->a:Lcom/facebook/f/a/h;
goto :goto_af
:cond_c3
if-lez v0, :cond_b2
iget-object v0, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;
iget-object v2, p0, Lcom/facebook/f/a/a;->k:Lcom/facebook/f/a/h;
invoke-virtual {v2}, Lcom/facebook/f/a/h;->b()Z
move-result v2
if-eqz v2, :cond_d5
sget-object v2, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;
:goto_d1
invoke-interface {v0}, Lcom/facebook/f/a/d;->c()V
goto :goto_b2
:cond_d5
sget-object v2, Lcom/facebook/f/a/h;->b:Lcom/facebook/f/a/h;
goto :goto_d1
:cond_d8
iget-object v0, p0, Lcom/facebook/f/a/a;->q:Lcom/facebook/f/a/f;
if-eqz v0, :cond_e8
invoke-direct {p0}, Lcom/facebook/f/a/a;->h()Z
move-result v0
if-eqz v0, :cond_e8
iget-object v0, p0, Lcom/facebook/f/a/a;->q:Lcom/facebook/f/a/f;
invoke-interface {v0, v2, v3}, Lcom/facebook/f/a/f;->b(FF)V
goto :goto_b2
:cond_e8
iget-object v0, p0, Lcom/facebook/f/a/a;->p:Lcom/facebook/f/a/d;
invoke-interface {v0}, Lcom/facebook/f/a/d;->b()V
goto :goto_b2
:pswitch_data_f4
.packed-switch 0x1
:pswitch_7f
:pswitch_43
:pswitch_7f
.end packed-switch
:pswitch_data_ee
.packed-switch 0x1
:pswitch_18
.end packed-switch
.end method