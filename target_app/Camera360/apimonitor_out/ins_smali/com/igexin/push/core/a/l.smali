.class public Lcom/igexin/push/core/a/l;
.super Lcom/igexin/push/core/a/b;
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/a/l;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/igexin/push/core/a/b;-><init>()V
return-void
.end method
.method public a(Ljava/lang/Object;Lorg/json/JSONObject;)Z
.registers 7
const/4 v3, 0x1
:try_start_1
check-cast p1, Lcom/igexin/push/c/c/n;
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_55
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "pushmessage"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_55
const/4 v0, 0x0
iget-object v1, p1, Lcom/igexin/push/c/c/n;->f:Ljava/lang/Object;
if-eqz v1, :cond_5b
iget-object v1, p1, Lcom/igexin/push/c/c/n;->f:Ljava/lang/Object;
instance-of v1, v1, [B
if-eqz v1, :cond_5b
iget-object v0, p1, Lcom/igexin/push/c/c/n;->f:Ljava/lang/Object;
check-cast v0, [B
check-cast v0, [B
move-object v1, v0
:goto_2e
const-string/jumbo v0, "taskid"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
sget-object v0, Lcom/igexin/push/core/g;->al:Ljava/util/HashMap;
invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4d
sget-object v0, Lcom/igexin/push/core/g;->al:Ljava/util/HashMap;
invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
sget-object v0, Lcom/igexin/push/core/g;->al:Ljava/util/HashMap;
invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_4d
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
const/4 v2, 0x1
invoke-virtual {v0, p2, v1, v2}, Lcom/igexin/push/core/a/f;->a(Lorg/json/JSONObject;[BZ)Z
:try_end_55
.catch Lorg/json/JSONException; {:try_start_1 .. :try_end_55} :catch_56
:goto_55
:cond_55
return v3
:catch_56
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_55
:cond_5b
move-object v1, v0
goto :goto_2e
.end method