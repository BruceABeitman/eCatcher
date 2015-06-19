.class  Lcom/millennialmedia/a/a/b/f$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/millennialmedia/a/a/b/q;
.field final synthetic a:Lcom/millennialmedia/a/a/i;
.field final synthetic b:Ljava/lang/reflect/Type;
.field final synthetic c:Lcom/millennialmedia/a/a/b/f;
.method constructor <init>(Lcom/millennialmedia/a/a/b/f;Lcom/millennialmedia/a/a/i;Ljava/lang/reflect/Type;)V
.registers 4
iput-object p1, p0, Lcom/millennialmedia/a/a/b/f$5;->c:Lcom/millennialmedia/a/a/b/f;
iput-object p2, p0, Lcom/millennialmedia/a/a/b/f$5;->a:Lcom/millennialmedia/a/a/i;
iput-object p3, p0, Lcom/millennialmedia/a/a/b/f$5;->b:Ljava/lang/reflect/Type;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/b/f$5;->a:Lcom/millennialmedia/a/a/i;
iget-object v1, p0, Lcom/millennialmedia/a/a/b/f$5;->b:Ljava/lang/reflect/Type;
invoke-interface {v0, v1}, Lcom/millennialmedia/a/a/i;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method