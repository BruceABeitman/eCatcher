.class final Lcom/bbm/ui/e/p;
.super Ljava/lang/Object;
.source "EphemeralTextHolder.java"
.implements Landroid/view/View$OnTouchListener;
.field  a:Lcom/bbm/d/eu;
.field final synthetic b:Lcom/bbm/ui/e/m;
.field private final c:Landroid/os/Handler;
.field private d:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/bbm/ui/e/m;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/e/p;->b:Lcom/bbm/ui/e/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/e/p;->c:Landroid/os/Handler;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/e/p;)Lcom/bbm/d/eu;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/p;->a:Lcom/bbm/d/eu;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/e/p;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/e/p;->c:Landroid/os/Handler;
iget-object v1, p0, Lcom/bbm/ui/e/p;->d:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 7
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_2f
iget-object v0, p0, Lcom/bbm/ui/e/p;->d:Ljava/lang/Runnable;
if-nez v0, :cond_11
new-instance v0, Lcom/bbm/ui/e/q;
invoke-direct {v0, p0, p1}, Lcom/bbm/ui/e/q;-><init>(Lcom/bbm/ui/e/p;Landroid/view/View;)V
iput-object v0, p0, Lcom/bbm/ui/e/p;->d:Ljava/lang/Runnable;
:cond_11
iget-object v0, p0, Lcom/bbm/ui/e/p;->b:Lcom/bbm/ui/e/m;
invoke-static {v0}, Lcom/bbm/ui/e/m;->e(Lcom/bbm/ui/e/m;)Lcom/bbm/util/cr;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/p;->a:Lcom/bbm/d/eu;
iget-object v1, v1, Lcom/bbm/d/eu;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
new-instance v0, Lcom/bbm/ui/e/r;
invoke-direct {v0, p0, p1}, Lcom/bbm/ui/e/r;-><init>(Lcom/bbm/ui/e/p;Landroid/view/View;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
iget-object v0, p0, Lcom/bbm/ui/e/p;->c:Landroid/os/Handler;
iget-object v1, p0, Lcom/bbm/ui/e/p;->d:Ljava/lang/Runnable;
const-wide/16 v2, 0x1f4
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_2f
const/4 v0, 0x0
return v0
.end method