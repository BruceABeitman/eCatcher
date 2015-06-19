.class final Lcom/lenovo/anyshare/sdk/internal/be$1;
.super Landroid/os/Handler;
.source "TaskHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/ar;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ar;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/anyshare/sdk/internal/be$c;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ar;->b()V

    invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/be$c;->b()Z

    move-result v4

    if-nez v4, :cond_8

    :try_start_1c
    iget-object v4, v3, Lcom/lenovo/anyshare/sdk/internal/be$c;->d:Ljava/lang/Exception;

    invoke-virtual {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/be$c;->a(Ljava/lang/Exception;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_39

    :goto_21
    iget-boolean v4, v3, Lcom/lenovo/anyshare/sdk/internal/be$c;->a:Z

    if-eqz v4, :cond_41

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/be;->b()Lcom/lenovo/anyshare/sdk/internal/be$b;

    move-result-object v2

    :goto_29
    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/be$b;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/be$c;->a(Lcom/lenovo/anyshare/sdk/internal/be$c;)I

    move-result v4

    iget-object v5, v3, Lcom/lenovo/anyshare/sdk/internal/be$c;->d:Ljava/lang/Exception;

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/be$b;->a(ILjava/lang/Throwable;)V

    goto :goto_8

    :catch_39
    move-exception v1

    const-string/jumbo v4, "TaskHelper"

    invoke-static {v4, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    :cond_41
    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/be;->c()Lcom/lenovo/anyshare/sdk/internal/be$b;

    move-result-object v2

    goto :goto_29
.end method
