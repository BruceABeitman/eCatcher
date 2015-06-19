.class final Lcom/bbm/setup/ab;
.super Lcom/bbm/j/k;
.source "SetupManager.java"


# instance fields
.field final synthetic a:Lcom/bbm/setup/aa;


# direct methods
.method constructor <init>(Lcom/bbm/setup/aa;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/setup/ab;->a:Lcom/bbm/setup/aa;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/ab;->a:Lcom/bbm/setup/aa;

    invoke-virtual {v0}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;

    return-void
.end method
