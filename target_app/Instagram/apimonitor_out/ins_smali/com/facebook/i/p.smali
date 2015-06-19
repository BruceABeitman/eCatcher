.class final Lcom/facebook/i/p;
.super Ljava/lang/Object;
.source "RegexCache.java"
.field private a:Ljava/util/LinkedHashMap;
.field private b:I
.method public constructor <init>(I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x64
iput v0, p0, Lcom/facebook/i/p;->b:I
new-instance v0, Lcom/facebook/i/q;
const/16 v1, 0x86
invoke-direct {v0, p0, v1}, Lcom/facebook/i/q;-><init>(Lcom/facebook/i/p;I)V
iput-object v0, p0, Lcom/facebook/i/p;->a:Ljava/util/LinkedHashMap;
return-void
.end method
.method static synthetic a(Lcom/facebook/i/p;)I
.registers 2
iget v0, p0, Lcom/facebook/i/p;->b:I
return v0
.end method
.method public final declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/facebook/i/p;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result-object v0
monitor-exit p0
return-object v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/facebook/i/p;->a:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method