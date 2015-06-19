.class final Lcom/bbm/setup/ak;
.super Lcom/bbm/j/k;
.source "TransportErrorMonitor.java"


# instance fields
.field final synthetic a:Lcom/bbm/setup/ai;


# direct methods
.method constructor <init>(Lcom/bbm/setup/ai;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/setup/ak;->a:Lcom/bbm/setup/ai;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/ak;->a:Lcom/bbm/setup/ai;

    invoke-static {v0}, Lcom/bbm/setup/ai;->a(Lcom/bbm/setup/ai;)V

    return-void
.end method
