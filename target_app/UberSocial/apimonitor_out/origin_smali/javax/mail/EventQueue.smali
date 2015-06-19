.class Ljavax/mail/EventQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private head:Ljavax/mail/EventQueue$QueueElement;

.field private qThread:Ljava/lang/Thread;

.field private tail:Ljavax/mail/EventQueue$QueueElement;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    iput-object v0, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JavaMail-EventQueue"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    iget-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private declared-synchronized dequeue()Ljavax/mail/EventQueue$QueueElement;
    .registers 4

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    if-eqz v0, :cond_19

    iget-object v0, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    iget-object v1, v0, Ljavax/mail/EventQueue$QueueElement;->prev:Ljavax/mail/EventQueue$QueueElement;

    iput-object v1, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    iget-object v1, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    if-nez v1, :cond_20

    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    :goto_12
    const/4 v1, 0x0

    iput-object v1, v0, Ljavax/mail/EventQueue$QueueElement;->next:Ljavax/mail/EventQueue$QueueElement;

    iput-object v1, v0, Ljavax/mail/EventQueue$QueueElement;->prev:Ljavax/mail/EventQueue$QueueElement;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1d

    monitor-exit p0

    return-object v0

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_1

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    :try_start_20
    iget-object v1, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    const/4 v2, 0x0

    iput-object v2, v1, Ljavax/mail/EventQueue$QueueElement;->next:Ljavax/mail/EventQueue$QueueElement;
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    goto :goto_12
.end method


# virtual methods
.method public declared-synchronized enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/mail/EventQueue$QueueElement;

    invoke-direct {v0, p1, p2}, Ljavax/mail/EventQueue$QueueElement;-><init>(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    iget-object v1, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    if-nez v1, :cond_13

    iput-object v0, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    iput-object v0, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1e

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iget-object v1, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    iput-object v1, v0, Ljavax/mail/EventQueue$QueueElement;->next:Ljavax/mail/EventQueue$QueueElement;

    iget-object v1, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    iput-object v0, v1, Ljavax/mail/EventQueue$QueueElement;->prev:Ljavax/mail/EventQueue$QueueElement;

    iput-object v0, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1e

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 5

    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/EventQueue;->dequeue()Ljavax/mail/EventQueue$QueueElement;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v2, v0, Ljavax/mail/EventQueue$QueueElement;->event:Ljavax/mail/event/MailEvent;

    iget-object v3, v0, Ljavax/mail/EventQueue$QueueElement;->vector:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    invoke-virtual {v3}, Ljava/util/Vector;->size()I
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_10} :catch_24

    move-result v0

    if-ge v1, v0, :cond_0

    :try_start_13
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/mail/event/MailEvent;->dispatch(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1a} :catch_1e
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_24

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :catch_1e
    move-exception v0

    :try_start_1f
    instance-of v0, v0, Ljava/lang/InterruptedException;
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_21} :catch_24

    if-eqz v0, :cond_1a

    goto :goto_6

    :catch_24
    move-exception v0

    goto :goto_6
.end method

.method stop()V
    .registers 2

    iget-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    :cond_c
    return-void
.end method
