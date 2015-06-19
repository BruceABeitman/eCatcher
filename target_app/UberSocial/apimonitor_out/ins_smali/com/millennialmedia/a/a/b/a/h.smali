.class final Lcom/millennialmedia/a/a/b/a/h;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.field final synthetic a:Lcom/millennialmedia/a/a/b/a/g;
.field private final b:Lcom/millennialmedia/a/a/aa;
.field private final c:Lcom/millennialmedia/a/a/aa;
.field private final d:Lcom/millennialmedia/a/a/b/q;
.method public constructor <init>(Lcom/millennialmedia/a/a/b/a/g;Lcom/millennialmedia/a/a/f;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/aa;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/aa;Lcom/millennialmedia/a/a/b/q;)V
.registers 9
iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/h;->a:Lcom/millennialmedia/a/a/b/a/g;
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
new-instance v0, Lcom/millennialmedia/a/a/b/a/o;
invoke-direct {v0, p2, p4, p3}, Lcom/millennialmedia/a/a/b/a/o;-><init>(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/aa;Ljava/lang/reflect/Type;)V
iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/h;->b:Lcom/millennialmedia/a/a/aa;
new-instance v0, Lcom/millennialmedia/a/a/b/a/o;
invoke-direct {v0, p2, p6, p5}, Lcom/millennialmedia/a/a/b/a/o;-><init>(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/aa;Ljava/lang/reflect/Type;)V
iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/h;->c:Lcom/millennialmedia/a/a/aa;
iput-object p7, p0, Lcom/millennialmedia/a/a/b/a/h;->d:Lcom/millennialmedia/a/a/b/q;
return-void
.end method
.method private b(Lcom/millennialmedia/a/a/m;)Ljava/lang/String;
.registers 4
invoke-virtual {p1}, Lcom/millennialmedia/a/a/m;->r()Z
move-result v0
if-eqz v0, :cond_39
invoke-virtual {p1}, Lcom/millennialmedia/a/a/m;->v()Lcom/millennialmedia/a/a/s;
move-result-object v0
invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->y()Z
move-result v1
if-eqz v1, :cond_19
invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->c()Ljava/lang/Number;
move-result-object v0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_18
return-object v0
:cond_19
invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->b()Z
move-result v1
if-eqz v1, :cond_28
invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->n()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v0
goto :goto_18
:cond_28
invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->z()Z
move-result v1
if-eqz v1, :cond_33
invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->d()Ljava/lang/String;
move-result-object v0
goto :goto_18
:cond_33
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_39
invoke-virtual {p1}, Lcom/millennialmedia/a/a/m;->s()Z
move-result v0
if-eqz v0, :cond_42
const-string v0, "null"
goto :goto_18
:cond_42
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Map;
.registers 6
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v1
sget-object v0, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;
if-ne v1, v0, :cond_d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
const/4 v0, 0x0
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/h;->d:Lcom/millennialmedia/a/a/b/q;
invoke-interface {v0}, Lcom/millennialmedia/a/a/b/q;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
sget-object v2, Lcom/millennialmedia/a/a/d/c;->a:Lcom/millennialmedia/a/a/d/c;
if-ne v1, v2, :cond_58
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V
:goto_1c
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z
move-result v1
if-eqz v1, :cond_54
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V
iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/h;->b:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v1, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/h;->c:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v2, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_50
new-instance v0, Lcom/millennialmedia/a/a/w;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "duplicate key: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/String;)V
throw v0
:cond_50
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V
goto :goto_1c
:cond_54
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V
goto :goto_c
:cond_58
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->c()V
:cond_5b
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z
move-result v1
if-eqz v1, :cond_91
sget-object v1, Lcom/millennialmedia/a/a/b/h;->a:Lcom/millennialmedia/a/a/b/h;
invoke-virtual {v1, p1}, Lcom/millennialmedia/a/a/b/h;->a(Lcom/millennialmedia/a/a/d/a;)V
iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/h;->b:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v1, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/h;->c:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v2, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_5b
new-instance v0, Lcom/millennialmedia/a/a/w;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "duplicate key: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/String;)V
throw v0
:cond_91
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->d()V
goto/16 :goto_c
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/util/Map;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/h;->a(Lcom/millennialmedia/a/a/d/d;Ljava/util/Map;)V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/util/Map;)V
.registers 11
const/4 v2, 0x0
if-nez p2, :cond_7
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/h;->a:Lcom/millennialmedia/a/a/b/a/g;
invoke-static {v0}, Lcom/millennialmedia/a/a/b/a/g;->a(Lcom/millennialmedia/a/a/b/a/g;)Z
move-result v0
if-nez v0, :cond_3f
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->d()Lcom/millennialmedia/a/a/d/d;
invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/h;->c:Lcom/millennialmedia/a/a/aa;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v2, p1, v0}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
goto :goto_1a
:cond_3b
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->e()Lcom/millennialmedia/a/a/d/d;
goto :goto_6
:cond_3f
new-instance v3, Ljava/util/ArrayList;
invoke-interface {p2}, Ljava/util/Map;->size()I
move-result v0
invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V
new-instance v4, Ljava/util/ArrayList;
invoke-interface {p2}, Ljava/util/Map;->size()I
move-result v0
invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
move v1, v2
:goto_5a
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8c
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
iget-object v6, p0, Lcom/millennialmedia/a/a/b/a/h;->b:Lcom/millennialmedia/a/a/aa;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/millennialmedia/a/a/aa;->b(Ljava/lang/Object;)Lcom/millennialmedia/a/a/m;
move-result-object v6
invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v6}, Lcom/millennialmedia/a/a/m;->p()Z
move-result v0
if-nez v0, :cond_86
invoke-virtual {v6}, Lcom/millennialmedia/a/a/m;->q()Z
move-result v0
if-eqz v0, :cond_8a
:cond_86
const/4 v0, 0x1
:goto_87
or-int/2addr v0, v1
move v1, v0
goto :goto_5a
:cond_8a
move v0, v2
goto :goto_87
:cond_8c
if-eqz v1, :cond_b7
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->b()Lcom/millennialmedia/a/a/d/d;
:goto_91
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
if-ge v2, v0, :cond_b2
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->b()Lcom/millennialmedia/a/a/d/d;
invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-static {v0, p1}, Lcom/millennialmedia/a/a/b/s;->a(Lcom/millennialmedia/a/a/m;Lcom/millennialmedia/a/a/d/d;)V
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/h;->c:Lcom/millennialmedia/a/a/aa;
invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->c()Lcom/millennialmedia/a/a/d/d;
add-int/lit8 v2, v2, 0x1
goto :goto_91
:cond_b2
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->c()Lcom/millennialmedia/a/a/d/d;
goto/16 :goto_6
:cond_b7
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->d()Lcom/millennialmedia/a/a/d/d;
:goto_ba
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
if-ge v2, v0, :cond_d9
invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/h;->b(Lcom/millennialmedia/a/a/m;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/h;->c:Lcom/millennialmedia/a/a/aa;
invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
add-int/lit8 v2, v2, 0x1
goto :goto_ba
:cond_d9
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->e()Lcom/millennialmedia/a/a/d/d;
goto/16 :goto_6
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/h;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method