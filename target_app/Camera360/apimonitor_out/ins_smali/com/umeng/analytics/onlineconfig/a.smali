.class public Lcom/umeng/analytics/onlineconfig/a;
.super Ljava/lang/Object;
.source "OnlineConfigAgent.java"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;
.field private g:Lcom/umeng/analytics/onlineconfig/c;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "last_config_time"
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->a:Ljava/lang/String;
const-string/jumbo v0, "report_policy"
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->b:Ljava/lang/String;
const-string/jumbo v0, "online_config"
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->c:Ljava/lang/String;
iput-object v1, p0, Lcom/umeng/analytics/onlineconfig/a;->d:Ljava/lang/String;
iput-object v1, p0, Lcom/umeng/analytics/onlineconfig/a;->e:Ljava/lang/String;
iput-object v1, p0, Lcom/umeng/analytics/onlineconfig/a;->f:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;
iput-object v1, p0, Lcom/umeng/analytics/onlineconfig/a;->g:Lcom/umeng/analytics/onlineconfig/c;
return-void
.end method
.method static synthetic a(Lcom/umeng/analytics/onlineconfig/a;)Lcom/umeng/analytics/onlineconfig/c;
.registers 2
iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->g:Lcom/umeng/analytics/onlineconfig/c;
return-object v0
.end method
.method static synthetic a(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)Lorg/json/JSONObject;
.registers 3
invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->d(Landroid/content/Context;)Lorg/json/JSONObject;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
.registers 7
invoke-static {p1}, Lcom/umeng/analytics/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
iget-object v1, p2, Lcom/umeng/analytics/onlineconfig/b;->e:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_18
const-string/jumbo v1, "umeng_last_config_time"
iget-object v2, p2, Lcom/umeng/analytics/onlineconfig/b;->e:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_18
iget v1, p2, Lcom/umeng/analytics/onlineconfig/b;->c:I
const/4 v2, -0x1
if-eq v1, v2, :cond_2e
const-string/jumbo v1, "umeng_net_report_policy"
iget v2, p2, Lcom/umeng/analytics/onlineconfig/b;->c:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v1, "umeng_net_report_interval"
iget v2, p2, Lcom/umeng/analytics/onlineconfig/b;->d:I
int-to-long v2, v2
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
:cond_2e
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method static synthetic a(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/onlineconfig/a;->a(Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
return-void
.end method
.method static synthetic a(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V
.registers 2
invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lorg/json/JSONObject;)V
return-void
.end method
.method private a(Lorg/json/JSONObject;)V
.registers 3
iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->f:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->f:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;
invoke-interface {v0, p1}, Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;->onDataReceived(Lorg/json/JSONObject;)V
:cond_9
return-void
.end method
.method private b(Landroid/content/Context;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->d:Ljava/lang/String;
if-nez v0, :cond_8
invoke-static {p1}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
:cond_8
if-nez v0, :cond_13
new-instance v0, Ljava/lang/Exception;
const-string/jumbo v1, "none appkey exception"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
return-object v0
.end method
.method private b(Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
.registers 8
iget-object v0, p2, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;
if-eqz v0, :cond_c
iget-object v0, p2, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-static {p1}, Lcom/umeng/analytics/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
:try_start_15
iget-object v2, p2, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;
invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v3
:goto_1b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_46
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
const-string/jumbo v0, "MobclickAgent"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v3, "get online setting params: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3a} :catch_3b
goto :goto_c
:catch_3b
move-exception v0
const-string/jumbo v1, "MobclickAgent"
const-string/jumbo v2, "save online config params"
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_c
:cond_46
:try_start_46
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:try_end_53
.catch Ljava/lang/Exception; {:try_start_46 .. :try_end_53} :catch_3b
goto :goto_1b
.end method
.method static synthetic b(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/onlineconfig/a;->b(Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
return-void
.end method
.method private c(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->e:Ljava/lang/String;
if-nez v0, :cond_9
invoke-static {p1}, Lcom/umeng/common/b;->u(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->e:Ljava/lang/String;
goto :goto_8
.end method
.method private d(Landroid/content/Context;)Lorg/json/JSONObject;
.registers 6
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_5
const-string/jumbo v1, "type"
const-string/jumbo v2, "online_config"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "appkey"
invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "version_code"
invoke-static {p1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "package"
invoke-static {p1}, Lcom/umeng/common/b;->v(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "sdk_version"
const-string/jumbo v2, "4.6.1"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "idmd5"
invoke-static {p1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/umeng/common/util/g;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "channel"
invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-static {p1}, Lcom/umeng/analytics/i;->i(Landroid/content/Context;)[I
move-result-object v1
const-string/jumbo v2, "report_policy"
const/4 v3, 0x0
aget v1, v1, v3
invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "last_config_time"
invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->e(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_64
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_64} :catch_65
:goto_64
return-object v0
:catch_65
move-exception v0
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "exception in onlineConfigInternal"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_64
.end method
.method private e(Landroid/content/Context;)Ljava/lang/String;
.registers 5
invoke-static {p1}, Lcom/umeng/analytics/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string/jumbo v1, "umeng_last_config_time"
const-string/jumbo v2, ""
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->f:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;
return-void
.end method
.method public a(Landroid/content/Context;)V
.registers 4
if-nez p1, :cond_c
:try_start_2
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "unexpected null context in updateOnlineConfig"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_b
return-void
:cond_c
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/umeng/analytics/onlineconfig/a$b;
invoke-direct {v1, p0, p1}, Lcom/umeng/analytics/onlineconfig/a$b;-><init>(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
:try_end_19
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a
goto :goto_b
:catch_1a
move-exception v0
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "exception in updateOnlineConfig"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p2, p0, Lcom/umeng/analytics/onlineconfig/a;->d:Ljava/lang/String;
iput-object p3, p0, Lcom/umeng/analytics/onlineconfig/a;->e:Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->a(Landroid/content/Context;)V
return-void
.end method
.method public a(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V
.registers 2
iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a;->f:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;
return-void
.end method
.method public a(Lcom/umeng/analytics/onlineconfig/c;)V
.registers 2
iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a;->g:Lcom/umeng/analytics/onlineconfig/c;
return-void
.end method
.method public b()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->g:Lcom/umeng/analytics/onlineconfig/c;
return-void
.end method