.class public Lcom/igexin/push/core/a/h;
.super Lcom/igexin/push/core/a/a;
.field private static final a:Ljava/lang/String;
.field private static b:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/a/h;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;
sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;
const-string/jumbo v1, "redirect_server"
new-instance v2, Lcom/igexin/push/core/a/n;
invoke-direct {v2}, Lcom/igexin/push/core/a/n;-><init>()V
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;
const-string/jumbo v1, "response_deviceid"
new-instance v2, Lcom/igexin/push/core/a/q;
invoke-direct {v2}, Lcom/igexin/push/core/a/q;-><init>()V
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;
const-string/jumbo v1, "pushmessage"
new-instance v2, Lcom/igexin/push/core/a/l;
invoke-direct {v2}, Lcom/igexin/push/core/a/l;-><init>()V
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;
const-string/jumbo v1, "response_ca_list"
new-instance v2, Lcom/igexin/push/core/a/p;
invoke-direct {v2}, Lcom/igexin/push/core/a/p;-><init>()V
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;
const-string/jumbo v1, "bindappid_result"
new-instance v2, Lcom/igexin/push/core/a/c;
invoke-direct {v2}, Lcom/igexin/push/core/a/c;-><init>()V
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;
const-string/jumbo v1, "received"
new-instance v2, Lcom/igexin/push/core/a/m;
invoke-direct {v2}, Lcom/igexin/push/core/a/m;-><init>()V
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;
const-string/jumbo v1, "sendmessage_feedback"
new-instance v2, Lcom/igexin/push/core/a/r;
invoke-direct {v2}, Lcom/igexin/push/core/a/r;-><init>()V
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;
const-string/jumbo v1, "block_client"
new-instance v2, Lcom/igexin/push/core/a/d;
invoke-direct {v2}, Lcom/igexin/push/core/a/d;-><init>()V
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public a(Lcom/igexin/a/a/d/d;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public a(Ljava/lang/Object;)Z
.registers 5
instance-of v0, p1, Lcom/igexin/push/c/c/n;
if-eqz v0, :cond_53
move-object v0, p1
check-cast v0, Lcom/igexin/push/c/c/n;
invoke-virtual {v0}, Lcom/igexin/push/c/c/n;->b()Z
move-result v1
if-eqz v1, :cond_53
iget-object v1, v0, Lcom/igexin/push/c/c/n;->e:Ljava/lang/Object;
if-eqz v1, :cond_53
:try_start_11
new-instance v1, Lorg/json/JSONObject;
iget-object v0, v0, Lcom/igexin/push/c/c/n;->e:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, "id"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_31
const-string/jumbo v0, "id"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;)V
:cond_31
if-eqz v1, :cond_53
const-string/jumbo v0, "action"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_53
const-string/jumbo v0, "action"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/igexin/push/core/a/h;->b:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/core/a/b;
if-eqz v0, :cond_53
invoke-virtual {v0, p1, v1}, Lcom/igexin/push/core/a/b;->a(Ljava/lang/Object;Lorg/json/JSONObject;)Z
:try_end_50
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_50} :catch_52
move-result v0
:goto_51
return v0
:catch_52
move-exception v0
:cond_53
const/4 v0, 0x0
goto :goto_51
.end method