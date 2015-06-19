.class public Lcom/twidroid/ui/widgets/gesture/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnTouchListener;
.field static final a:I = 0x64
.field private b:Lcom/twidroid/ui/widgets/gesture/b;
.field private c:F
.field private d:F
.method public constructor <init>(Lcom/twidroid/ui/widgets/gesture/b;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/twidroid/ui/widgets/gesture/a;->b:Lcom/twidroid/ui/widgets/gesture/b;
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 8
const/4 v4, 0x0
const/4 v0, 0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v1
packed-switch v1, :pswitch_data_52
:goto_9
:cond_9
return v0
:pswitch_a
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v1
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/a;->c:F
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-eqz v1, :cond_9
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
goto :goto_9
:pswitch_1e
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v1
iput v1, p0, Lcom/twidroid/ui/widgets/gesture/a;->d:F
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/a;->c:F
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/a;->d:F
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v2
const/high16 v3, 0x42c8
cmpl-float v2, v2, v3
if-lez v2, :cond_4f
cmpg-float v2, v1, v4
if-gez v2, :cond_41
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/a;->b:Lcom/twidroid/ui/widgets/gesture/b;
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/a;->b:Lcom/twidroid/ui/widgets/gesture/b;
invoke-interface {v1}, Lcom/twidroid/ui/widgets/gesture/b;->a()V
goto :goto_9
:cond_41
cmpl-float v1, v1, v4
if-lez v1, :cond_9
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/a;->b:Lcom/twidroid/ui/widgets/gesture/b;
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/a;->b:Lcom/twidroid/ui/widgets/gesture/b;
invoke-interface {v1}, Lcom/twidroid/ui/widgets/gesture/b;->b()V
goto :goto_9
:cond_4f
const/4 v0, 0x0
goto :goto_9
nop
:pswitch_data_52
.packed-switch 0x0
:pswitch_a
:pswitch_1e
.end packed-switch
.end method