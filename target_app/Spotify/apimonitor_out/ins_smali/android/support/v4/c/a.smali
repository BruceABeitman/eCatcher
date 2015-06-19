.class public Landroid/support/v4/c/a;
.super Landroid/support/v4/c/m;
.source "SourceFile"
.implements Ljava/util/Map;
.field  a:Landroid/support/v4/c/g;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/c/m;-><init>()V
return-void
.end method
.method private b()Landroid/support/v4/c/g;
.registers 2
iget-object v0, p0, Landroid/support/v4/c/a;->a:Landroid/support/v4/c/g;
if-nez v0, :cond_b
new-instance v0, Landroid/support/v4/c/a$1;
invoke-direct {v0, p0}, Landroid/support/v4/c/a$1;-><init>(Landroid/support/v4/c/a;)V
iput-object v0, p0, Landroid/support/v4/c/a;->a:Landroid/support/v4/c/g;
:cond_b
iget-object v0, p0, Landroid/support/v4/c/a;->a:Landroid/support/v4/c/g;
return-object v0
.end method
.method public entrySet()Ljava/util/Set;
.registers 3
invoke-direct {p0}, Landroid/support/v4/c/a;->b()Landroid/support/v4/c/g;
move-result-object v0
iget-object v1, v0, Landroid/support/v4/c/g;->b:Landroid/support/v4/c/i;
if-nez v1, :cond_f
new-instance v1, Landroid/support/v4/c/i;
invoke-direct {v1, v0}, Landroid/support/v4/c/i;-><init>(Landroid/support/v4/c/g;)V
iput-object v1, v0, Landroid/support/v4/c/g;->b:Landroid/support/v4/c/i;
:cond_f
iget-object v0, v0, Landroid/support/v4/c/g;->b:Landroid/support/v4/c/i;
return-object v0
.end method
.method public keySet()Ljava/util/Set;
.registers 3
invoke-direct {p0}, Landroid/support/v4/c/a;->b()Landroid/support/v4/c/g;
move-result-object v0
iget-object v1, v0, Landroid/support/v4/c/g;->c:Landroid/support/v4/c/j;
if-nez v1, :cond_f
new-instance v1, Landroid/support/v4/c/j;
invoke-direct {v1, v0}, Landroid/support/v4/c/j;-><init>(Landroid/support/v4/c/g;)V
iput-object v1, v0, Landroid/support/v4/c/g;->c:Landroid/support/v4/c/j;
:cond_f
iget-object v0, v0, Landroid/support/v4/c/g;->c:Landroid/support/v4/c/j;
return-object v0
.end method
.method public putAll(Ljava/util/Map;)V
.registers 5
iget v0, p0, Landroid/support/v4/c/a;->h:I
invoke-interface {p1}, Ljava/util/Map;->size()I
move-result v1
add-int/2addr v0, v1
invoke-virtual {p0, v0}, Landroid/support/v4/c/a;->a(I)V
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_12
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v2, v0}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_12
:cond_2a
return-void
.end method
.method public values()Ljava/util/Collection;
.registers 3
invoke-direct {p0}, Landroid/support/v4/c/a;->b()Landroid/support/v4/c/g;
move-result-object v0
iget-object v1, v0, Landroid/support/v4/c/g;->d:Landroid/support/v4/c/l;
if-nez v1, :cond_f
new-instance v1, Landroid/support/v4/c/l;
invoke-direct {v1, v0}, Landroid/support/v4/c/l;-><init>(Landroid/support/v4/c/g;)V
iput-object v1, v0, Landroid/support/v4/c/g;->d:Landroid/support/v4/c/l;
:cond_f
iget-object v0, v0, Landroid/support/v4/c/g;->d:Landroid/support/v4/c/l;
return-object v0
.end method