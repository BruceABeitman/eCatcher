.class Lcom/tencent/connect/avatar/b$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/avatar/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/avatar/b;


# direct methods
.method constructor <init>(Lcom/tencent/connect/avatar/b;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/connect/avatar/b$1;->a:Lcom/tencent/connect/avatar/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x12c

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_16

    :goto_5
    iget-object v0, p0, Lcom/tencent/connect/avatar/b$1;->a:Lcom/tencent/connect/avatar/b;

    new-instance v1, Lcom/tencent/connect/avatar/b$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/connect/avatar/b$1$1;-><init>(Lcom/tencent/connect/avatar/b$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/connect/avatar/b;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tencent/connect/avatar/b$1;->a:Lcom/tencent/connect/avatar/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/connect/avatar/b;->a(Lcom/tencent/connect/avatar/b;Z)Z

    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method
