.class final Lcom/bbm/util/q;
.super Lcom/bbm/util/ez;
.source "ChannelCloudImageData.java"


# instance fields
.field final synthetic a:Lcom/bbm/util/cr;

.field final synthetic b:Lcom/bbm/util/p;


# direct methods
.method constructor <init>(Lcom/bbm/util/p;Landroid/content/Context;Lcom/bbm/util/cr;IILcom/bbm/util/b/d;Lcom/bbm/util/cr;)V
    .registers 14

    iput-object p1, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iput-object p7, p0, Lcom/bbm/util/q;->a:Lcom/bbm/util/cr;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/bbm/util/ez;-><init>(Landroid/content/Context;Lcom/bbm/util/cr;IILcom/bbm/util/b/d;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/bbm/d/fd;)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_3e

    :try_start_3
    iget-object v0, p0, Lcom/bbm/util/q;->a:Lcom/bbm/util/cr;

    invoke-virtual {v0, p1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iget-object v0, v0, Lcom/bbm/util/p;->e:Lcom/bbm/util/b/d;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iget-object v0, v0, Lcom/bbm/util/p;->e:Lcom/bbm/util/b/d;

    iget-object v1, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iget-object v1, v1, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;

    iget-object v1, v1, Lcom/bbm/util/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;Lcom/bbm/d/fd;)V

    :cond_1b
    iget-object v0, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iget-object v0, v0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;

    iget-object v0, v0, Lcom/bbm/util/o;->i:Lcom/bbm/ui/ObservingImageView;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iget-object v0, v0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;

    iget-object v0, v0, Lcom/bbm/util/o;->i:Lcom/bbm/ui/ObservingImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_58

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_4a

    :cond_3e
    iget-object v0, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    invoke-virtual {v0}, Lcom/bbm/util/p;->e()V

    iget-object v0, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iget-object v0, v0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;

    iput-object v3, v0, Lcom/bbm/util/o;->j:Lcom/bbm/j/k;

    return-void

    :catchall_4a
    move-exception v0

    iget-object v1, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    invoke-virtual {v1}, Lcom/bbm/util/p;->e()V

    iget-object v1, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iget-object v1, v1, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;

    iput-object v3, v1, Lcom/bbm/util/o;->j:Lcom/bbm/j/k;

    throw v0

    nop

    :array_58
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/bbm/d/fd;

    invoke-virtual {p0, p1}, Lcom/bbm/util/q;->a(Lcom/bbm/d/fd;)V

    return-void
.end method

.method protected final synthetic b(Ljava/lang/Object;)V
    .registers 5

    const/4 v2, 0x0

    check-cast p1, Lcom/bbm/d/fd;

    :try_start_3
    iget-object v0, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iget-object v0, v0, Lcom/bbm/util/p;->e:Lcom/bbm/util/b/d;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iget-object v0, v0, Lcom/bbm/util/p;->e:Lcom/bbm/util/b/d;

    iget-object v1, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iget-object v1, v1, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;

    iget-object v1, v1, Lcom/bbm/util/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;Lcom/bbm/d/fd;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_24

    :cond_18
    iget-object v0, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    invoke-virtual {v0}, Lcom/bbm/util/p;->e()V

    iget-object v0, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iget-object v0, v0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;

    iput-object v2, v0, Lcom/bbm/util/o;->j:Lcom/bbm/j/k;

    return-void

    :catchall_24
    move-exception v0

    iget-object v1, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    invoke-virtual {v1}, Lcom/bbm/util/p;->e()V

    iget-object v1, p0, Lcom/bbm/util/q;->b:Lcom/bbm/util/p;

    iget-object v1, v1, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;

    iput-object v2, v1, Lcom/bbm/util/o;->j:Lcom/bbm/j/k;

    throw v0
.end method
