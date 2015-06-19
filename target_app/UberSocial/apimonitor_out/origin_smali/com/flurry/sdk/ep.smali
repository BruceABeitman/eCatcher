.class public Lcom/flurry/sdk/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/eq;


# instance fields
.field private final a:Lcom/flurry/sdk/eq;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/eq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/dg;)V
    .registers 3

    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/dg;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/dg;Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public b(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/eq;->b(Lcom/flurry/sdk/dg;Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public c(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/eq;->c(Lcom/flurry/sdk/dg;Landroid/content/Context;)V

    :cond_9
    return-void
.end method
