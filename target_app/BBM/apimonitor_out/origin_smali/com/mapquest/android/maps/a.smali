.class abstract Lcom/mapquest/android/maps/a;
.super Ljava/lang/Object;
.source "Animator.java"


# instance fields
.field protected a:Z

.field b:I

.field protected c:Lcom/mapquest/android/maps/MapView;

.field protected d:Ljava/lang/Runnable;

.field protected e:Z

.field protected f:Landroid/os/Message;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/a;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/a;->e:Z

    iput-object p1, p0, Lcom/mapquest/android/maps/a;->c:Lcom/mapquest/android/maps/MapView;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/a;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/a;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/a;->a:Z

    return-void
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/a;->a:Z

    iput-object v2, p0, Lcom/mapquest/android/maps/a;->f:Landroid/os/Message;

    iput-boolean v1, p0, Lcom/mapquest/android/maps/a;->g:Z

    iput-object v2, p0, Lcom/mapquest/android/maps/a;->d:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/mapquest/android/maps/a;->e:Z

    return-void
.end method

.method public final c()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/mapquest/android/maps/a;->e:Z

    if-nez v2, :cond_b

    iput-boolean v0, p0, Lcom/mapquest/android/maps/a;->e:Z

    invoke-virtual {p0}, Lcom/mapquest/android/maps/a;->d()V

    :cond_b
    iget-boolean v2, p0, Lcom/mapquest/android/maps/a;->a:Z

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcom/mapquest/android/maps/a;->e()Z

    move-result v2

    if-eqz v2, :cond_16

    :goto_15
    return v0

    :cond_16
    iget-boolean v0, p0, Lcom/mapquest/android/maps/a;->a:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/mapquest/android/maps/a;->g:Z

    if-eqz v0, :cond_21

    :cond_1e
    invoke-virtual {p0}, Lcom/mapquest/android/maps/a;->f()V

    :cond_21
    iput-boolean v1, p0, Lcom/mapquest/android/maps/a;->e:Z

    iput-boolean v1, p0, Lcom/mapquest/android/maps/a;->a:Z

    iget-object v0, p0, Lcom/mapquest/android/maps/a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/mapquest/android/maps/a;->c:Lcom/mapquest/android/maps/MapView;

    iget-object v2, p0, Lcom/mapquest/android/maps/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/MapView;->post(Ljava/lang/Runnable;)Z

    :cond_30
    iget-object v0, p0, Lcom/mapquest/android/maps/a;->f:Landroid/os/Message;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/mapquest/android/maps/a;->f:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/mapquest/android/maps/a;->f:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_41
    move v0, v1

    goto :goto_15
.end method

.method abstract d()V
.end method

.method abstract e()Z
.end method

.method abstract f()V
.end method
