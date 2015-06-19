.class public Lcom/igexin/push/core/a/n;
.super Lcom/igexin/push/core/a/b;
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/a/n;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/igexin/push/core/a/b;-><init>()V
return-void
.end method
.method public a(Ljava/lang/Object;Lorg/json/JSONObject;)Z
.registers 15
:try_start_0
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_be
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "redirect_server"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_be
const-string/jumbo v0, "delay"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const-string/jumbo v0, "address_list"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "redirect|"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v4, "|"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_53
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v4
if-ge v0, v4, :cond_a1
invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v4
const/16 v5, 0x2c
invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I
move-result v5
if-lez v5, :cond_9e
const/4 v6, 0x0
invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v6
add-int/lit8 v5, v5, 0x1
invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
:try_end_73
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_73} :catch_c4
move-result-wide v7
if-eqz v4, :cond_9e
:try_start_76
invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v4
new-instance v9, Lcom/igexin/push/core/c/t;
invoke-direct {v9}, Lcom/igexin/push/core/c/t;-><init>()V
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v11, "socket://"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iput-object v6, v9, Lcom/igexin/push/core/c/t;->a:Ljava/lang/String;
const-wide/16 v10, 0x3e8
mul-long/2addr v4, v10
add-long/2addr v4, v7
iput-wide v4, v9, Lcom/igexin/push/core/c/t;->b:J
invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_9e
:try_end_9e
.catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_9e} :catch_c6
.catch Lorg/json/JSONException; {:try_start_76 .. :try_end_9e} :catch_c4
:cond_9e
add-int/lit8 v0, v0, 0x1
goto :goto_53
:try_start_a1
:cond_a1
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_a4
.catch Ljava/lang/NumberFormatException; {:try_start_a1 .. :try_end_a4} :catch_c0
.catch Lorg/json/JSONException; {:try_start_a1 .. :try_end_a4} :catch_c4
move-result-wide v0
const-wide/16 v3, 0x3e8
mul-long/2addr v0, v3
:goto_a8
const-wide/16 v3, 0x0
cmp-long v3, v0, v3
if-ltz v3, :cond_b0
:try_start_ae
sput-wide v0, Lcom/igexin/push/core/g;->F:J
:cond_b0
invoke-static {v2}, Lcom/igexin/push/core/c/q;->a(Ljava/util/List;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->g()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->e()V
:goto_be
:try_end_be
.catch Lorg/json/JSONException; {:try_start_ae .. :try_end_be} :catch_c4
:cond_be
const/4 v0, 0x1
return v0
:catch_c0
move-exception v0
const-wide/16 v0, 0x0
goto :goto_a8
:catch_c4
move-exception v0
goto :goto_be
:catch_c6
move-exception v4
goto :goto_9e
.end method