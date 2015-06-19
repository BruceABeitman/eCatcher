.class  Lcom/google/android/gms/tagmanager/dj;
.super Lcom/google/android/gms/tagmanager/dg;
.field private static final ID:Ljava/lang/String;
.field private static final XR:Ljava/lang/String;
.field private static final XS:Ljava/lang/String;
.field private static final XT:Ljava/lang/String;
.field private static final XU:Ljava/lang/String;
.field private static final XV:Ljava/lang/String;
.field private static final XW:Ljava/lang/String;
.field private static XX:Ljava/util/Map;
.field private static XY:Ljava/util/Map;
.field private final TN:Lcom/google/android/gms/tagmanager/DataLayer;
.field private final XZ:Ljava/util/Set;
.field private final Ya:Lcom/google/android/gms/tagmanager/df;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/a;->aQ:Lcom/google/android/gms/internal/a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/dj;->ID:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/b;->bg:Lcom/google/android/gms/internal/b;
invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/dj;->XR:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/b;->bp:Lcom/google/android/gms/internal/b;
invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/dj;->XS:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/b;->bo:Lcom/google/android/gms/internal/b;
invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/dj;->XT:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/b;->er:Lcom/google/android/gms/internal/b;
invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/dj;->XU:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/b;->et:Lcom/google/android/gms/internal/b;
invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/dj;->XV:Ljava/lang/String;
sget-object v0, Lcom/google/android/gms/internal/b;->ev:Lcom/google/android/gms/internal/b;
invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/dj;->XW:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;)V
.registers 4
new-instance v0, Lcom/google/android/gms/tagmanager/df;
invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/df;-><init>(Landroid/content/Context;)V
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/tagmanager/dj;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/df;)V
return-void
.end method
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/df;)V
.registers 6
sget-object v0, Lcom/google/android/gms/tagmanager/dj;->ID:Ljava/lang/String;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/dg;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
iput-object p2, p0, Lcom/google/android/gms/tagmanager/dj;->TN:Lcom/google/android/gms/tagmanager/DataLayer;
iput-object p3, p0, Lcom/google/android/gms/tagmanager/dj;->Ya:Lcom/google/android/gms/tagmanager/df;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->XZ:Ljava/util/Set;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->XZ:Ljava/util/Set;
const-string v1, ""
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->XZ:Ljava/util/Set;
const-string v1, "0"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->XZ:Ljava/util/Set;
const-string v1, "false"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private E(Ljava/util/Map;)Ljava/util/Map;
.registers 5
sget-object v0, Lcom/google/android/gms/tagmanager/dj;->XV:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
if-eqz v0, :cond_f
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dj;->c(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;
move-result-object v0
:goto_e
return-object v0
:cond_f
sget-object v0, Lcom/google/android/gms/tagmanager/dj;->XX:Ljava/util/Map;
if-nez v0, :cond_44
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v1, "transactionId"
const-string v2, "&ti"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "transactionAffiliation"
const-string v2, "&ta"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "transactionTax"
const-string v2, "&tt"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "transactionShipping"
const-string v2, "&ts"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "transactionTotal"
const-string v2, "&tr"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "transactionCurrency"
const-string v2, "&cu"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sput-object v0, Lcom/google/android/gms/tagmanager/dj;->XX:Ljava/util/Map;
:cond_44
sget-object v0, Lcom/google/android/gms/tagmanager/dj;->XX:Ljava/util/Map;
goto :goto_e
.end method
.method private F(Ljava/util/Map;)Ljava/util/Map;
.registers 5
sget-object v0, Lcom/google/android/gms/tagmanager/dj;->XW:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
if-eqz v0, :cond_f
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dj;->c(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;
move-result-object v0
:goto_e
return-object v0
:cond_f
sget-object v0, Lcom/google/android/gms/tagmanager/dj;->XY:Ljava/util/Map;
if-nez v0, :cond_44
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v1, "name"
const-string v2, "&in"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "sku"
const-string v2, "&ic"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "category"
const-string v2, "&iv"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "price"
const-string v2, "&ip"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "quantity"
const-string v2, "&iq"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "currency"
const-string v2, "&cu"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sput-object v0, Lcom/google/android/gms/tagmanager/dj;->XY:Ljava/util/Map;
:cond_44
sget-object v0, Lcom/google/android/gms/tagmanager/dj;->XY:Ljava/util/Map;
goto :goto_e
.end method
.method private a(Lcom/google/android/gms/analytics/Tracker;Ljava/util/Map;)V
.registers 12
const-string v1, "transactionId"
invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/dj;->bN(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_e
const-string v1, "Cannot find transactionId in data layer."
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
:goto_d
:cond_d
return-void
:cond_e
new-instance v5, Ljava/util/LinkedList;
invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V
:try_start_13
sget-object v1, Lcom/google/android/gms/tagmanager/dj;->XT:Ljava/lang/String;
invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/d$a;
invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/dj;->p(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;
move-result-object v3
const-string v1, "&t"
const-string v2, "transaction"
invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/dj;->E(Ljava/util/Map;)Ljava/util/Map;
move-result-object v1
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_32
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_59
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/dj;->bN(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v3, v2, v1}, Lcom/google/android/gms/tagmanager/dj;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
:try_end_51
.catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_51} :catch_52
goto :goto_32
:catch_52
move-exception v1
const-string v2, "Unable to send transaction"
invoke-static {v2, v1}, Lcom/google/android/gms/tagmanager/bh;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_d
:try_start_59
:cond_59
invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/dj;->kv()Ljava/util/List;
move-result-object v1
if-eqz v1, :cond_ca
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_66
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_ca
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Ljava/util/Map;
move-object v3, v0
const-string v1, "name"
invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_82
const-string v1, "Unable to send transaction item hit due to missing \'name\' field."
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
goto :goto_d
:cond_82
sget-object v1, Lcom/google/android/gms/tagmanager/dj;->XT:Ljava/lang/String;
invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/d$a;
invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/dj;->p(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;
move-result-object v7
const-string v1, "&t"
const-string v2, "item"
invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "&ti"
invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/dj;->F(Ljava/util/Map;)Ljava/util/Map;
move-result-object v1
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_a6
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_c6
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-direct {p0, v7, v2, v1}, Lcom/google/android/gms/tagmanager/dj;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_a6
:cond_c6
invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_66
:cond_ca
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_ce
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map;
invoke-virtual {p1, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
:try_end_dd
.catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_dd} :catch_52
goto :goto_ce
.end method
.method private b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
if-eqz p3, :cond_5
invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_5
return-void
.end method
.method private bN(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->TN:Lcom/google/android/gms/tagmanager/DataLayer;
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_9
.end method
.method private c(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;
.registers 6
invoke-static {p1}, Lcom/google/android/gms/tagmanager/di;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/util/Map;
if-nez v1, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
check-cast v0, Ljava/util/Map;
new-instance v1, Ljava/util/LinkedHashMap;
invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_19
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_19
:cond_39
move-object v0, v1
goto :goto_9
.end method
.method private d(Ljava/util/Map;Ljava/lang/String;)Z
.registers 4
invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->n(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_9
.end method
.method private kv()Ljava/util/List;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->TN:Lcom/google/android/gms/tagmanager/DataLayer;
const-string v1, "transactionProducts"
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_c
const/4 v1, 0x0
:goto_b
return-object v1
:cond_c
instance-of v0, v1, Ljava/util/List;
if-nez v0, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "transactionProducts should be of type List."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
move-object v0, v1
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_1f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_35
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
instance-of v2, v2, Ljava/util/Map;
if-nez v2, :cond_1f
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Each element of transactionProducts should be of type Map."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_35
check-cast v1, Ljava/util/List;
goto :goto_b
.end method
.method private p(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;
.registers 5
if-nez p1, :cond_8
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
:goto_7
return-object v0
:cond_8
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/dj;->c(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;
move-result-object v1
if-nez v1, :cond_14
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
goto :goto_7
:cond_14
const-string v0, "&aip"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_2f
iget-object v2, p0, Lcom/google/android/gms/tagmanager/dj;->XZ:Ljava/util/Set;
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2f
const-string v0, "&aip"
invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_2f
move-object v0, v1
goto :goto_7
.end method
.method public w(Ljava/util/Map;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/dj;->Ya:Lcom/google/android/gms/tagmanager/df;
const-string v1, "_GTM_DEFAULT_TRACKER_"
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/df;->bF(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
move-result-object v1
sget-object v0, Lcom/google/android/gms/tagmanager/dj;->XS:Ljava/lang/String;
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/dj;->d(Ljava/util/Map;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_20
sget-object v0, Lcom/google/android/gms/tagmanager/dj;->XT:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dj;->p(Lcom/google/android/gms/internal/d$a;)Ljava/util/Map;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
:goto_1f
return-void
:cond_20
sget-object v0, Lcom/google/android/gms/tagmanager/dj;->XU:Ljava/lang/String;
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/dj;->d(Ljava/util/Map;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2c
invoke-direct {p0, v1, p1}, Lcom/google/android/gms/tagmanager/dj;->a(Lcom/google/android/gms/analytics/Tracker;Ljava/util/Map;)V
goto :goto_1f
:cond_2c
const-string v0, "Ignoring unknown tag."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
goto :goto_1f
.end method