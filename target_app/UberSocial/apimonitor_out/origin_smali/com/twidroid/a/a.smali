.class public abstract Lcom/twidroid/a/a;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# static fields
.field private static final b:J = 0xc350L


# instance fields
.field protected a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/base/o;)V
    .registers 5

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/twidroid/fragments/base/o;->U()Lcom/twidroid/a/b;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t create managed task beacuse owner doesn\'s has AsyncTaskManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :try_start_11
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_21

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/twidroid/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0}, Lcom/twidroid/a/b;->a(Lcom/ubermedia/a/a;)V

    return-void

    :catch_21
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create managed task = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on non-UI Thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static final a(Landroid/widget/ListAdapter;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected final a()V
    .registers 2

    invoke-super {p0}, Lcom/ubermedia/a/a;->a()V

    iget-object v0, p0, Lcom/twidroid/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/twidroid/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/o;

    invoke-virtual {p0, v0}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;)V

    :cond_16
    return-void
.end method

.method protected a(Lcom/twidroid/fragments/base/o;)V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/twidroid/fragments/base/o;->N()V

    :cond_9
    return-void
.end method

.method protected a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1}, Lcom/twidroid/fragments/base/o;->M()V

    return-void
.end method

.method protected varargs a(Lcom/twidroid/fragments/base/o;[Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/twidroid/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/o;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/o;->U()Lcom/twidroid/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twidroid/a/b;->a(Lcom/twidroid/a/a;)V

    iget-object v0, p0, Lcom/twidroid/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/o;

    invoke-virtual {p0, v0, p1}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    :cond_22
    return-void
.end method

.method protected final varargs a_([Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twidroid/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/o;

    invoke-virtual {p0, v0, p1}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;[Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method protected final b()V
    .registers 2

    invoke-super {p0}, Lcom/ubermedia/a/a;->b()V

    iget-object v0, p0, Lcom/twidroid/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/twidroid/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/base/o;

    invoke-virtual {p0, v0}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;)V

    :cond_16
    return-void
.end method

.method protected b(Lcom/twidroid/fragments/base/o;)V
    .registers 2

    return-void
.end method

.method protected b(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1}, Lcom/twidroid/fragments/base/o;->M()V

    return-void
.end method

.method protected c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected d()J
    .registers 3

    const-wide/32 v0, 0xc350

    return-wide v0
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
