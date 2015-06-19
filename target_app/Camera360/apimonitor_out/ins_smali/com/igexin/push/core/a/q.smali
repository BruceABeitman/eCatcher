.class public Lcom/igexin/push/core/a/q;
.super Lcom/igexin/push/core/a/b;
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/a/q;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/igexin/push/core/a/b;-><init>()V
return-void
.end method
.method public a(Ljava/lang/Object;Lorg/json/JSONObject;)Z
.registers 5
:try_start_0
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_51
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "response_deviceid"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_51
const-string/jumbo v0, "deviceid"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/igexin/push/core/g;->B:Ljava/lang/String;
invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/c/f;->b()V
sget-object v0, Lcom/igexin/push/core/g;->B:Ljava/lang/String;
if-eqz v0, :cond_38
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->g()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->i()V
:cond_38
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "deviceidRsp|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/igexin/push/core/g;->B:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
:try_end_51
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_51} :catch_53
:goto_51
:cond_51
const/4 v0, 0x1
return v0
:catch_53
move-exception v0
goto :goto_51
.end method