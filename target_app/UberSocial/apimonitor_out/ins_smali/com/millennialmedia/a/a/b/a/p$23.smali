.class final Lcom/millennialmedia/a/a/b/a/p$23;
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
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
sget-object v1, Lcom/millennialmedia/a/a/d/c;->f:Lcom/millennialmedia/a/a/d/c;
if-ne v0, v1, :cond_22
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_c
:cond_22
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->i()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_c
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Boolean;)V
.registers 4
if-nez p2, :cond_6
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;
:goto_5
return-void
:cond_6
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->a(Z)Lcom/millennialmedia/a/a/d/d;
goto :goto_5
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$23;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Boolean;)V
return-void
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$23;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method