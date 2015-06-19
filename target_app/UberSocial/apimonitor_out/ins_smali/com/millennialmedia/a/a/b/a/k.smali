.class public final Lcom/millennialmedia/a/a/b/a/k;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.field private final a:Lcom/millennialmedia/a/a/b/q;
.field private final b:Ljava/util/Map;
.method private constructor <init>(Lcom/millennialmedia/a/a/b/q;Ljava/util/Map;)V
.registers 3
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/k;->a:Lcom/millennialmedia/a/a/b/q;
iput-object p2, p0, Lcom/millennialmedia/a/a/b/a/k;->b:Ljava/util/Map;
return-void
.end method
.method synthetic constructor <init>(Lcom/millennialmedia/a/a/b/q;Ljava/util/Map;Lcom/millennialmedia/a/a/b/a/j$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/k;-><init>(Lcom/millennialmedia/a/a/b/q;Ljava/util/Map;)V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 6
if-nez p2, :cond_6
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;
:goto_5
return-void
:cond_6
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->d()Lcom/millennialmedia/a/a/d/d;
:try_start_9
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/k;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_13
:goto_13
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/b/a/l;
iget-boolean v2, v0, Lcom/millennialmedia/a/a/b/a/l;->h:Z
if-eqz v2, :cond_13
iget-object v2, v0, Lcom/millennialmedia/a/a/b/a/l;->g:Ljava/lang/String;
invoke-virtual {p1, v2}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/b/a/l;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
:try_end_2b
.catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2b} :catch_2c
goto :goto_13
:catch_2c
move-exception v0
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_33
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->e()Lcom/millennialmedia/a/a/d/d;
goto :goto_5
.end method
.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 5
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
sget-object v1, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;
if-ne v0, v1, :cond_d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
const/4 v0, 0x0
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/k;->a:Lcom/millennialmedia/a/a/b/q;
invoke-interface {v0}, Lcom/millennialmedia/a/a/b/q;->a()Ljava/lang/Object;
move-result-object v1
:try_start_13
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->c()V
:goto_16
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z
move-result v0
if-eqz v0, :cond_44
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->g()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/k;->b:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/b/a/l;
if-eqz v0, :cond_2e
iget-boolean v2, v0, Lcom/millennialmedia/a/a/b/a/l;->i:Z
if-nez v2, :cond_39
:cond_2e
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->n()V
:try_end_31
.catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_31} :catch_32
.catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_31} :catch_3d
goto :goto_16
:catch_32
move-exception v0
new-instance v1, Lcom/millennialmedia/a/a/w;
invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_39
:try_start_39
invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/a/a/b/a/l;->a(Lcom/millennialmedia/a/a/d/a;Ljava/lang/Object;)V
:try_end_3c
.catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_3c} :catch_32
.catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_3c} :catch_3d
goto :goto_16
:catch_3d
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
:cond_44
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->d()V
move-object v0, v1
goto :goto_c
.end method