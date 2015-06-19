.class Lcom/glympse/android/lib/cm;
.super Ljava/lang/Object;
.source "GogoService.java"

# interfaces
.implements Lcom/glympse/android/lib/cg;


# instance fields
.field private _handler:Lcom/glympse/android/core/GHandler;

.field private _jobQueue:Lcom/glympse/android/lib/GJobQueue;

.field private km:Ljava/lang/Runnable;

.field private lT:Ljava/lang/String;

.field private me:Lcom/glympse/android/lib/bs;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/cm;->lT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/glympse/android/lib/bs;Lcom/glympse/android/core/GHandler;Lcom/glympse/android/lib/GJobQueue;)V
    .registers 6

    iput-object p1, p0, Lcom/glympse/android/lib/cm;->me:Lcom/glympse/android/lib/bs;

    iput-object p2, p0, Lcom/glympse/android/lib/cm;->_handler:Lcom/glympse/android/core/GHandler;

    iput-object p3, p0, Lcom/glympse/android/lib/cm;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    new-instance v1, Lcom/glympse/android/lib/cn;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/cm;

    invoke-direct {v1, v0}, Lcom/glympse/android/lib/cn;-><init>(Lcom/glympse/android/lib/cm;)V

    iput-object v1, p0, Lcom/glympse/android/lib/cm;->km:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/glympse/android/lib/cm;->bH()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;Z)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/cm;->me:Lcom/glympse/android/lib/bs;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/glympse/android/lib/cm;->me:Lcom/glympse/android/lib/bs;

    invoke-interface {v0, p1, p2, p3}, Lcom/glympse/android/lib/bs;->a(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;Z)V

    :cond_9
    return-void
.end method

.method protected bH()V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/cm;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/glympse/android/lib/cm;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    new-instance v2, Lcom/glympse/android/lib/cf;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/cg;

    iget-object v3, p0, Lcom/glympse/android/lib/cm;->lT:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/glympse/android/lib/cf;-><init>(Lcom/glympse/android/lib/cg;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V

    :cond_16
    return-void
.end method

.method public bu()V
    .registers 1

    invoke-virtual {p0}, Lcom/glympse/android/lib/cm;->bw()V

    return-void
.end method

.method protected bw()V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/cm;->_handler:Lcom/glympse/android/core/GHandler;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/glympse/android/lib/cm;->km:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/glympse/android/lib/cm;->_handler:Lcom/glympse/android/core/GHandler;

    iget-object v1, p0, Lcom/glympse/android/lib/cm;->km:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_11
    return-void
.end method

.method public locationChanged(Lcom/glympse/android/core/GLocation;)V
    .registers 2

    return-void
.end method

.method public stop()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/cm;->km:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/glympse/android/lib/cm;->_handler:Lcom/glympse/android/core/GHandler;

    iget-object v1, p0, Lcom/glympse/android/lib/cm;->km:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/glympse/android/lib/cm;->km:Ljava/lang/Runnable;

    :cond_e
    iput-object v2, p0, Lcom/glympse/android/lib/cm;->me:Lcom/glympse/android/lib/bs;

    iput-object v2, p0, Lcom/glympse/android/lib/cm;->_handler:Lcom/glympse/android/core/GHandler;

    iput-object v2, p0, Lcom/glympse/android/lib/cm;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;

    return-void
.end method
