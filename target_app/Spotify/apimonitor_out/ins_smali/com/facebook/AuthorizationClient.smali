.class  Lcom/facebook/AuthorizationClient;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field transient a:Landroid/content/Context;
.field transient b:Lcom/facebook/h;
.field transient c:Lcom/facebook/g;
.field  currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
.field transient d:Lcom/facebook/f;
.field transient e:Z
.field private transient f:Lcom/facebook/AppEventsLogger;
.field  handlersToTry:Ljava/util/List;
.field  loggingExtras:Ljava/util/Map;
.field  pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Ljava/lang/String;)Landroid/os/Bundle;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "1_timestamp_ms"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "0_auth_logger_id"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "3_method"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "2_result"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "5_error_message"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "4_error_code"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "6_extras"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method static synthetic a(Lcom/facebook/AuthorizationClient;)V
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->d:Lcom/facebook/f;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->d:Lcom/facebook/f;
invoke-interface {v0}, Lcom/facebook/f;->b()V
:cond_9
return-void
.end method
.method static synthetic a(Lcom/facebook/AuthorizationClient;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->a:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/facebook/AppEventsLogger;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;
move-result-object v0
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "fb_web_login_e2e"
invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "fb_web_login_switchback_time"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v2, "app_id"
invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "fb_dialogs_web_login_dialog_complete"
invoke-virtual {v0, v2, v1}, Lcom/facebook/AppEventsLogger;->b(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.registers 10
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
if-nez v0, :cond_34
const-string v0, ""
invoke-static {v0}, Lcom/facebook/AuthorizationClient;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "2_result"
sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->c:Lcom/facebook/AuthorizationClient$Result$Code;
invoke-virtual {v2}, Lcom/facebook/AuthorizationClient$Result$Code;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "5_error_message"
const-string v2, "Unexpected call to logAuthorizationMethodComplete with null pendingRequest."
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_1c
:cond_1c
const-string v1, "3_method"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "1_timestamp_ms"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->f()Lcom/facebook/AppEventsLogger;
move-result-object v1
const-string v2, "fb_mobile_login_method_complete"
invoke-virtual {v1, v2, v0}, Lcom/facebook/AppEventsLogger;->b(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
:cond_34
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->i()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/AuthorizationClient;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
if-eqz p2, :cond_45
const-string v1, "2_result"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_45
if-eqz p3, :cond_4c
const-string v1, "5_error_message"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_4c
if-eqz p4, :cond_53
const-string v1, "4_error_code"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_53
if-eqz p5, :cond_1c
invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z
move-result v1
if-nez v1, :cond_1c
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, p5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
const-string v2, "6_extras"
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1c
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
.registers 6
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;
if-nez v0, :cond_b
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;
:cond_b
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
if-eqz p3, :cond_34
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p2
:cond_34
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private static b(Ljava/lang/String;)Lcom/facebook/Request;
.registers 7
const/4 v1, 0x0
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v0, "fields"
const-string v2, "id"
invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "access_token"
invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/Request;
const-string v2, "me"
sget-object v4, Lcom/facebook/HttpMethod;->a:Lcom/facebook/HttpMethod;
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/p;)V
return-object v0
.end method
.method static synthetic b(Lcom/facebook/AuthorizationClient;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->g()V
return-void
.end method
.method static synthetic c()Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/facebook/AuthorizationClient;->h()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private d()Z
.registers 4
const/4 v0, 0x1
iget-boolean v1, p0, Lcom/facebook/AuthorizationClient;->e:Z
if-eqz v1, :cond_6
:goto_5
return v0
:cond_6
const-string v1, "android.permission.INTERNET"
iget-object v2, p0, Lcom/facebook/AuthorizationClient;->a:Landroid/content/Context;
invoke-virtual {v2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v1
if-eqz v1, :cond_2b
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->a:Landroid/content/Context;
sget v1, Lcom/facebook/a/g;->b:I
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/AuthorizationClient;->a:Landroid/content/Context;
sget v2, Lcom/facebook/a/g;->a:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-static {v2, v0, v1}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/AuthorizationClient;->b(Lcom/facebook/AuthorizationClient$Result;)V
const/4 v0, 0x0
goto :goto_5
:cond_2b
iput-boolean v0, p0, Lcom/facebook/AuthorizationClient;->e:Z
goto :goto_5
.end method
.method private e()Z
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->c()Z
move-result v1
if-eqz v1, :cond_17
invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->d()Z
move-result v1
if-nez v1, :cond_17
const-string v1, "no_internet_permission"
const-string v2, "1"
invoke-direct {p0, v1, v2, v0}, Lcom/facebook/AuthorizationClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V
:goto_16
return v0
:cond_17
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
move-result v0
if-eqz v0, :cond_49
iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->a()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v2}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->i()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/facebook/AuthorizationClient;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v2
const-string v3, "1_timestamp_ms"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v3, "3_method"
invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->f()Lcom/facebook/AppEventsLogger;
move-result-object v1
const-string v3, "fb_mobile_login_method_start"
invoke-virtual {v1, v3, v2}, Lcom/facebook/AppEventsLogger;->b(Ljava/lang/String;Landroid/os/Bundle;)V
goto :goto_16
:cond_49
const-string v1, "not_tried"
iget-object v2, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v2}, Lcom/facebook/AuthorizationClient$AuthHandler;->a()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-direct {p0, v1, v2, v3}, Lcom/facebook/AuthorizationClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V
goto :goto_16
.end method
.method private f()Lcom/facebook/AppEventsLogger;
.registers 3
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->f:Lcom/facebook/AppEventsLogger;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->f:Lcom/facebook/AppEventsLogger;
invoke-virtual {v0}, Lcom/facebook/AppEventsLogger;->c()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->e()Ljava/lang/String;
move-result-object v1
if-eq v0, v1, :cond_20
:cond_12
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->e()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;
move-result-object v0
iput-object v0, p0, Lcom/facebook/AuthorizationClient;->f:Lcom/facebook/AppEventsLogger;
:cond_20
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->f:Lcom/facebook/AppEventsLogger;
return-object v0
.end method
.method private g()V
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->d:Lcom/facebook/f;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->d:Lcom/facebook/f;
invoke-interface {v0}, Lcom/facebook/f;->a()V
:cond_9
return-void
.end method
.method private static h()Ljava/lang/String;
.registers 4
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_5
const-string v1, "init"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
:try_end_e
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e} :catch_13
:goto_e
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:catch_13
move-exception v1
goto :goto_e
.end method
.method final a()V
.registers 7
const/4 v3, 0x0
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->a()Ljava/lang/String;
move-result-object v1
const-string v2, "skipped"
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
iget-object v5, v0, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;
move-object v0, p0
move-object v4, v3
invoke-direct/range {v0 .. v5}, Lcom/facebook/AuthorizationClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
:cond_16
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_34
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/AuthorizationClient$AuthHandler;
iput-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->e()Z
move-result v0
if-eqz v0, :cond_16
:goto_33
:cond_33
return-void
:cond_34
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
const-string v1, "Login attempt failed."
invoke-static {v0, v1, v3}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/AuthorizationClient;->b(Lcom/facebook/AuthorizationClient$Result;)V
goto :goto_33
.end method
.method final a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
.registers 5
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
if-eqz v0, :cond_1b
const/4 v0, 0x1
:goto_9
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
if-nez v0, :cond_1d
:cond_13
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Attempted to continue authorization without a pending request."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
const/4 v0, 0x0
goto :goto_9
:cond_1d
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->b()Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->d()V
invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->e()Z
:goto_2d
:cond_2d
return-void
:cond_2e
if-eqz p1, :cond_2d
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
if-eqz v0, :cond_3c
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Attempted to authorize while a request is pending."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3c
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->h()Z
move-result v0
if-eqz v0, :cond_48
invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->d()Z
move-result v0
if-eqz v0, :cond_2d
:cond_48
iput-object p1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->c()Lcom/facebook/SessionLoginBehavior;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/SessionLoginBehavior;->a()Z
move-result v2
if-eqz v2, :cond_6f
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->f()Z
move-result v2
if-nez v2, :cond_67
new-instance v2, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;
invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_67
new-instance v2, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;
invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_6f
invoke-virtual {v1}, Lcom/facebook/SessionLoginBehavior;->b()Z
move-result v1
if-eqz v1, :cond_7d
new-instance v1, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;
invoke-direct {v1, p0}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_7d
iput-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;
invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->a()V
goto :goto_2d
.end method
.method final a(Lcom/facebook/AuthorizationClient$Result;)V
.registers 12
const/4 v1, 0x0
iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;
if-eqz v0, :cond_87
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->h()Z
move-result v0
if-eqz v0, :cond_87
iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;
if-nez v0, :cond_19
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Can\'t validate without a token"
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_19
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;
invoke-virtual {v0}, Lcom/facebook/AccessToken;->a()Ljava/lang/String;
move-result-object v0
new-instance v2, Lcom/facebook/AuthorizationClient$3;
invoke-direct {v2, p0, v6}, Lcom/facebook/AuthorizationClient$3;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V
iget-object v3, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v3}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->g()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/facebook/AuthorizationClient;->b(Ljava/lang/String;)Lcom/facebook/Request;
move-result-object v8
invoke-virtual {v8, v2}, Lcom/facebook/Request;->a(Lcom/facebook/p;)V
invoke-static {v0}, Lcom/facebook/AuthorizationClient;->b(Ljava/lang/String;)Lcom/facebook/Request;
move-result-object v9
invoke-virtual {v9, v2}, Lcom/facebook/Request;->a(Lcom/facebook/p;)V
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v0, "access_token"
invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/Request;
const-string v2, "me/permissions"
sget-object v4, Lcom/facebook/HttpMethod;->a:Lcom/facebook/HttpMethod;
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/p;)V
new-instance v1, Lcom/facebook/AuthorizationClient$4;
invoke-direct {v1, p0, v7}, Lcom/facebook/AuthorizationClient$4;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V
invoke-virtual {v0, v1}, Lcom/facebook/Request;->a(Lcom/facebook/p;)V
new-instance v1, Lcom/facebook/v;
const/4 v2, 0x3
new-array v2, v2, [Lcom/facebook/Request;
const/4 v3, 0x0
aput-object v8, v2, v3
const/4 v3, 0x1
aput-object v9, v2, v3
const/4 v3, 0x2
aput-object v0, v2, v3
invoke-direct {v1, v2}, Lcom/facebook/v;-><init>([Lcom/facebook/Request;)V
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->e()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/facebook/v;->a(Ljava/lang/String;)V
new-instance v0, Lcom/facebook/AuthorizationClient$5;
invoke-direct {v0, p0, v6, p1, v7}, Lcom/facebook/AuthorizationClient$5;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;Lcom/facebook/AuthorizationClient$Result;Ljava/util/ArrayList;)V
invoke-virtual {v1, v0}, Lcom/facebook/v;->a(Lcom/facebook/w;)V
invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->g()V
invoke-static {v1}, Lcom/facebook/Request;->b(Lcom/facebook/v;)Lcom/facebook/u;
:goto_86
return-void
:cond_87
invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->b(Lcom/facebook/AuthorizationClient$Result;)V
goto :goto_86
.end method
.method final a(IILandroid/content/Intent;)Z
.registers 5
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->d()I
move-result v0
if-ne p1, v0, :cond_f
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v0, p2, p3}, Lcom/facebook/AuthorizationClient$AuthHandler;->a(ILandroid/content/Intent;)Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method final b()Lcom/facebook/h;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->b:Lcom/facebook/h;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->b:Lcom/facebook/h;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
if-eqz v0, :cond_11
new-instance v0, Lcom/facebook/AuthorizationClient$2;
invoke-direct {v0, p0}, Lcom/facebook/AuthorizationClient$2;-><init>(Lcom/facebook/AuthorizationClient;)V
goto :goto_6
:cond_11
const/4 v0, 0x0
goto :goto_6
.end method
.method final b(Lcom/facebook/AuthorizationClient$Result;)V
.registers 9
const/4 v6, 0x0
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->a()Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
iget-object v5, v0, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;
iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$Result$Code;->a()Ljava/lang/String;
move-result-object v2
iget-object v3, p1, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;
iget-object v4, p1, Lcom/facebook/AuthorizationClient$Result;->errorCode:Ljava/lang/String;
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/facebook/AuthorizationClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
:cond_1d
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;
iput-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->loggingExtras:Ljava/util/Map;
:cond_25
iput-object v6, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;
iput-object v6, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;
iput-object v6, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
iput-object v6, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->c:Lcom/facebook/g;
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/facebook/AuthorizationClient;->c:Lcom/facebook/g;
invoke-interface {v0, p1}, Lcom/facebook/g;->a(Lcom/facebook/AuthorizationClient$Result;)V
:cond_36
return-void
.end method