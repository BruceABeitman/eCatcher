.class public final Lcom/fasterxml/jackson/core/util/InternCache;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"
.field public static final instance:Lcom/fasterxml/jackson/core/util/InternCache;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/core/util/InternCache;
invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/InternCache;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;
return-void
.end method
.method private constructor <init>()V
.registers 4
const/16 v0, 0x64
const v1, 0x3f4ccccd
const/4 v2, 0x1
invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
return-void
.end method
.method public final declared-synchronized intern(Ljava/lang/String;)Ljava/lang/String;
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_10
invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v0}, Lcom/fasterxml/jackson/core/util/InternCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
:cond_10
monitor-exit p0
return-object v0
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/InternCache;->size()I
move-result v0
const/16 v1, 0x64
if-le v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method