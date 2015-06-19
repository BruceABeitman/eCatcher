.class public Lcom/google/android/gms/tagmanager/DataLayer;
.super Ljava/lang/Object;
.field public static final EVENT_KEY:Ljava/lang/String; = "event"
.field public static final OBJECT_NOT_PRESENT:Ljava/lang/Object;
.field static final Ur:[Ljava/lang/String;
.field private static final Us:Ljava/util/regex/Pattern;
.field private final Ut:Ljava/util/concurrent/ConcurrentHashMap;
.field private final Uu:Ljava/util/Map;
.field private final Uv:Ljava/util/concurrent/locks/ReentrantLock;
.field private final Uw:Ljava/util/LinkedList;
.field private final Ux:Lcom/google/android/gms/tagmanager/DataLayer$c;
.field private final Uy:Ljava/util/concurrent/CountDownLatch;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/tagmanager/DataLayer;->OBJECT_NOT_PRESENT:Ljava/lang/Object;
const-string v0, "gtm.lifetime"
invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "\\."
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/DataLayer;->Ur:[Ljava/lang/String;
const-string v0, "(\\d+)\\s*([smhd]?)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/DataLayer;->Us:Ljava/util/regex/Pattern;
return-void
.end method
.method constructor <init>()V
.registers 2
new-instance v0, Lcom/google/android/gms/tagmanager/DataLayer$1;
invoke-direct {v0}, Lcom/google/android/gms/tagmanager/DataLayer$1;-><init>()V
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/DataLayer;-><init>(Lcom/google/android/gms/tagmanager/DataLayer$c;)V
return-void
.end method
.method constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer$c;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Ux:Lcom/google/android/gms/tagmanager/DataLayer$c;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Ut:Ljava/util/concurrent/ConcurrentHashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uu:Ljava/util/Map;
new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uv:Ljava/util/concurrent/locks/ReentrantLock;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uw:Ljava/util/LinkedList;
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uy:Ljava/util/concurrent/CountDownLatch;
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/DataLayer;->iP()V
return-void
.end method
.method private A(Ljava/util/Map;)Ljava/lang/Object;
.registers 8
sget-object v2, Lcom/google/android/gms/tagmanager/DataLayer;->Ur:[Ljava/lang/String;
array-length v3, v2
const/4 v0, 0x0
move v1, v0
move-object v0, p1
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
move-result-object p1
add-int/lit8 v0, v1, 0x1
move v1, v0
move-object v0, p1
goto :goto_6
.end method
.method private B(Ljava/util/Map;)Ljava/util/List;
.registers 4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
const-string v1, ""
invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V
return-object v0
.end method
.method private C(Ljava/util/Map;)V
.registers 6
iget-object v1, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uu:Ljava/util/Map;
monitor-enter v1
:try_start_3
invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/tagmanager/DataLayer;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
iget-object v3, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uu:Ljava/util/Map;
invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/Map;Ljava/util/Map;)V
:try_end_24
.catchall {:try_start_3 .. :try_end_24} :catchall_25
goto :goto_b
:catchall_25
move-exception v0
monitor-exit v1
throw v0
:cond_28
:try_start_28
monitor-exit v1
:try_end_29
.catchall {:try_start_28 .. :try_end_29} :catchall_25
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->D(Ljava/util/Map;)V
return-void
.end method
.method private D(Ljava/util/Map;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Ut:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/DataLayer$b;
invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer$b;->v(Ljava/util/Map;)V
goto :goto_a
:cond_1a
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/DataLayer;)Ljava/util/concurrent/CountDownLatch;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uy:Ljava/util/concurrent/CountDownLatch;
return-object v0
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/DataLayer;Ljava/util/Map;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->x(Ljava/util/Map;)V
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
invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V
goto :goto_8
:cond_49
const-string v1, "."
goto :goto_25
:cond_4c
const-string v3, "gtm.lifetime"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_8
new-instance v3, Lcom/google/android/gms/tagmanager/DataLayer$a;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-direct {v3, v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_8
:cond_61
return-void
.end method
.method static bh(Ljava/lang/String;)Ljava/lang/Long;
.registers 11
const-wide/16 v3, 0x0
const/4 v0, 0x0
const-wide/16 v8, 0x3e8
const-wide/16 v6, 0x3c
sget-object v1, Lcom/google/android/gms/tagmanager/DataLayer;->Us:Ljava/util/regex/Pattern;
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
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->u(Ljava/lang/String;)V
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
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->u(Ljava/lang/String;)V
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
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
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
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
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
.method private iP()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Ux:Lcom/google/android/gms/tagmanager/DataLayer$c;
new-instance v1, Lcom/google/android/gms/tagmanager/DataLayer$2;
invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/DataLayer$2;-><init>(Lcom/google/android/gms/tagmanager/DataLayer;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer$c;->a(Lcom/google/android/gms/tagmanager/DataLayer$c$a;)V
return-void
.end method
.method private iQ()V
.registers 3
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uw:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
if-eqz v0, :cond_22
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->C(Ljava/util/Map;)V
add-int/lit8 v0, v1, 0x1
const/16 v1, 0x1f4
if-le v0, v1, :cond_23
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uw:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Seems like an infinite loop of pushing to the data layer"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
return-void
:cond_23
move v1, v0
goto :goto_2
.end method
.method public static varargs listOf([Ljava/lang/Object;)Ljava/util/List;
.registers 4
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_6
array-length v2, p0
if-ge v0, v2, :cond_11
aget-object v2, p0, v0
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_11
return-object v1
.end method
.method public static varargs mapOf([Ljava/lang/Object;)Ljava/util/Map;
.registers 5
array-length v0, p0
rem-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "expected even number of key-value pairs"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
const/4 v0, 0x0
move v1, v0
:goto_14
array-length v0, p0
if-ge v1, v0, :cond_43
aget-object v0, p0, v1
instance-of v0, v0, Ljava/lang/String;
if-nez v0, :cond_34
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "key is not a string: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget-object v1, p0, v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_34
aget-object v0, p0, v1
check-cast v0, Ljava/lang/String;
add-int/lit8 v3, v1, 0x1
aget-object v3, p0, v3
invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v1, 0x2
move v1, v0
goto :goto_14
:cond_43
return-object v2
.end method
.method private x(Ljava/util/Map;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uv:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uw:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uv:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_16
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/DataLayer;->iQ()V
:cond_16
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->y(Ljava/util/Map;)V
:try_end_19
.catchall {:try_start_5 .. :try_end_19} :catchall_1f
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uv:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
return-void
:catchall_1f
move-exception v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uv:Ljava/util/concurrent/locks/ReentrantLock;
invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v0
.end method
.method private y(Ljava/util/Map;)V
.registers 7
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->z(Ljava/util/Map;)Ljava/lang/Long;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->B(Ljava/util/Map;)Ljava/util/List;
move-result-object v1
const-string v2, "gtm.lifetime"
invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
iget-object v2, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Ux:Lcom/google/android/gms/tagmanager/DataLayer$c;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v3
invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/tagmanager/DataLayer$c;->a(Ljava/util/List;J)V
goto :goto_6
.end method
.method private z(Ljava/util/Map;)Ljava/lang/Long;
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->A(Ljava/util/Map;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->bh(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v0
goto :goto_7
.end method
.method  a(Lcom/google/android/gms/tagmanager/DataLayer$b;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Ut:Ljava/util/concurrent/ConcurrentHashMap;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method  a(Ljava/util/List;Ljava/util/List;)V
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
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/List;Ljava/util/List;)V
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
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/Map;Ljava/util/Map;)V
goto :goto_3a
:cond_5e
sget-object v1, Lcom/google/android/gms/tagmanager/DataLayer;->OBJECT_NOT_PRESENT:Ljava/lang/Object;
if-eq v0, v1, :cond_3a
invoke-interface {p2, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
goto :goto_3a
:cond_66
return-void
.end method
.method  a(Ljava/util/Map;Ljava/util/Map;)V
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
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/List;Ljava/util/List;)V
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
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/Map;Ljava/util/Map;)V
goto :goto_8
:cond_58
invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_8
:cond_5c
return-void
.end method
.method  b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
.registers 9
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;
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
invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v2
.end method
.method  bg(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Ux:Lcom/google/android/gms/tagmanager/DataLayer$c;
invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer$c;->bi(Ljava/lang/String;)V
return-void
.end method
.method public get(Ljava/lang/String;)Ljava/lang/Object;
.registers 11
const/4 v1, 0x0
iget-object v4, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uu:Ljava/util/Map;
monitor-enter v4
:try_start_4
iget-object v2, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uu:Ljava/util/Map;
const-string v0, "\\."
invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
array-length v6, v5
const/4 v0, 0x0
move v8, v0
move-object v0, v2
move v2, v8
:goto_11
if-ge v2, v6, :cond_2c
aget-object v3, v5, v2
instance-of v7, v0, Ljava/util/Map;
if-nez v7, :cond_1c
monitor-exit v4
move-object v0, v1
:goto_1b
return-object v0
:cond_1c
check-cast v0, Ljava/util/Map;
invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
if-nez v3, :cond_27
monitor-exit v4
:try_end_25
.catchall {:try_start_4 .. :try_end_25} :catchall_2e
move-object v0, v1
goto :goto_1b
:cond_27
add-int/lit8 v0, v2, 0x1
move v2, v0
move-object v0, v3
goto :goto_11
:cond_2c
monitor-exit v4
goto :goto_1b
:catchall_2e
move-exception v0
monitor-exit v4
throw v0
.end method
.method public push(Ljava/lang/String;Ljava/lang/Object;)V
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/DataLayer;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V
return-void
.end method
.method public push(Ljava/util/Map;)V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->Uy:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
:try_end_5
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_9
:goto_5
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->x(Ljava/util/Map;)V
return-void
:catch_9
move-exception v0
const-string v0, "DataLayer.push: unexpected InterruptedException"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
goto :goto_5
.end method
.method public pushEvent(Ljava/lang/String;Ljava/util/Map;)V
.registers 5
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
const-string v1, "event"
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V
return-void
.end method