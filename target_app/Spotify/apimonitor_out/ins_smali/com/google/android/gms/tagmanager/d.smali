.class public final Lcom/google/android/gms/tagmanager/d;
.super Ljava/lang/Object;
.field public static final a:Ljava/lang/Object;
.field static final b:[Ljava/lang/String;
.field private static final c:Ljava/util/regex/Pattern;
.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
.field private final e:Ljava/util/Map;
.field private final f:Ljava/util/concurrent/locks/ReentrantLock;
.field private final g:Ljava/util/LinkedList;
.field private final h:Lcom/google/android/gms/tagmanager/g;
.field private final i:Ljava/util/concurrent/CountDownLatch;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/tagmanager/d;->a:Ljava/lang/Object;
const-string v0, "gtm.lifetime"
invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "\\."
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/d;->b:[Ljava/lang/String;
const-string v0, "(\\d+)\\s*([smhd]?)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/d;->c:Ljava/util/regex/Pattern;
return-void
.end method
.method constructor <init>()V
.registers 2
new-instance v0, Lcom/google/android/gms/tagmanager/d$1;
invoke-direct {v0}, Lcom/google/android/gms/tagmanager/d$1;-><init>()V
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/d;-><init>(Lcom/google/android/gms/tagmanager/g;)V
return-void
.end method
.method constructor <init>(Lcom/google/android/gms/tagmanager/g;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/d;->h:Lcom/google/android/gms/tagmanager/g;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/d;->d:Ljava/util/concurrent/ConcurrentHashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/d;->e:Ljava/util/Map;
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/d;->f:Ljava/util/concurrent/locks/ReentrantLock;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/d;->g:Ljava/util/LinkedList;
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/d;->i:Ljava/util/concurrent/CountDownLatch;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/d;->h:Lcom/google/android/gms/tagmanager/g;
new-instance v1, Lcom/google/android/gms/tagmanager/d$2;
invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/d$2;-><init>(Lcom/google/android/gms/tagmanager/d;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/g;->a(Lcom/google/android/gms/tagmanager/h;)V
return-void
.end method
.method private static a(Ljava/lang/String;)Ljava/lang/Long;
.registers 11
const-wide/16 v3, 0x0
const/4 v0, 0x0
const-wide/16 v8, 0x3e8
const-wide/16 v6, 0x3c
sget-object v1, Lcom/google/android/gms/tagmanager/d;->c:Ljava/util/regex/Pattern;
invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v5
invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z
move-result v1
if-nez v1, :cond_26
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "unknown _lifetime: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/tagmanager/p;->c(Ljava/lang/String;)V
:goto_25
return-object v0
:cond_26
const/4 v1, 0x1
:try_start_27
invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_2e
.catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2e} :catch_46
move-result-wide v1
:goto_2f
cmp-long v3, v1, v3
if-gtz v3, :cond_5b
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "non-positive _lifetime: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/tagmanager/p;->c(Ljava/lang/String;)V
goto :goto_25
:catch_46
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "illegal number in _lifetime value: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V
move-wide v1, v3
goto :goto_2f
:cond_5b
const/4 v3, 0x2
invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
if-nez v4, :cond_6b
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
goto :goto_25
:cond_6b
const/4 v4, 0x0
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
sparse-switch v3, :sswitch_data_ac
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "unknown units in _lifetime: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V
goto :goto_25
:sswitch_86
mul-long v0, v1, v8
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
goto :goto_25
:sswitch_8d
mul-long v0, v1, v8
mul-long/2addr v0, v6
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
goto :goto_25
:sswitch_95
mul-long v0, v1, v8
mul-long/2addr v0, v6
mul-long/2addr v0, v6
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
goto :goto_25
:sswitch_9e
mul-long v0, v1, v8
mul-long/2addr v0, v6
mul-long/2addr v0, v6
const-wide/16 v2, 0x18
mul-long/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
goto/16 :goto_25
nop
:sswitch_data_ac
.sparse-switch
0x64 -> :sswitch_9e
0x68 -> :sswitch_95
0x6d -> :sswitch_8d
0x73 -> :sswitch_86
.end sparse-switch
.end method
.method static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
.registers 8
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "\\."
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
const/4 v0, 0x0
move-object v1, v2
:goto_11
array-length v3, v4
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_24
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
aget-object v5, v4, v0
invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
move-object v1, v3
goto :goto_11
:cond_24
array-length v0, v4
add-int/lit8 v0, v0, -0x1
aget-object v0, v4, v0
invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v2
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/d;)Ljava/util/concurrent/CountDownLatch;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/d;->i:Ljava/util/concurrent/CountDownLatch;
return-object v0
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/d;Ljava/util/Map;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/d;->b(Ljava/util/Map;)V
return-void
.end method
.method private a(Ljava/util/List;Ljava/util/List;)V
.registers 6
:goto_0
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v0
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
if-ge v0, v1, :cond_f
const/4 v0, 0x0
invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_0
:cond_f
const/4 v0, 0x0
move v2, v0
:goto_11
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-ge v2, v0, :cond_66
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/util/List;
if-eqz v1, :cond_3e
invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
instance-of v1, v1, Ljava/util/List;
if-nez v1, :cond_2f
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p2, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
:cond_2f
check-cast v0, Ljava/util/List;
invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/d;->a(Ljava/util/List;Ljava/util/List;)V
:cond_3a
:goto_3a
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_11
:cond_3e
instance-of v1, v0, Ljava/util/Map;
if-eqz v1, :cond_5e
invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
instance-of v1, v1, Ljava/util/Map;
if-nez v1, :cond_52
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
invoke-interface {p2, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
:cond_52
check-cast v0, Ljava/util/Map;
invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map;
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/d;->a(Ljava/util/Map;Ljava/util/Map;)V
goto :goto_3a
:cond_5e
sget-object v1, Lcom/google/android/gms/tagmanager/d;->a:Ljava/lang/Object;
if-eq v0, v1, :cond_3a
invoke-interface {p2, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
goto :goto_3a
:cond_66
return-void
.end method
.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V
.registers 8
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8
:cond_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_61
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_49
const-string v1, ""
:goto_25
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
instance-of v3, v3, Ljava/util/Map;
if-eqz v3, :cond_4c
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/tagmanager/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V
goto :goto_8
:cond_49
const-string v1, "."
goto :goto_25
:cond_4c
const-string v3, "gtm.lifetime"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_8
new-instance v3, Lcom/google/android/gms/tagmanager/e;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-direct {v3, v1, v0}, Lcom/google/android/gms/tagmanager/e;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_8
:cond_61
return-void
.end method
.method private a(Ljava/util/Map;Ljava/util/Map;)V
.registers 7
invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
instance-of v3, v1, Ljava/util/List;
if-eqz v3, :cond_38
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
instance-of v3, v3, Ljava/util/List;
if-nez v3, :cond_2c
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2c
check-cast v1, Ljava/util/List;
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-direct {p0, v1, v0}, Lcom/google/android/gms/tagmanager/d;->a(Ljava/util/List;Ljava/util/List;)V
goto :goto_8
:cond_38
instance-of v3, v1, Ljava/util/Map;
if-eqz v3, :cond_58
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
instance-of v3, v3, Ljava/util/Map;
if-nez v3, :cond_4c
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_4c
check-cast v1, Ljava/util/Map;
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
invoke-direct {p0, v1, v0}, Lcom/google/android/gms/tagmanager/d;->a(Ljava/util/Map;Ljava/util/Map;)V
goto :goto_8
:cond_58
invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_8
:cond_5c
return-void
.end method
.method private b(Ljava/util/Map;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/tagmanager/d;->f:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/d;->g:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/android/gms/tagmanager/d;->f:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_7c
const/4 v0, 0x0
move v2, v0
:goto_15
iget-object v0, p0, Lcom/google/android/gms/tagmanager/d;->g:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
if-eqz v0, :cond_7c
iget-object v3, p0, Lcom/google/android/gms/tagmanager/d;->e:Ljava/util/Map;
monitor-enter v3
:try_end_22
.catchall {:try_start_5 .. :try_end_22} :catchall_47
:try_start_22
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_2a
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_4e
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
invoke-static {v1, v5}, Lcom/google/android/gms/tagmanager/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
iget-object v5, p0, Lcom/google/android/gms/tagmanager/d;->e:Ljava/util/Map;
invoke-direct {p0, v1, v5}, Lcom/google/android/gms/tagmanager/d;->a(Ljava/util/Map;Ljava/util/Map;)V
:try_end_43
.catchall {:try_start_22 .. :try_end_43} :catchall_44
goto :goto_2a
:catchall_44
move-exception v0
:try_start_45
monitor-exit v3
throw v0
:try_end_47
.catchall {:try_start_45 .. :try_end_47} :catchall_47
:catchall_47
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/d;->f:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v0
:try_start_4e
:cond_4e
monitor-exit v3
:try_start_4f
:try_end_4f
.catchall {:try_start_4e .. :try_end_4f} :catchall_44
iget-object v1, p0, Lcom/google/android/gms/tagmanager/d;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_59
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_69
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/tagmanager/f;
invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/f;->a(Ljava/util/Map;)V
goto :goto_59
:cond_69
add-int/lit8 v0, v2, 0x1
const/16 v1, 0x1f4
if-le v0, v1, :cond_ac
iget-object v0, p0, Lcom/google/android/gms/tagmanager/d;->g:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Seems like an infinite loop of pushing to the data layer"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_7c
invoke-static {p1}, Lcom/google/android/gms/tagmanager/d;->c(Ljava/util/Map;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_a3
const/4 v0, 0x0
:goto_83
if-eqz v0, :cond_9d
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const-string v2, ""
invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/tagmanager/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V
const-string v2, "gtm.lifetime"
invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
iget-object v2, p0, Lcom/google/android/gms/tagmanager/d;->h:Lcom/google/android/gms/tagmanager/g;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v3
invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/tagmanager/g;->a(Ljava/util/List;J)V
:try_end_9d
.catchall {:try_start_4f .. :try_end_9d} :catchall_47
:cond_9d
iget-object v0, p0, Lcom/google/android/gms/tagmanager/d;->f:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
:try_start_a3
:cond_a3
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/d;->a(Ljava/lang/String;)Ljava/lang/Long;
:try_end_aa
.catchall {:try_start_a3 .. :try_end_aa} :catchall_47
move-result-object v0
goto :goto_83
:cond_ac
move v2, v0
goto/16 :goto_15
.end method
.method private static c(Ljava/util/Map;)Ljava/lang/Object;
.registers 7
sget-object v2, Lcom/google/android/gms/tagmanager/d;->b:[Ljava/lang/String;
array-length v3, v2
const/4 v0, 0x0
move v1, v0
move-object v0, p0
:goto_6
if-ge v1, v3, :cond_f
aget-object v4, v2, v1
instance-of v5, v0, Ljava/util/Map;
if-nez v5, :cond_10
const/4 v0, 0x0
:cond_f
return-object v0
:cond_10
check-cast v0, Ljava/util/Map;
invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
add-int/lit8 v0, v1, 0x1
move v1, v0
move-object v0, p0
goto :goto_6
.end method
.method final a(Lcom/google/android/gms/tagmanager/f;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/d;->d:Ljava/util/concurrent/ConcurrentHashMap;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final a(Ljava/util/Map;)V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/tagmanager/d;->i:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
:try_end_5
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_9
:goto_5
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/d;->b(Ljava/util/Map;)V
return-void
:catch_9
move-exception v0
const-string v0, "DataLayer.push: unexpected InterruptedException"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V
goto :goto_5
.end method