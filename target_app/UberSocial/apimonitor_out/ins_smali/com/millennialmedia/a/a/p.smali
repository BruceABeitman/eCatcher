.class public final Lcom/millennialmedia/a/a/p;
.super Lcom/millennialmedia/a/a/m;
.source "SourceFile"
.field private final a:Lcom/millennialmedia/a/a/b/j;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/millennialmedia/a/a/m;-><init>()V
new-instance v0, Lcom/millennialmedia/a/a/b/j;
invoke-direct {v0}, Lcom/millennialmedia/a/a/b/j;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
return-void
.end method
.method private a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/m;
.registers 3
if-nez p1, :cond_5
sget-object v0, Lcom/millennialmedia/a/a/o;->a:Lcom/millennialmedia/a/a/o;
:goto_4
return-object v0
:cond_5
new-instance v0, Lcom/millennialmedia/a/a/s;
invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/Object;)V
goto :goto_4
.end method
.method public a(Ljava/lang/String;)Lcom/millennialmedia/a/a/m;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
return-object v0
.end method
.method  a()Lcom/millennialmedia/a/a/p;
.registers 5
new-instance v2, Lcom/millennialmedia/a/a/p;
invoke-direct {v2}, Lcom/millennialmedia/a/a/p;-><init>()V
iget-object v0, p0, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/j;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->o()Lcom/millennialmedia/a/a/m;
move-result-object v0
invoke-virtual {v2, v1, v0}, Lcom/millennialmedia/a/a/p;->a(Ljava/lang/String;Lcom/millennialmedia/a/a/m;)V
goto :goto_f
:cond_2f
return-object v2
.end method
.method public a(Ljava/lang/String;Lcom/millennialmedia/a/a/m;)V
.registers 4
if-nez p2, :cond_4
sget-object p2, Lcom/millennialmedia/a/a/o;->a:Lcom/millennialmedia/a/a/o;
:cond_4
iget-object v0, p0, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/b/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
.registers 4
invoke-direct {p0, p2}, Lcom/millennialmedia/a/a/p;->a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/m;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/p;->a(Ljava/lang/String;Lcom/millennialmedia/a/a/m;)V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/Character;)V
.registers 4
invoke-direct {p0, p2}, Lcom/millennialmedia/a/a/p;->a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/m;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/p;->a(Ljava/lang/String;Lcom/millennialmedia/a/a/m;)V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/Number;)V
.registers 4
invoke-direct {p0, p2}, Lcom/millennialmedia/a/a/p;->a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/m;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/p;->a(Ljava/lang/String;Lcom/millennialmedia/a/a/m;)V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p2}, Lcom/millennialmedia/a/a/p;->a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/m;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/p;->a(Ljava/lang/String;Lcom/millennialmedia/a/a/m;)V
return-void
.end method
.method public b()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/j;->entrySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public b(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/j;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public c(Ljava/lang/String;)Lcom/millennialmedia/a/a/m;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/j;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
return-object v0
.end method
.method public d(Ljava/lang/String;)Lcom/millennialmedia/a/a/s;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/j;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/s;
return-object v0
.end method
.method public e(Ljava/lang/String;)Lcom/millennialmedia/a/a/j;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/j;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/j;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
if-eq p1, p0, :cond_12
instance-of v0, p1, Lcom/millennialmedia/a/a/p;
if-eqz v0, :cond_14
check-cast p1, Lcom/millennialmedia/a/a/p;
iget-object v0, p1, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
iget-object v1, p0, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/b/j;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
:cond_12
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public f(Ljava/lang/String;)Lcom/millennialmedia/a/a/p;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/j;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/p;
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/p;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/j;->hashCode()I
move-result v0
return v0
.end method
.method synthetic o()Lcom/millennialmedia/a/a/m;
.registers 2
invoke-virtual {p0}, Lcom/millennialmedia/a/a/p;->a()Lcom/millennialmedia/a/a/p;
move-result-object v0
return-object v0
.end method