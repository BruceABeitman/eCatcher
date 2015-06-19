.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;
.super Ljava/lang/Object;
.source "WaitingThreadAborter.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private aborted:Z

.field private waitingThread:Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;->aborted:Z

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->interrupt()V

    :cond_c
    return-void
.end method

.method public setWaitingThread(Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;)V
    .registers 3

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;->aborted:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThread;->interrupt()V

    :cond_9
    return-void
.end method
