.class final Lcom/bbm/setup/aj;
.super Ljava/lang/Object;
.source "TransportErrorMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/setup/ai;


# direct methods
.method constructor <init>(Lcom/bbm/setup/ai;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/setup/aj;->a:Lcom/bbm/setup/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/setup/aj;->a:Lcom/bbm/setup/ai;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bbm/setup/ai;->a:Z

    :try_start_5
    iget-object v0, p0, Lcom/bbm/setup/aj;->a:Lcom/bbm/setup/ai;

    invoke-static {v0}, Lcom/bbm/setup/ai;->a(Lcom/bbm/setup/ai;)V
    :try_end_a
    .catch Lcom/bbm/j/z; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method
