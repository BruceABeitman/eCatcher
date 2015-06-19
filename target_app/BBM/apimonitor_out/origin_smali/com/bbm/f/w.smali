.class final Lcom/bbm/f/w;
.super Ljava/lang/Object;
.source "NativeServiceLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/f/y;

.field final synthetic b:Lcom/bbm/f/ab;

.field final synthetic c:Lcom/bbm/f/v;


# direct methods
.method constructor <init>(Lcom/bbm/f/v;Lcom/bbm/f/y;Lcom/bbm/f/ab;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/f/w;->c:Lcom/bbm/f/v;

    iput-object p2, p0, Lcom/bbm/f/w;->a:Lcom/bbm/f/y;

    iput-object p3, p0, Lcom/bbm/f/w;->b:Lcom/bbm/f/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/bbm/f/w;->c:Lcom/bbm/f/v;

    iget-object v0, v0, Lcom/bbm/f/v;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->m(Lcom/bbm/f/j;)Ljava/util/EnumMap;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/f/w;->a:Lcom/bbm/f/y;

    iget-object v1, v1, Lcom/bbm/f/y;->a:Lcom/rim/bbm/BbmCoreService$MessageType;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/x;

    iget-object v1, p0, Lcom/bbm/f/w;->c:Lcom/bbm/f/v;

    iget-object v1, v1, Lcom/bbm/f/v;->a:Lcom/bbm/f/j;

    invoke-static {v1}, Lcom/bbm/f/j;->m(Lcom/bbm/f/j;)Ljava/util/EnumMap;

    move-result-object v1

    if-nez v1, :cond_2c

    const-string v0, "Unknown broker type for message type: %s, message discarded."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bbm/f/w;->a:Lcom/bbm/f/y;

    iget-object v3, v3, Lcom/bbm/f/y;->a:Lcom/rim/bbm/BbmCoreService$MessageType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_2b
    return-void

    :cond_2c
    iget-object v1, p0, Lcom/bbm/f/w;->b:Lcom/bbm/f/ab;

    iget-object v0, v0, Lcom/bbm/f/x;->b:Lcom/bbm/f/aa;

    invoke-virtual {v0, v1}, Lcom/bbm/f/aa;->a(Lcom/bbm/f/ab;)V

    goto :goto_2b
.end method
