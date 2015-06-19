.class public Lcom/twidroid/ui/widgets/gesture/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnTouchListener;
.field private static final f:Ljava/lang/String; = "Gestures"
.field private A:I
.field private B:I
.field private C:I
.field private D:Lcom/twidroid/ui/widgets/gesture/c;
.field private E:Landroid/view/GestureDetector;
.field private F:Lcom/twidroid/ui/widgets/gesture/d;
.field final a:Landroid/graphics/PointF;
.field  b:Z
.field  c:F
.field  d:F
.field  e:Z
.field private g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
.field private final h:Landroid/graphics/PointF;
.field private final i:Landroid/graphics/PointF;
.field private final j:Landroid/graphics/PointF;
.field private final k:Lcom/twidroid/ui/widgets/gesture/g;
.field private final l:Lcom/twidroid/ui/widgets/gesture/g;
.field private m:J
.field private n:F
.field private o:F
.field private p:F
.field private q:F
.field private r:F
.field private s:F
.field private t:F
.field private u:F
.field private v:F
.field private w:F
.field private x:Z
.field private y:Z
.field private z:I
.method public constructor <init>(Lcom/twidroid/ui/widgets/gesture/GestureImageView;II)V
.registers 9
const/high16 v4, 0x4000
const/high16 v3, 0x3f80
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->h:Landroid/graphics/PointF;
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->i:Landroid/graphics/PointF;
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->j:Landroid/graphics/PointF;
new-instance v0, Lcom/twidroid/ui/widgets/gesture/g;
invoke-direct {v0}, Lcom/twidroid/ui/widgets/gesture/g;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->k:Lcom/twidroid/ui/widgets/gesture/g;
new-instance v0, Lcom/twidroid/ui/widgets/gesture/g;
invoke-direct {v0}, Lcom/twidroid/ui/widgets/gesture/g;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->l:Lcom/twidroid/ui/widgets/gesture/g;
iput-boolean v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->b:Z
iput v3, p0, Lcom/twidroid/ui/widgets/gesture/e;->o:F
iput v3, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->c:F
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->q:F
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->d:F
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->r:F
const/high16 v0, 0x40a0
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->s:F
const/high16 v0, 0x3e80
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->t:F
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->u:F
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->v:F
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->w:F
iput-boolean v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->e:Z
iput-boolean v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->x:Z
iput-boolean v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->y:Z
iput-object p1, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iput p2, p0, Lcom/twidroid/ui/widgets/gesture/e;->z:I
iput p3, p0, Lcom/twidroid/ui/widgets/gesture/e;->A:I
int-to-float v0, p2
div-float/2addr v0, v4
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->u:F
int-to-float v0, p3
div-float/2addr v0, v4
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->v:F
invoke-virtual {p1}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getImageWidth()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->B:I
invoke-virtual {p1}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getImageHeight()I
move-result v0
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->C:I
invoke-virtual {p1}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getScale()F
move-result v0
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->w:F
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->w:F
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->w:F
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->o:F
int-to-float v0, p2
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->d:F
int-to-float v0, p3
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->r:F
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->c:F
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->q:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
invoke-virtual {p1}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getX()F
move-result v1
iput v1, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
invoke-virtual {p1}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getY()F
move-result v1
iput v1, v0, Landroid/graphics/PointF;->y:F
new-instance v0, Lcom/twidroid/ui/widgets/gesture/c;
invoke-direct {v0, p1}, Lcom/twidroid/ui/widgets/gesture/c;-><init>(Lcom/twidroid/ui/widgets/gesture/GestureImageView;)V
iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->D:Lcom/twidroid/ui/widgets/gesture/c;
new-instance v0, Landroid/view/GestureDetector;
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->D:Lcom/twidroid/ui/widgets/gesture/c;
invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->E:Landroid/view/GestureDetector;
invoke-virtual {p1}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getGestureImageViewListener()Lcom/twidroid/ui/widgets/gesture/d;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/e;->e()V
return-void
.end method
.method public a()V
.registers 4
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->w:F
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->u:F
iput v1, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->v:F
iput v1, v0, Landroid/graphics/PointF;->y:F
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/e;->e()V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setScale(F)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v1, v1, Landroid/graphics/PointF;->x:F
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->y:F
invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->a(FF)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c()V
return-void
.end method
.method public a(F)V
.registers 2
iput p1, p0, Lcom/twidroid/ui/widgets/gesture/e;->s:F
return-void
.end method
.method protected a(FF)V
.registers 7
const/4 v3, 0x0
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->h:Landroid/graphics/PointF;
iput p1, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->h:Landroid/graphics/PointF;
iput p2, v0, Landroid/graphics/PointF;->y:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->h:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->x:F
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->i:Landroid/graphics/PointF;
iget v1, v1, Landroid/graphics/PointF;->x:F
sub-float/2addr v0, v1
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->h:Landroid/graphics/PointF;
iget v1, v1, Landroid/graphics/PointF;->y:F
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->i:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->y:F
sub-float/2addr v1, v2
cmpl-float v2, v0, v3
if-nez v2, :cond_23
cmpl-float v2, v1, v3
if-eqz v2, :cond_72
:cond_23
iget-boolean v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->e:Z
if-eqz v2, :cond_2e
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v3, v2, Landroid/graphics/PointF;->x:F
add-float/2addr v0, v3
iput v0, v2, Landroid/graphics/PointF;->x:F
:cond_2e
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->x:Z
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v2, v0, Landroid/graphics/PointF;->y:F
add-float/2addr v1, v2
iput v1, v0, Landroid/graphics/PointF;->y:F
:cond_39
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/e;->d()V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->i:Landroid/graphics/PointF;
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->h:Landroid/graphics/PointF;
iget v1, v1, Landroid/graphics/PointF;->x:F
iput v1, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->i:Landroid/graphics/PointF;
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->h:Landroid/graphics/PointF;
iget v1, v1, Landroid/graphics/PointF;->y:F
iput v1, v0, Landroid/graphics/PointF;->y:F
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->e:Z
if-nez v0, :cond_54
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->x:Z
if-eqz v0, :cond_72
:cond_54
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v1, v1, Landroid/graphics/PointF;->x:F
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->y:F
invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->a(FF)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
if-eqz v0, :cond_72
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v1, v1, Landroid/graphics/PointF;->x:F
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->y:F
invoke-interface {v0, v1, v2}, Lcom/twidroid/ui/widgets/gesture/d;->b(FF)V
:cond_72
return-void
.end method
.method public b()F
.registers 2
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->s:F
return v0
.end method
.method public b(F)V
.registers 2
iput p1, p0, Lcom/twidroid/ui/widgets/gesture/e;->t:F
return-void
.end method
.method public c()F
.registers 2
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->t:F
return v0
.end method
.method protected d()V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->x:F
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->c:F
cmpg-float v0, v0, v1
if-gez v0, :cond_21
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->c:F
iput v1, v0, Landroid/graphics/PointF;->x:F
:cond_10
:goto_10
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->y:F
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->q:F
cmpg-float v0, v0, v1
if-gez v0, :cond_32
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->q:F
iput v1, v0, Landroid/graphics/PointF;->y:F
:goto_20
:cond_20
return-void
:cond_21
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->x:F
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->d:F
cmpl-float v0, v0, v1
if-lez v0, :cond_10
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->d:F
iput v1, v0, Landroid/graphics/PointF;->x:F
goto :goto_10
:cond_32
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->y:F
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->r:F
cmpl-float v0, v0, v1
if-lez v0, :cond_20
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->r:F
iput v1, v0, Landroid/graphics/PointF;->y:F
goto :goto_20
.end method
.method protected e()V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
const/high16 v5, 0x4000
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->B:I
int-to-float v0, v0
iget v3, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
mul-float/2addr v0, v3
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v3
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->C:I
int-to-float v0, v0
iget v4, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
mul-float/2addr v0, v4
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v4
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->z:I
if-le v3, v0, :cond_4e
move v0, v1
:goto_1d
iput-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->e:Z
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->A:I
if-le v4, v0, :cond_50
:goto_23
iput-boolean v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->x:Z
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->e:Z
if-eqz v0, :cond_39
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->z:I
sub-int v0, v3, v0
int-to-float v0, v0
div-float/2addr v0, v5
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->u:F
sub-float/2addr v1, v0
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->c:F
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->u:F
add-float/2addr v0, v1
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->d:F
:cond_39
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->x:Z
if-eqz v0, :cond_4d
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->A:I
sub-int v0, v4, v0
int-to-float v0, v0
div-float/2addr v0, v5
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->v:F
sub-float/2addr v1, v0
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->q:F
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->v:F
add-float/2addr v0, v1
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->r:F
:cond_4d
return-void
:cond_4e
move v0, v2
goto :goto_1d
:cond_50
move v1, v2
goto :goto_23
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 10
const/4 v3, 0x2
const/4 v2, 0x0
const/4 v6, 0x0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/e;->e()V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->E:Landroid/view/GestureDetector;
invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
if-eqz v0, :cond_2e
iput v6, p0, Lcom/twidroid/ui/widgets/gesture/e;->n:F
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->w:F
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->o:F
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->w:F
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getX()F
move-result v2
iput v2, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getY()F
move-result v2
iput v2, v0, Landroid/graphics/PointF;->y:F
:goto_2d
:cond_2d
return v1
:cond_2e
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-ne v0, v1, :cond_e2
invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v0
if-le v0, v3, :cond_df
move v0, v1
:goto_3b
iput-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->y:Z
const-string v0, "Gestures"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Action UP "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v0
if-eq v0, v1, :cond_60
move v2, v1
:cond_60
iput-boolean v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->b:Z
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->b:Z
if-nez v0, :cond_7f
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iget-wide v4, p0, Lcom/twidroid/ui/widgets/gesture/e;->m:J
sub-long/2addr v2, v4
invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I
move-result v0
int-to-long v4, v0
cmp-long v0, v2, v4
if-gtz v0, :cond_7f
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
if-eqz v0, :cond_7f
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
invoke-interface {v0}, Lcom/twidroid/ui/widgets/gesture/d;->a()V
:cond_7f
iput v6, p0, Lcom/twidroid/ui/widgets/gesture/e;->n:F
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->o:F
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->e:Z
if-nez v0, :cond_8f
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->u:F
iput v2, v0, Landroid/graphics/PointF;->x:F
:cond_8f
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->x:Z
if-nez v0, :cond_99
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->v:F
iput v2, v0, Landroid/graphics/PointF;->y:F
:cond_99
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/e;->d()V
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->e:Z
if-nez v0, :cond_ac
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->x:Z
if-nez v0, :cond_ac
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->w:F
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->o:F
:cond_ac
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setScale(F)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->x:F
iget-object v3, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v3, v3, Landroid/graphics/PointF;->y:F
invoke-virtual {v0, v2, v3}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->a(FF)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
if-eqz v0, :cond_d8
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
invoke-interface {v0, v2}, Lcom/twidroid/ui/widgets/gesture/d;->a(F)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->x:F
iget-object v3, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v3, v3, Landroid/graphics/PointF;->y:F
invoke-interface {v0, v2, v3}, Lcom/twidroid/ui/widgets/gesture/d;->b(FF)V
:cond_d8
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c()V
goto/16 :goto_2d
:cond_df
move v0, v2
goto/16 :goto_3b
:cond_e2
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_113
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->i:Landroid/graphics/PointF;
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v2
iput v2, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->i:Landroid/graphics/PointF;
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v2
iput v2, v0, Landroid/graphics/PointF;->y:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
if-eqz v0, :cond_109
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->i:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->x:F
iget-object v3, p0, Lcom/twidroid/ui/widgets/gesture/e;->i:Landroid/graphics/PointF;
iget v3, v3, Landroid/graphics/PointF;->y:F
invoke-interface {v0, v2, v3}, Lcom/twidroid/ui/widgets/gesture/d;->a(FF)V
:cond_109
iput-boolean v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->b:Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->m:J
goto/16 :goto_2d
:cond_113
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-ne v0, v3, :cond_2d
invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v0
if-le v0, v1, :cond_120
move v2, v1
:cond_120
iput-boolean v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->y:Z
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->y:Z
if-eqz v0, :cond_1ed
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->n:F
cmpl-float v0, v0, v6
if-lez v0, :cond_1bf
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->l:Lcom/twidroid/ui/widgets/gesture/g;
invoke-virtual {v0, p2}, Lcom/twidroid/ui/widgets/gesture/g;->a(Landroid/view/MotionEvent;)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->l:Lcom/twidroid/ui/widgets/gesture/g;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/g;->b()V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->l:Lcom/twidroid/ui/widgets/gesture/g;
iget v0, v0, Lcom/twidroid/ui/widgets/gesture/g;->b:F
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->n:F
cmpl-float v2, v2, v0
if-eqz v2, :cond_2d
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->n:F
div-float/2addr v0, v2
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->o:F
mul-float/2addr v0, v2
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->s:F
cmpl-float v0, v0, v2
if-lez v0, :cond_1b2
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->s:F
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
:goto_154
:cond_154
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->k:Lcom/twidroid/ui/widgets/gesture/g;
iget v2, v0, Lcom/twidroid/ui/widgets/gesture/g;->b:F
iget v3, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
mul-float/2addr v2, v3
iput v2, v0, Lcom/twidroid/ui/widgets/gesture/g;->b:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->k:Lcom/twidroid/ui/widgets/gesture/g;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/g;->a()V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->k:Lcom/twidroid/ui/widgets/gesture/g;
iget v2, v0, Lcom/twidroid/ui/widgets/gesture/g;->b:F
iget v3, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
div-float/2addr v2, v3
iput v2, v0, Lcom/twidroid/ui/widgets/gesture/g;->b:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->k:Lcom/twidroid/ui/widgets/gesture/g;
iget-object v2, v2, Lcom/twidroid/ui/widgets/gesture/g;->d:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->x:F
iput v2, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->k:Lcom/twidroid/ui/widgets/gesture/g;
iget-object v2, v2, Lcom/twidroid/ui/widgets/gesture/g;->d:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->y:F
iput v2, v0, Landroid/graphics/PointF;->y:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setScale(F)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->x:F
iget-object v3, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v3, v3, Landroid/graphics/PointF;->y:F
invoke-virtual {v0, v2, v3}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->a(FF)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
if-eqz v0, :cond_1ab
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
invoke-interface {v0, v2}, Lcom/twidroid/ui/widgets/gesture/d;->a(F)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->F:Lcom/twidroid/ui/widgets/gesture/d;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->x:F
iget-object v3, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget v3, v3, Landroid/graphics/PointF;->y:F
invoke-interface {v0, v2, v3}, Lcom/twidroid/ui/widgets/gesture/d;->b(FF)V
:cond_1ab
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c()V
goto/16 :goto_2d
:cond_1b2
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->t:F
cmpg-float v0, v0, v2
if-gez v0, :cond_154
iget v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->t:F
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->p:F
goto :goto_154
:cond_1bf
invoke-static {p2}, Lcom/twidroid/ui/widgets/gesture/f;->a(Landroid/view/MotionEvent;)F
move-result v0
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->n:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->j:Landroid/graphics/PointF;
invoke-static {p2, v0}, Lcom/twidroid/ui/widgets/gesture/f;->a(Landroid/view/MotionEvent;Landroid/graphics/PointF;)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->k:Lcom/twidroid/ui/widgets/gesture/g;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->j:Landroid/graphics/PointF;
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/gesture/g;->a(Landroid/graphics/PointF;)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->k:Lcom/twidroid/ui/widgets/gesture/g;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/gesture/g;->b(Landroid/graphics/PointF;)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->k:Lcom/twidroid/ui/widgets/gesture/g;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/g;->b()V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->k:Lcom/twidroid/ui/widgets/gesture/g;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/g;->c()V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->k:Lcom/twidroid/ui/widgets/gesture/g;
iget v2, v0, Lcom/twidroid/ui/widgets/gesture/g;->b:F
iget v3, p0, Lcom/twidroid/ui/widgets/gesture/e;->o:F
div-float/2addr v2, v3
iput v2, v0, Lcom/twidroid/ui/widgets/gesture/g;->b:F
goto/16 :goto_2d
:cond_1ed
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->b:Z
if-nez v0, :cond_219
iput-boolean v1, p0, Lcom/twidroid/ui/widgets/gesture/e;->b:Z
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->i:Landroid/graphics/PointF;
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v2
iput v2, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->i:Landroid/graphics/PointF;
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v2
iput v2, v0, Landroid/graphics/PointF;->y:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getX()F
move-result v2
iput v2, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getY()F
move-result v2
iput v2, v0, Landroid/graphics/PointF;->y:F
goto/16 :goto_2d
:cond_219
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v2
invoke-virtual {p0, v0, v2}, Lcom/twidroid/ui/widgets/gesture/e;->a(FF)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/e;->g:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c()V
goto/16 :goto_2d
.end method