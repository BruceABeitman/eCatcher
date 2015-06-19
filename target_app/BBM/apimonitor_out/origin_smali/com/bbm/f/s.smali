.class final Lcom/bbm/f/s;
.super Lcom/bbm/j/a;
.source "NativeServiceLayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Lcom/bbm/f/ag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/f/j;


# direct methods
.method constructor <init>(Lcom/bbm/f/j;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/f/s;->a:Lcom/bbm/f/j;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/bbm/f/s;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->n(Lcom/bbm/f/j;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Lcom/bbm/f/ag;

    invoke-direct {v0}, Lcom/bbm/f/ag;-><init>()V

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/bbm/f/s;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->o(Lcom/bbm/f/j;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;

    const-string v1, "ServiceLayer - notified connection %s, reason %s - received %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, v0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;->reason:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/bbm/f/s;->a:Lcom/bbm/f/j;

    invoke-static {v3}, Lcom/bbm/f/j;->p(Lcom/bbm/f/j;)Lcom/bbm/util/cr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bbm/f/s;->a:Lcom/bbm/f/j;

    invoke-static {v1}, Lcom/bbm/f/j;->p(Lcom/bbm/f/j;)Lcom/bbm/util/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v6, :cond_72

    iget v1, v0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;->status:I

    sget v2, Lcom/rim/bbm/BbmPlatformService;->MSDP_STATUS_UNKNOWN:I

    if-ne v1, v2, :cond_6f

    sget-object v1, Lcom/bbm/f/ah;->c:Lcom/bbm/f/ah;

    :goto_5f
    const-string v2, "ServiceLayer is disconnected"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v2, Lcom/bbm/f/ag;

    iget v0, v0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;->reason:I

    invoke-direct {v2, v1, v0}, Lcom/bbm/f/ag;-><init>(Lcom/bbm/f/ah;I)V

    move-object v0, v2

    goto :goto_13

    :cond_6f
    sget-object v1, Lcom/bbm/f/ah;->a:Lcom/bbm/f/ah;

    goto :goto_5f

    :cond_72
    const-string v1, "ServiceLayer is connected"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v1, Lcom/bbm/f/ag;

    sget-object v2, Lcom/bbm/f/ah;->b:Lcom/bbm/f/ah;

    iget v0, v0, Lcom/rim/bbm/BbmPlatformService$ConnectionStatus;->reason:I

    invoke-direct {v1, v2, v0}, Lcom/bbm/f/ag;-><init>(Lcom/bbm/f/ah;I)V

    move-object v0, v1

    goto :goto_13
.end method
