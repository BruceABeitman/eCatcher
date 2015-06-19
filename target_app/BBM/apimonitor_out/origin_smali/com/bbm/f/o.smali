.class final Lcom/bbm/f/o;
.super Ljava/lang/Object;
.source "NativeServiceLayer.java"

# interfaces
.implements Lcom/rim/bbm/BbmPlatformService$IDSDelegate;


# instance fields
.field final synthetic a:Lcom/bbm/f/j;


# direct methods
.method constructor <init>(Lcom/bbm/f/j;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/f/o;->a:Lcom/bbm/f/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/f/o;->a:Lcom/bbm/f/j;

    iget-object v0, v0, Lcom/bbm/f/j;->c:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->c()V

    return-void
.end method


# virtual methods
.method public final bbidPropertiesUpdated(Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;)V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/f/o;->a()V

    return-void
.end method

.method public final bbmTokenUpdated(Lcom/rim/bbm/BbmPlatformService$BbmTokenState;)V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/f/o;->a()V

    return-void
.end method

.method public final onIdsErrorStateChange()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/f/o;->a()V

    return-void
.end method

.method public final pinUpdated(Lcom/rim/bbm/BbmPlatformService$PinState;)V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/f/o;->a()V

    return-void
.end method
