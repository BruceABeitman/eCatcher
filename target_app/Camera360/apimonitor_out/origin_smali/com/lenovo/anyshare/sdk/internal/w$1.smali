.class Lcom/lenovo/anyshare/sdk/internal/w$1;
.super Ljava/lang/Object;
.source "ServerPipeAcceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/anyshare/sdk/internal/w;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/w;


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/w;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/w$1;->a:Lcom/lenovo/anyshare/sdk/internal/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/w$1;->a:Lcom/lenovo/anyshare/sdk/internal/w;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/w;->e()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/w$1;->a:Lcom/lenovo/anyshare/sdk/internal/w;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/w;->c()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/w$1;->a:Lcom/lenovo/anyshare/sdk/internal/w;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/w;->c()V

    throw v0
.end method
