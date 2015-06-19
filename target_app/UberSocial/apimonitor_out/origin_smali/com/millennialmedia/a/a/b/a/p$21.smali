.class final Lcom/millennialmedia/a/a/b/a/p$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/b/a/p;->a(Ljava/lang/Class;Lcom/millennialmedia/a/a/aa;)Lcom/millennialmedia/a/a/ab;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/millennialmedia/a/a/aa;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/millennialmedia/a/a/aa;)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/p$21;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/millennialmedia/a/a/b/a/p$21;->b:Lcom/millennialmedia/a/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
    .registers 5

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/p$21;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/p$21;->b:Lcom/millennialmedia/a/a/aa;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/p$21;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/p$21;->b:Lcom/millennialmedia/a/a/aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
