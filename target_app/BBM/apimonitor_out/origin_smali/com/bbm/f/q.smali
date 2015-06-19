.class final Lcom/bbm/f/q;
.super Lcom/bbm/j/a;
.source "NativeServiceLayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Lcom/bbm/f/ae;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/f/j;


# direct methods
.method constructor <init>(Lcom/bbm/f/j;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/f/q;->a:Lcom/bbm/f/j;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/bbm/f/q;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->n(Lcom/bbm/f/j;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/bbm/f/ae;

    invoke-direct {v0}, Lcom/bbm/f/ae;-><init>()V

    :goto_11
    return-object v0

    :cond_12
    invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->getPlatformIdsErrorState()Lcom/rim/bbm/BbmPlatformService$PlatformIdsErrorState;

    move-result-object v0

    iget v0, v0, Lcom/rim/bbm/BbmPlatformService$PlatformIdsErrorState;->ids_error:I

    invoke-static {v0}, Lcom/bbm/ak;->a(I)Lcom/bbm/ak;

    move-result-object v1

    sget-object v0, Lcom/bbm/ak;->a:Lcom/bbm/ak;

    if-eq v0, v1, :cond_26

    new-instance v0, Lcom/bbm/f/ae;

    invoke-direct {v0, v1}, Lcom/bbm/f/ae;-><init>(Lcom/bbm/ak;)V

    goto :goto_11

    :cond_26
    new-instance v0, Lcom/bbm/f/ae;

    invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->getBbidPropertiesState()Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;

    move-result-object v1

    invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->getBbmTokenState()Lcom/rim/bbm/BbmPlatformService$BbmTokenState;

    move-result-object v2

    invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->getPinState()Lcom/rim/bbm/BbmPlatformService$PinState;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/f/ae;-><init>(Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;Lcom/rim/bbm/BbmPlatformService$BbmTokenState;Lcom/rim/bbm/BbmPlatformService$PinState;)V

    goto :goto_11
.end method
