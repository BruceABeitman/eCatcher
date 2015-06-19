.class final Lcom/ford/syncV4/c/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/ford/syncV4/c/a;
.field final synthetic a:Lcom/ford/syncV4/c/b;
.method private constructor <init>(Lcom/ford/syncV4/c/b;)V
.registers 2
iput-object p1, p0, Lcom/ford/syncV4/c/c;->a:Lcom/ford/syncV4/c/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/ford/syncV4/c/b;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/ford/syncV4/c/c;-><init>(Lcom/ford/syncV4/c/b;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/protocol/e;)V
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/c/c;->a:Lcom/ford/syncV4/c/b;
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->b()B
move-result v1
invoke-static {v0, v1}, Lcom/ford/syncV4/c/b;->a(Lcom/ford/syncV4/c/b;B)Lcom/ford/syncV4/c/d;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v0, p1}, Lcom/ford/syncV4/c/d;->a(Lcom/ford/syncV4/protocol/e;)V
:cond_f
return-void
.end method
.method public final a(Lcom/ford/syncV4/protocol/enums/d;BBLjava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/ford/syncV4/c/c;->a:Lcom/ford/syncV4/c/b;
invoke-static {v0}, Lcom/ford/syncV4/c/b;->a(Lcom/ford/syncV4/c/b;)Ljava/util/Vector;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/c/d;
invoke-virtual {v0}, Lcom/ford/syncV4/c/d;->a()B
move-result v2
if-nez v2, :cond_a
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ford/syncV4/c/d;->a(Lcom/ford/syncV4/protocol/enums/d;BBLjava/lang/String;)V
:cond_1f
return-void
.end method
.method public final a(Lcom/ford/syncV4/protocol/enums/d;BLjava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/ford/syncV4/c/c;->a:Lcom/ford/syncV4/c/b;
invoke-static {v0, p2}, Lcom/ford/syncV4/c/b;->a(Lcom/ford/syncV4/c/b;B)Lcom/ford/syncV4/c/d;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0, p1, p2, p3}, Lcom/ford/syncV4/c/d;->a(Lcom/ford/syncV4/protocol/enums/d;BLjava/lang/String;)V
:cond_b
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/c/c;->a:Lcom/ford/syncV4/c/b;
invoke-static {v0}, Lcom/ford/syncV4/c/b;->a(Lcom/ford/syncV4/c/b;)Ljava/util/Vector;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/c/d;
invoke-virtual {v0, p1}, Lcom/ford/syncV4/c/d;->a(Ljava/lang/String;)V
goto :goto_a
:cond_1a
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 6
const/4 v2, 0x0
move v1, v2
:goto_2
iget-object v0, p0, Lcom/ford/syncV4/c/c;->a:Lcom/ford/syncV4/c/b;
invoke-static {v0}, Lcom/ford/syncV4/c/b;->a(Lcom/ford/syncV4/c/b;)Ljava/util/Vector;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-ge v1, v0, :cond_23
iget-object v0, p0, Lcom/ford/syncV4/c/c;->a:Lcom/ford/syncV4/c/b;
invoke-static {v0}, Lcom/ford/syncV4/c/b;->a(Lcom/ford/syncV4/c/b;)Ljava/util/Vector;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/c/d;
if-eqz v0, :cond_1f
invoke-virtual {v0, p1, p2}, Lcom/ford/syncV4/c/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V
:cond_1f
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_23
return-void
.end method
.method public final b(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 5
iget-object v0, p0, Lcom/ford/syncV4/c/c;->a:Lcom/ford/syncV4/c/b;
invoke-static {v0}, Lcom/ford/syncV4/c/b;->a(Lcom/ford/syncV4/c/b;)Ljava/util/Vector;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/c/d;
invoke-virtual {v0, p1, p2}, Lcom/ford/syncV4/c/d;->b(Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_a
:cond_1a
return-void
.end method