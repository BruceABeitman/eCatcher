.class final Lcom/igexin/a/a/d/i;
.super Ljava/lang/Thread;


# instance fields
.field volatile a:Z

.field b:Lcom/igexin/a/a/d/f;

.field final synthetic c:Lcom/igexin/a/a/d/e;


# direct methods
.method public constructor <init>(Lcom/igexin/a/a/d/e;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/a/d/i;->a:Z

    const-string/jumbo v0, "taskService-processor"

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/d/i;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    iget-object v4, v0, Lcom/igexin/a/a/d/e;->m:Lcom/igexin/a/a/d/c;

    move v0, v1

    move-object v2, v3

    :goto_d
    iget-boolean v5, p0, Lcom/igexin/a/a/d/i;->a:Z

    if-eqz v5, :cond_c1

    packed-switch v0, :pswitch_data_c8

    goto :goto_d

    :pswitch_15
    :try_start_15
    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->d()V

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->q()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/igexin/a/a/d/i;->b:Lcom/igexin/a/a/d/f;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/igexin/a/a/d/f;

    iget-object v5, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    invoke-direct {v0, v5}, Lcom/igexin/a/a/d/f;-><init>(Lcom/igexin/a/a/d/e;)V

    iput-object v0, p0, Lcom/igexin/a/a/d/i;->b:Lcom/igexin/a/a/d/f;

    :cond_2b
    iget-object v0, p0, Lcom/igexin/a/a/d/i;->b:Lcom/igexin/a/a/d/f;

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/d/f;->a(Lcom/igexin/a/a/d/d;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_30} :catch_33

    move v0, v1

    move-object v2, v3

    goto :goto_d

    :catch_33
    move-exception v0

    move v0, v1

    goto :goto_d

    :cond_36
    :pswitch_36
    :try_start_36
    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->b()V

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->t()V

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->v()V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_99
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_6a

    iget-object v0, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/e;->h()V

    iget-boolean v0, v2, Lcom/igexin/a/a/d/d;->F:Z

    if-nez v0, :cond_4b

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->c()V

    :cond_4b
    iget-boolean v0, v2, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v0, :cond_58

    iget-boolean v0, v2, Lcom/igexin/a/a/d/d;->B:Z

    if-nez v0, :cond_58

    iput v6, v2, Lcom/igexin/a/a/d/d;->M:I

    invoke-virtual {v4, v2}, Lcom/igexin/a/a/d/c;->a(Lcom/igexin/a/a/d/d;)Z

    :cond_58
    move v0, v1

    move-object v2, v3

    :goto_5a
    :pswitch_5a
    :try_start_5a
    invoke-virtual {v4}, Lcom/igexin/a/a/d/c;->c()Lcom/igexin/a/a/d/d;
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_5d} :catch_c5

    move-result-object v2

    :goto_5e
    if-eqz v2, :cond_b7

    iget-boolean v5, v2, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v5, :cond_68

    iget-boolean v5, v2, Lcom/igexin/a/a/d/d;->y:Z

    if-eqz v5, :cond_b4

    :cond_68
    move-object v2, v3

    goto :goto_d

    :catch_6a
    move-exception v0

    const/4 v5, 0x1

    :try_start_6c
    iput-boolean v5, v2, Lcom/igexin/a/a/d/d;->F:Z

    iput-object v0, v2, Lcom/igexin/a/a/d/d;->N:Ljava/lang/Exception;

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->w()V

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->p()V

    iget-object v0, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    iget-object v0, v0, Lcom/igexin/a/a/d/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
    :try_end_7d
    .catchall {:try_start_6c .. :try_end_7d} :catchall_99

    iget-object v0, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/e;->h()V

    iget-boolean v0, v2, Lcom/igexin/a/a/d/d;->F:Z

    if-nez v0, :cond_89

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->c()V

    :cond_89
    iget-boolean v0, v2, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v0, :cond_96

    iget-boolean v0, v2, Lcom/igexin/a/a/d/d;->B:Z

    if-nez v0, :cond_96

    iput v6, v2, Lcom/igexin/a/a/d/d;->M:I

    invoke-virtual {v4, v2}, Lcom/igexin/a/a/d/c;->a(Lcom/igexin/a/a/d/d;)Z

    :cond_96
    move v0, v1

    move-object v2, v3

    goto :goto_5a

    :catchall_99
    move-exception v0

    iget-object v1, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    invoke-virtual {v1}, Lcom/igexin/a/a/d/e;->h()V

    iget-boolean v1, v2, Lcom/igexin/a/a/d/d;->F:Z

    if-nez v1, :cond_a6

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->c()V

    :cond_a6
    iget-boolean v1, v2, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v1, :cond_b3

    iget-boolean v1, v2, Lcom/igexin/a/a/d/d;->B:Z

    if-nez v1, :cond_b3

    iput v6, v2, Lcom/igexin/a/a/d/d;->M:I

    invoke-virtual {v4, v2}, Lcom/igexin/a/a/d/c;->a(Lcom/igexin/a/a/d/d;)Z

    :cond_b3
    throw v0

    :cond_b4
    const/4 v0, -0x1

    goto/16 :goto_d

    :cond_b7
    :pswitch_b7
    move-object v0, v2

    iget-object v2, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    invoke-virtual {v2}, Lcom/igexin/a/a/d/e;->h()V

    move-object v2, v0

    move v0, v1

    goto/16 :goto_d

    :cond_c1
    invoke-virtual {v4}, Lcom/igexin/a/a/d/c;->d()V

    return-void

    :catch_c5
    move-exception v5

    goto :goto_5e

    nop

    :pswitch_data_c8
    .packed-switch -0x1
        :pswitch_15
        :pswitch_36
        :pswitch_5a
        :pswitch_b7
    .end packed-switch
.end method
