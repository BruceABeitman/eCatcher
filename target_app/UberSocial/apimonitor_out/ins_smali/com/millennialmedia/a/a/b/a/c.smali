.class final Lcom/millennialmedia/a/a/b/a/c;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.field private final a:Lcom/millennialmedia/a/a/aa;
.field private final b:Lcom/millennialmedia/a/a/b/q;
.method public constructor <init>(Lcom/millennialmedia/a/a/f;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/aa;Lcom/millennialmedia/a/a/b/q;)V
.registers 6
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
new-instance v0, Lcom/millennialmedia/a/a/b/a/o;
invoke-direct {v0, p1, p3, p2}, Lcom/millennialmedia/a/a/b/a/o;-><init>(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/aa;Ljava/lang/reflect/Type;)V
iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/c;->a:Lcom/millennialmedia/a/a/aa;
iput-object p4, p0, Lcom/millennialmedia/a/a/b/a/c;->b:Lcom/millennialmedia/a/a/b/q;
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Collection;
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
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/c;->b:Lcom/millennialmedia/a/a/b/q;
invoke-interface {v0}, Lcom/millennialmedia/a/a/b/q;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V
:goto_18
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z
move-result v1
if-eqz v1, :cond_28
iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/c;->a:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v1, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_18
:cond_28
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V
goto :goto_c
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/util/Collection;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/c;->a(Lcom/millennialmedia/a/a/d/d;Ljava/util/Collection;)V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/util/Collection;)V
.registers 6
if-nez p2, :cond_6
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;
:goto_5
return-void
:cond_6
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->b()Lcom/millennialmedia/a/a/d/d;
invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_d
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_1d
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/c;->a:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v2, p1, v1}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
goto :goto_d
:cond_1d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->c()Lcom/millennialmedia/a/a/d/d;
goto :goto_5
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/c;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Collection;
move-result-object v0
return-object v0
.end method