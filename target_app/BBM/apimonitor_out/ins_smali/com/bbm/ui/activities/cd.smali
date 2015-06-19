.class public final Lcom/bbm/ui/activities/cd;
.super Ljava/lang/Object;
.source "ChannelActivityHelper.java"
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
const-string v0, ""
:try_start_7
const-string v2, "channelUri"
invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "timeRange"
invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
:try_end_14
.catch Lorg/json/JSONException; {:try_start_7 .. :try_end_14} :catch_16
move-result-object v0
:goto_15
return-object v0
:catch_16
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_15
.end method
.method public static a(Ljava/lang/String;)V
.registers 6
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:try_start_5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
const-string v3, "timeRange"
const-string v4, "AllTime"
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "channelUri"
invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "id"
invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_23
:try_end_23
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_23} :catch_31
const-string v0, "channelStats"
invoke-static {v1, v0}, Lcom/bbm/d/z;->c(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/da;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
return-void
:catch_31
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_23
.end method