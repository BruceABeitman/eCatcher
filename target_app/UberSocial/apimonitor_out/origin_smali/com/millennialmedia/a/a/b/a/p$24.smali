.class final Lcom/millennialmedia/a/a/b/a/p$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/b/a/p;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/a/a/aa;)Lcom/millennialmedia/a/a/ab;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/millennialmedia/a/a/aa;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/a/a/aa;)V
    .registers 4

    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/p$24;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/millennialmedia/a/a/b/a/p$24;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/millennialmedia/a/a/b/a/p$24;->c:Lcom/millennialmedia/a/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
    .registers 5

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/p$24;->a:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/p$24;->b:Ljava/lang/Class;

    if-ne v0, v1, :cond_f

    :cond_c
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/p$24;->c:Lcom/millennialmedia/a/a/aa;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/p$24;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/p$24;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/p$24;->c:Lcom/millennialmedia/a/a/aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
