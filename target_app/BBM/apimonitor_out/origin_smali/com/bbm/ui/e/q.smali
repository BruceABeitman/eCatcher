.class final Lcom/bbm/ui/e/q;
.super Ljava/lang/Object;
.source "EphemeralTextHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/bbm/ui/e/p;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/p;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/e/q;->b:Lcom/bbm/ui/e/p;

    iput-object p2, p0, Lcom/bbm/ui/e/q;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const-string v0, "Ephemeral text pressed"

    const-class v1, Lcom/bbm/ui/e/m;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/e/q;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bbm/ui/e/q;->b:Lcom/bbm/ui/e/p;

    invoke-static {v2}, Lcom/bbm/ui/e/p;->a(Lcom/bbm/ui/e/p;)Lcom/bbm/d/eu;

    move-result-object v2

    iget-wide v2, v2, Lcom/bbm/d/eu;->d:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/bbm/ui/e/q;->b:Lcom/bbm/ui/e/p;

    iget-object v4, v4, Lcom/bbm/ui/e/p;->b:Lcom/bbm/ui/e/m;

    invoke-static {v4}, Lcom/bbm/ui/e/m;->c(Lcom/bbm/ui/e/m;)Lcom/bbm/ui/e/bd;

    move-result-object v4

    iput-wide v0, v4, Lcom/bbm/ui/e/bd;->a:J

    iput-wide v2, v4, Lcom/bbm/ui/e/bd;->b:J

    iget-object v0, p0, Lcom/bbm/ui/e/q;->b:Lcom/bbm/ui/e/p;

    iget-object v0, v0, Lcom/bbm/ui/e/p;->b:Lcom/bbm/ui/e/m;

    invoke-static {v0}, Lcom/bbm/ui/e/m;->c(Lcom/bbm/ui/e/m;)Lcom/bbm/ui/e/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/e/q;->b:Lcom/bbm/ui/e/p;

    iget-object v1, v1, Lcom/bbm/ui/e/p;->b:Lcom/bbm/ui/e/m;

    invoke-static {v1}, Lcom/bbm/ui/e/m;->d(Lcom/bbm/ui/e/m;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/e/bd;->a(Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/bbm/ui/e/q;->b:Lcom/bbm/ui/e/p;

    iget-object v0, v0, Lcom/bbm/ui/e/p;->b:Lcom/bbm/ui/e/m;

    invoke-static {v0}, Lcom/bbm/ui/e/m;->c(Lcom/bbm/ui/e/m;)Lcom/bbm/ui/e/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/e/q;->b:Lcom/bbm/ui/e/p;

    invoke-static {v1}, Lcom/bbm/ui/e/p;->a(Lcom/bbm/ui/e/p;)Lcom/bbm/d/eu;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/eu;->b:Ljava/lang/String;

    new-instance v2, Lcom/bbm/util/bf;

    invoke-direct {v2, v1}, Lcom/bbm/util/bf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bbm/util/bf;->a()V

    new-instance v3, Lcom/bbm/ui/e/be;

    invoke-direct {v3, v0, v1, v2}, Lcom/bbm/ui/e/be;-><init>(Lcom/bbm/ui/e/bd;Ljava/lang/String;Lcom/bbm/util/bf;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcom/bbm/ui/e/be;->c([Ljava/lang/Object;)Lcom/bbm/util/b;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    iget-object v0, p0, Lcom/bbm/ui/e/q;->b:Lcom/bbm/ui/e/p;

    invoke-static {v0}, Lcom/bbm/ui/e/p;->a(Lcom/bbm/ui/e/p;)Lcom/bbm/d/eu;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/eu;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/d/a;->l(Ljava/lang/String;)V

    return-void
.end method
