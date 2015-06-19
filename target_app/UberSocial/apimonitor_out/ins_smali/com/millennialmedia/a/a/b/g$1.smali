.class  Lcom/millennialmedia/a/a/b/g$1;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.field final synthetic a:Z
.field final synthetic b:Z
.field final synthetic c:Lcom/millennialmedia/a/a/f;
.field final synthetic d:Lcom/millennialmedia/a/a/c/a;
.field final synthetic e:Lcom/millennialmedia/a/a/b/g;
.field private f:Lcom/millennialmedia/a/a/aa;
.method constructor <init>(Lcom/millennialmedia/a/a/b/g;ZZLcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)V
.registers 6
iput-object p1, p0, Lcom/millennialmedia/a/a/b/g$1;->e:Lcom/millennialmedia/a/a/b/g;
iput-boolean p2, p0, Lcom/millennialmedia/a/a/b/g$1;->a:Z
iput-boolean p3, p0, Lcom/millennialmedia/a/a/b/g$1;->b:Z
iput-object p4, p0, Lcom/millennialmedia/a/a/b/g$1;->c:Lcom/millennialmedia/a/a/f;
iput-object p5, p0, Lcom/millennialmedia/a/a/b/g$1;->d:Lcom/millennialmedia/a/a/c/a;
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
return-void
.end method
.method private b()Lcom/millennialmedia/a/a/aa;
.registers 4
iget-object v0, p0, Lcom/millennialmedia/a/a/b/g$1;->f:Lcom/millennialmedia/a/a/aa;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
iget-object v0, p0, Lcom/millennialmedia/a/a/b/g$1;->c:Lcom/millennialmedia/a/a/f;
iget-object v1, p0, Lcom/millennialmedia/a/a/b/g$1;->e:Lcom/millennialmedia/a/a/b/g;
iget-object v2, p0, Lcom/millennialmedia/a/a/b/g$1;->d:Lcom/millennialmedia/a/a/c/a;
invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/ab;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/a/a/b/g$1;->f:Lcom/millennialmedia/a/a/aa;
goto :goto_4
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 4
iget-boolean v0, p0, Lcom/millennialmedia/a/a/b/g$1;->b:Z
if-eqz v0, :cond_8
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;
:goto_7
return-void
:cond_8
invoke-direct {p0}, Lcom/millennialmedia/a/a/b/g$1;->b()Lcom/millennialmedia/a/a/aa;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
goto :goto_7
.end method
.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
iget-boolean v0, p0, Lcom/millennialmedia/a/a/b/g$1;->a:Z
if-eqz v0, :cond_9
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->n()V
const/4 v0, 0x0
:goto_8
return-object v0
:cond_9
invoke-direct {p0}, Lcom/millennialmedia/a/a/b/g$1;->b()Lcom/millennialmedia/a/a/aa;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v0
goto :goto_8
.end method