.class Lcom/millennialmedia/a/a/b/a/j$1;
.super Lcom/millennialmedia/a/a/b/a/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/b/a/j;->a(Lcom/millennialmedia/a/a/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/millennialmedia/a/a/c/a;ZZ)Lcom/millennialmedia/a/a/b/a/l;
.end annotation


# instance fields
.field final a:Lcom/millennialmedia/a/a/aa;

.field final synthetic b:Lcom/millennialmedia/a/a/f;

.field final synthetic c:Lcom/millennialmedia/a/a/c/a;

.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Lcom/millennialmedia/a/a/b/a/j;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/b/a/j;Ljava/lang/String;ZZLcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;Ljava/lang/reflect/Field;Z)V
    .registers 11

    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/j$1;->f:Lcom/millennialmedia/a/a/b/a/j;

    iput-object p5, p0, Lcom/millennialmedia/a/a/b/a/j$1;->b:Lcom/millennialmedia/a/a/f;

    iput-object p6, p0, Lcom/millennialmedia/a/a/b/a/j$1;->c:Lcom/millennialmedia/a/a/c/a;

    iput-object p7, p0, Lcom/millennialmedia/a/a/b/a/j$1;->d:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/millennialmedia/a/a/b/a/j$1;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/millennialmedia/a/a/b/a/l;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/j$1;->b:Lcom/millennialmedia/a/a/f;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/j$1;->c:Lcom/millennialmedia/a/a/c/a;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/j$1;->a:Lcom/millennialmedia/a/a/aa;

    return-void
.end method


# virtual methods
.method a(Lcom/millennialmedia/a/a/d/a;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/j$1;->a:Lcom/millennialmedia/a/a/aa;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    iget-boolean v1, p0, Lcom/millennialmedia/a/a/b/a/j$1;->e:Z

    if-nez v1, :cond_11

    :cond_c
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/j$1;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/j$1;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/a/a/b/a/o;

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/j$1;->b:Lcom/millennialmedia/a/a/f;

    iget-object v3, p0, Lcom/millennialmedia/a/a/b/a/j$1;->a:Lcom/millennialmedia/a/a/aa;

    iget-object v4, p0, Lcom/millennialmedia/a/a/b/a/j$1;->c:Lcom/millennialmedia/a/a/c/a;

    invoke-virtual {v4}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/millennialmedia/a/a/b/a/o;-><init>(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/aa;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V

    return-void
.end method
