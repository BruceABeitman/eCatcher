.class final Lcom/millennialmedia/a/a/b/a/p$27;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Boolean;
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
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v0
goto :goto_c
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Boolean;)V
.registers 4
if-nez p2, :cond_8
const-string v0, "null"
:goto_4
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
return-void
:cond_8
invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$27;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Boolean;)V
return-void
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$27;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method