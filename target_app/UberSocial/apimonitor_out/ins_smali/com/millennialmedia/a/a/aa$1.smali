.class  Lcom/millennialmedia/a/a/aa$1;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.field final synthetic a:Lcom/millennialmedia/a/a/aa;
.method constructor <init>(Lcom/millennialmedia/a/a/aa;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/a/a/aa$1;->a:Lcom/millennialmedia/a/a/aa;
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 4
if-nez p2, :cond_6
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/millennialmedia/a/a/aa$1;->a:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 4
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
sget-object v1, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;
if-ne v0, v1, :cond_d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
const/4 v0, 0x0
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/millennialmedia/a/a/aa$1;->a:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
.end method