.class public Lcom/tencent/stat/common/a;
.super Ljava/lang/Object;
.field static a:Lcom/tencent/stat/common/c;
.field private static d:Lcom/tencent/stat/common/StatLogger;
.field private static e:Lorg/json/JSONObject;
.field  b:Ljava/lang/Integer;
.field  c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
sput-object v0, Lcom/tencent/stat/common/a;->d:Lcom/tencent/stat/common/StatLogger;
const/4 v0, 0x0
sput-object v0, Lcom/tencent/stat/common/a;->e:Lorg/json/JSONObject;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/tencent/stat/common/a;->b:Ljava/lang/Integer;
iput-object v0, p0, Lcom/tencent/stat/common/a;->c:Ljava/lang/String;
:try_start_8
invoke-static {p1}, Lcom/tencent/stat/common/a;->a(Landroid/content/Context;)Lcom/tencent/stat/common/c;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/tencent/stat/common/k;->q(Landroid/content/Context;)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/tencent/stat/common/a;->b:Ljava/lang/Integer;
invoke-static {p1}, Lcom/tencent/stat/common/k;->p(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/stat/common/a;->c:Ljava/lang/String;
:goto_1b
:try_end_1b
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1b} :catch_1c
return-void
:catch_1c
move-exception v0
sget-object v1, Lcom/tencent/stat/common/a;->d:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_1b
.end method
.method static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/stat/common/c;
.registers 5
const-class v1, Lcom/tencent/stat/common/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/tencent/stat/common/a;->a:Lcom/tencent/stat/common/c;
if-nez v0, :cond_13
new-instance v0, Lcom/tencent/stat/common/c;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const/4 v3, 0x0
invoke-direct {v0, v2, v3}, Lcom/tencent/stat/common/c;-><init>(Landroid/content/Context;Lcom/tencent/stat/common/b;)V
sput-object v0, Lcom/tencent/stat/common/a;->a:Lcom/tencent/stat/common/c;
:cond_13
sget-object v0, Lcom/tencent/stat/common/a;->a:Lcom/tencent/stat/common/c;
:try_end_15
.catchall {:try_start_3 .. :try_end_15} :catchall_17
monitor-exit v1
return-object v0
:catchall_17
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static a(Landroid/content/Context;Ljava/util/Map;)V
.registers 6
if-nez p1, :cond_3
:cond_2
return-void
:cond_3
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
sget-object v1, Lcom/tencent/stat/common/a;->e:Lorg/json/JSONObject;
if-nez v1, :cond_13
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
sput-object v1, Lcom/tencent/stat/common/a;->e:Lorg/json/JSONObject;
:cond_13
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
sget-object v3, Lcom/tencent/stat/common/a;->e:Lorg/json/JSONObject;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_1b
.end method
.method public a(Lorg/json/JSONObject;)V
.registers 5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_5
sget-object v1, Lcom/tencent/stat/common/a;->a:Lcom/tencent/stat/common/c;
if-eqz v1, :cond_e
sget-object v1, Lcom/tencent/stat/common/a;->a:Lcom/tencent/stat/common/c;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/c;->a(Lorg/json/JSONObject;)V
:cond_e
const-string/jumbo v1, "cn"
iget-object v2, p0, Lcom/tencent/stat/common/a;->c:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/tencent/stat/common/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/tencent/stat/common/a;->b:Ljava/lang/Integer;
if-eqz v1, :cond_22
const-string/jumbo v1, "tn"
iget-object v2, p0, Lcom/tencent/stat/common/a;->b:Ljava/lang/Integer;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_22
const-string/jumbo v1, "ev"
invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v0, Lcom/tencent/stat/common/a;->e:Lorg/json/JSONObject;
if-eqz v0, :cond_3c
sget-object v0, Lcom/tencent/stat/common/a;->e:Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
move-result v0
if-lez v0, :cond_3c
const-string/jumbo v0, "eva"
sget-object v1, Lcom/tencent/stat/common/a;->e:Lorg/json/JSONObject;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_3c
.catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3c} :catch_3d
:goto_3c
:cond_3c
return-void
:catch_3d
move-exception v0
sget-object v1, Lcom/tencent/stat/common/a;->d:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_3c
.end method