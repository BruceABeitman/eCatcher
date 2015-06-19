.class final Lcom/facebook/ai$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/aj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ai;->a(Lcom/facebook/aw;Lcom/facebook/al;)Lcom/facebook/ai;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/al;


# direct methods
.method constructor <init>(Lcom/facebook/al;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ai$1;->a:Lcom/facebook/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/as;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ai$1;->a:Lcom/facebook/al;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/facebook/ai$1;->a:Lcom/facebook/al;

    const-class v0, Lcom/facebook/c/j;

    invoke-virtual {p1, v0}, Lcom/facebook/as;->a(Ljava/lang/Class;)Lcom/facebook/c/c;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/j;

    invoke-interface {v1, v0, p1}, Lcom/facebook/al;->a(Lcom/facebook/c/j;Lcom/facebook/as;)V

    :cond_11
    return-void
.end method
