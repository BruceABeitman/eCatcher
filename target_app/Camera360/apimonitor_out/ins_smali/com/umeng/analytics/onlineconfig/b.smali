.class public Lcom/umeng/analytics/onlineconfig/b;
.super Lcom/umeng/common/net/t;
.source "OnlineConfigResponse.java"
.field public a:Lorg/json/JSONObject;
.field  b:Z
.field  c:I
.field  d:I
.field  e:Ljava/lang/String;
.field private final f:Ljava/lang/String;
.field private final g:Ljava/lang/String;
.field private final h:Ljava/lang/String;
.field private final i:Ljava/lang/String;
.field private final j:Ljava/lang/String;
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 4
const/4 v1, -0x1
invoke-direct {p0, p1}, Lcom/umeng/common/net/t;-><init>(Lorg/json/JSONObject;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/umeng/analytics/onlineconfig/b;->b:Z
iput v1, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I
iput v1, p0, Lcom/umeng/analytics/onlineconfig/b;->d:I
const-string/jumbo v0, "config_update"
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->f:Ljava/lang/String;
const-string/jumbo v0, "report_policy"
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->g:Ljava/lang/String;
const-string/jumbo v0, "online_params"
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->h:Ljava/lang/String;
const-string/jumbo v0, "last_config_time"
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->i:Ljava/lang/String;
const-string/jumbo v0, "report_interval"
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->j:Ljava/lang/String;
if-nez p1, :cond_2a
:goto_29
return-void
:cond_2a
invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/b;->a(Lorg/json/JSONObject;)V
invoke-direct {p0}, Lcom/umeng/analytics/onlineconfig/b;->a()V
goto :goto_29
.end method
.method private a()V
.registers 3
const/4 v1, 0x6
iget v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I
if-ltz v0, :cond_9
iget v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I
if-le v0, v1, :cond_c
:cond_9
const/4 v0, 0x1
iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I
:cond_c
iget v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I
if-ne v0, v1, :cond_18
iget v0, p0, Lcom/umeng/analytics/onlineconfig/b;->d:I
if-gtz v0, :cond_18
sget v0, Lcom/umeng/analytics/f;->h:I
iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->d:I
:cond_18
return-void
.end method
.method private a(Lorg/json/JSONObject;)V
.registers 5
:try_start_0
const-string/jumbo v0, "config_update"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1d
const-string/jumbo v0, "config_update"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "no"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
:goto_1d
:cond_1d
return-void
:cond_1e
const-string/jumbo v0, "report_policy"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_5c
const-string/jumbo v0, "report_policy"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I
const-string/jumbo v0, "report_interval"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v0
mul-int/lit16 v0, v0, 0x3e8
iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->d:I
const-string/jumbo v0, "last_config_time"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->e:Ljava/lang/String;
:goto_44
const-string/jumbo v0, "online_params"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/umeng/analytics/onlineconfig/b;->b:Z
:try_end_50
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51
goto :goto_1d
:catch_51
move-exception v0
const-string/jumbo v1, "MobclickAgent"
const-string/jumbo v2, "fail to parce online config response"
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_1d
:cond_5c
:try_start_5c
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, " online config fetch no report policy"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_65
.catch Ljava/lang/Exception; {:try_start_5c .. :try_end_65} :catch_51
goto :goto_44
.end method