.class public final Lcom/squareup/wire/x;
.super Ljava/lang/Object;
.source "SourceFile"
.field final a:Lcom/squareup/wire/f;
.field private final b:Ljava/util/Map;
.field private final c:Ljava/util/Map;
.field private final d:Ljava/util/Map;
.method private constructor <init>(Ljava/util/List;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/squareup/wire/x;->b:Ljava/util/Map;
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/squareup/wire/x;->c:Ljava/util/Map;
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/squareup/wire/x;->d:Ljava/util/Map;
new-instance v0, Lcom/squareup/wire/f;
invoke-direct {v0}, Lcom/squareup/wire/f;-><init>()V
iput-object v0, p0, Lcom/squareup/wire/x;->a:Lcom/squareup/wire/f;
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_23
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
move-result-object v3
array-length v4, v3
const/4 v0, 0x0
move v1, v0
:goto_36
if-ge v1, v4, :cond_23
aget-object v0, v3, v1
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
move-result-object v5
const-class v6, Lcom/squareup/wire/d;
invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_52
const/4 v5, 0x0
:try_start_47
invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/wire/d;
iget-object v5, p0, Lcom/squareup/wire/x;->a:Lcom/squareup/wire/f;
invoke-virtual {v5, v0}, Lcom/squareup/wire/f;->a(Lcom/squareup/wire/d;)V
:try_end_52
.catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_52} :catch_56
:cond_52
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_36
:catch_56
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
:cond_5d
return-void
.end method
.method public varargs constructor <init>([Ljava/lang/Class;)V
.registers 3
invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-direct {p0, v0}, Lcom/squareup/wire/x;-><init>(Ljava/util/List;)V
return-void
.end method
.method public final a([BLjava/lang/Class;)Lcom/squareup/wire/Message;
.registers 5
const-string v0, "bytes"
invoke-static {p1, v0}, Lcom/squareup/wire/l;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "messageClass"
invoke-static {p2, v0}, Lcom/squareup/wire/l;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p1}, Lcom/squareup/wire/y;->a([B)Lcom/squareup/wire/y;
move-result-object v0
invoke-virtual {p0, p2}, Lcom/squareup/wire/x;->a(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/y;)Lcom/squareup/wire/Message;
move-result-object v0
return-object v0
.end method
.method final declared-synchronized a(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/squareup/wire/x;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/wire/MessageAdapter;
if-nez v0, :cond_15
new-instance v0, Lcom/squareup/wire/MessageAdapter;
invoke-direct {v0, p0, p1}, Lcom/squareup/wire/MessageAdapter;-><init>(Lcom/squareup/wire/x;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/squareup/wire/x;->b:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_15
:try_end_15
.catchall {:try_start_1 .. :try_end_15} :catchall_17
monitor-exit p0
return-object v0
:catchall_17
move-exception v0
monitor-exit p0
throw v0
.end method
.method final declared-synchronized b(Ljava/lang/Class;)Lcom/squareup/wire/a;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/squareup/wire/x;->c:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/wire/a;
if-nez v0, :cond_15
new-instance v0, Lcom/squareup/wire/a;
invoke-direct {v0, p1}, Lcom/squareup/wire/a;-><init>(Ljava/lang/Class;)V
iget-object v1, p0, Lcom/squareup/wire/x;->c:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_15
:try_end_15
.catchall {:try_start_1 .. :try_end_15} :catchall_17
monitor-exit p0
return-object v0
:catchall_17
move-exception v0
monitor-exit p0
throw v0
.end method
.method final declared-synchronized c(Ljava/lang/Class;)Lcom/squareup/wire/b;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/squareup/wire/x;->d:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/wire/b;
if-nez v0, :cond_15
new-instance v0, Lcom/squareup/wire/b;
invoke-direct {v0, p1}, Lcom/squareup/wire/b;-><init>(Ljava/lang/Class;)V
iget-object v1, p0, Lcom/squareup/wire/x;->d:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_15
:try_end_15
.catchall {:try_start_1 .. :try_end_15} :catchall_17
monitor-exit p0
return-object v0
:catchall_17
move-exception v0
monitor-exit p0
throw v0
.end method