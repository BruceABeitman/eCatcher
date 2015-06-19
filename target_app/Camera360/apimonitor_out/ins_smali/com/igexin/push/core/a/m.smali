.class public Lcom/igexin/push/core/a/m;
.super Lcom/igexin/push/core/a/b;
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/a/m;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/igexin/push/core/a/b;-><init>()V
return-void
.end method
.method public a(Ljava/lang/Object;Lorg/json/JSONObject;)Z
.registers 6
:try_start_0
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_35
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "received"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_35
const-string/jumbo v0, "id"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_1f
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1f} :catch_37
move-result-object v0
:try_start_20
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
invoke-static {}, Lcom/igexin/push/core/c/c;->a()Lcom/igexin/push/core/c/c;
move-result-object v2
invoke-virtual {v2, v0, v1}, Lcom/igexin/push/core/c/c;->a(J)Z
move-result v0
if-eqz v0, :cond_35
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->g()V
:goto_35
:cond_35
:try_end_35
.catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_35} :catch_39
.catch Lorg/json/JSONException; {:try_start_20 .. :try_end_35} :catch_37
const/4 v0, 0x1
return v0
:catch_37
move-exception v0
goto :goto_35
:catch_39
move-exception v0
goto :goto_35
.end method