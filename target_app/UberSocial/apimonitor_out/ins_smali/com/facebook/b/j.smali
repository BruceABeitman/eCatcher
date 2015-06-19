.class public Lcom/facebook/b/j;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "FacebookSDK."
.field private static final b:Ljava/util/HashMap;
.field private final c:Lcom/facebook/af;
.field private final d:Ljava/lang/String;
.field private e:Ljava/lang/StringBuilder;
.field private f:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/facebook/b/j;->b:Ljava/util/HashMap;
return-void
.end method
.method public constructor <init>(Lcom/facebook/af;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x3
iput v0, p0, Lcom/facebook/b/j;->f:I
const-string v0, "tag"
invoke-static {p2, v0}, Lcom/facebook/b/q;->a(Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lcom/facebook/b/j;->c:Lcom/facebook/af;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "FacebookSDK."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/b/j;->d:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/facebook/b/j;->e:Ljava/lang/StringBuilder;
return-void
.end method
.method public static a(Lcom/facebook/af;ILjava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-static {p0}, Lcom/facebook/bm;->c(Lcom/facebook/af;)Z
move-result v0
if-eqz v0, :cond_28
invoke-static {p3}, Lcom/facebook/b/j;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "FacebookSDK."
invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_25
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "FacebookSDK."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p2
:cond_25
invoke-static {p1, p2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
:cond_28
return-void
.end method
.method public static a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x3
invoke-static {p0, v0, p1, p2}, Lcom/facebook/b/j;->a(Lcom/facebook/af;ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static varargs a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 6
invoke-static {p0}, Lcom/facebook/bm;->c(Lcom/facebook/af;)Z
move-result v0
if-eqz v0, :cond_e
invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x3
invoke-static {p0, v1, p1, v0}, Lcom/facebook/b/j;->a(Lcom/facebook/af;ILjava/lang/String;Ljava/lang/String;)V
:cond_e
return-void
.end method
.method public static declared-synchronized a(Ljava/lang/String;)V
.registers 3
const-class v1, Lcom/facebook/b/j;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/af;->b:Lcom/facebook/af;
invoke-static {v0}, Lcom/facebook/bm;->c(Lcom/facebook/af;)Z
move-result v0
if-nez v0, :cond_10
const-string v0, "ACCESS_TOKEN_REMOVED"
invoke-static {p0, v0}, Lcom/facebook/b/j;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
:cond_10
monitor-exit v1
return-void
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const-class v1, Lcom/facebook/b/j;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/b/j;->b:Ljava/util/HashMap;
invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_a
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const-class v2, Lcom/facebook/b/j;
monitor-enter v2
:try_start_3
sget-object v0, Lcom/facebook/b/j;->b:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/CharSequence;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
:try_end_28
.catchall {:try_start_3 .. :try_end_28} :catchall_2c
move-result-object p0
goto :goto_d
:cond_2a
monitor-exit v2
return-object p0
:catchall_2c
move-exception v0
monitor-exit v2
throw v0
.end method
.method private d()Z
.registers 2
iget-object v0, p0, Lcom/facebook/b/j;->c:Lcom/facebook/af;
invoke-static {v0}, Lcom/facebook/bm;->c(Lcom/facebook/af;)Z
move-result v0
return v0
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/facebook/b/j;->f:I
return v0
.end method
.method public a(I)V
.registers 12
const/4 v9, 0x6
const/4 v8, 0x5
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
const-string v1, "value"
new-array v2, v9, [Ljava/lang/Object;
const/4 v3, 0x0
const/4 v4, 0x7
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v7
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v8
invoke-static {v0, v1, v2}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
iput p1, p0, Lcom/facebook/b/j;->f:I
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
.registers 6
const-string v0, "  %s:\t%s\n"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-virtual {p0, v0, v1}, Lcom/facebook/b/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
invoke-direct {p0}, Lcom/facebook/b/j;->d()Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/facebook/b/j;->e:Ljava/lang/StringBuilder;
invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_f
return-void
.end method
.method public a(Ljava/lang/StringBuilder;)V
.registers 3
invoke-direct {p0}, Lcom/facebook/b/j;->d()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/facebook/b/j;->e:Ljava/lang/StringBuilder;
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
:cond_b
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/b/j;->e:Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/b/j;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/facebook/b/j;->c:Lcom/facebook/af;
iget v1, p0, Lcom/facebook/b/j;->f:I
iget-object v2, p0, Lcom/facebook/b/j;->d:Ljava/lang/String;
invoke-static {v0, v1, v2, p1}, Lcom/facebook/b/j;->a(Lcom/facebook/af;ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public c()V
.registers 2
iget-object v0, p0, Lcom/facebook/b/j;->e:Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/b/j;->b(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/facebook/b/j;->e:Ljava/lang/StringBuilder;
return-void
.end method
.method public c(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/facebook/b/j;->d()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/facebook/b/j;->e:Ljava/lang/StringBuilder;
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_b
return-void
.end method