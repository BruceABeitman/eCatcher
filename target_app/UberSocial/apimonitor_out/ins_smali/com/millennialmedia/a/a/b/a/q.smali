.class final Lcom/millennialmedia/a/a/b/a/q;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.field private final a:Ljava/util/Map;
.field private final b:Ljava/util/Map;
.method public constructor <init>(Ljava/lang/Class;)V
.registers 9
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/q;->a:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/q;->b:Ljava/util/Map;
:try_start_11
invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Enum;
array-length v4, v0
const/4 v1, 0x0
move v3, v1
:goto_1a
if-ge v3, v4, :cond_49
aget-object v5, v0, v3
invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v1
const-class v6, Lcom/millennialmedia/a/a/a/b;
invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v1
check-cast v1, Lcom/millennialmedia/a/a/a/b;
if-eqz v1, :cond_4a
invoke-interface {v1}, Lcom/millennialmedia/a/a/a/b;->a()Ljava/lang/String;
move-result-object v1
:goto_34
iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/q;->a:Ljava/util/Map;
invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/q;->b:Ljava/util/Map;
invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_3e
.catch Ljava/lang/NoSuchFieldException; {:try_start_11 .. :try_end_3e} :catch_42
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_1a
:catch_42
move-exception v0
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_49
return-void
:cond_4a
move-object v1, v2
goto :goto_34
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Enum;
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
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/q;->a:Ljava/util/Map;
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Enum;
goto :goto_c
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Enum;)V
.registers 4
if-nez p2, :cond_7
const/4 v0, 0x0
:goto_3
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
return-void
:cond_7
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/q;->b:Ljava/util/Map;
invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_3
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/Enum;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/q;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Enum;)V
return-void
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/q;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Enum;
move-result-object v0
return-object v0
.end method