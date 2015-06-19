.class final Lcom/bbm/f/e;
.super Ljava/lang/Object;
.source "DelegatingBroker.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field final synthetic a:Lcom/bbm/f/c;


# direct methods
.method constructor <init>(Lcom/bbm/f/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/f/e;->a:Lcom/bbm/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/f/e;->a:Lcom/bbm/f/c;

    iget-object v0, v0, Lcom/bbm/f/c;->b:Lcom/bbm/f/aa;

    invoke-virtual {v0}, Lcom/bbm/f/aa;->a()V

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/f/e;->a:Lcom/bbm/f/c;

    iget-object v0, v0, Lcom/bbm/f/c;->b:Lcom/bbm/f/aa;

    invoke-virtual {v0, p1}, Lcom/bbm/f/aa;->a(Lcom/bbm/f/ab;)V

    return-void
.end method
