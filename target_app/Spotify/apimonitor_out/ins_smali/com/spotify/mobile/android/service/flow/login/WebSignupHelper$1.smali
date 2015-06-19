.class final Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/bh;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$1;->a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 5
check-cast p1, Lorg/json/JSONObject;
:try_start_2
const-string v0, "status"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_2b
const-class v0, Lcom/spotify/mobile/android/service/flow/logic/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->i()V
new-instance v0, Lcom/spotify/mobile/android/service/v;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/service/v;-><init>(Lorg/json/JSONObject;)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$1;->a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;
invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->a(Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;)Lcom/spotify/mobile/android/service/flow/login/ac;
move-result-object v1
const-string v2, "username"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, v0}, Lcom/spotify/mobile/android/service/flow/login/ac;->a(Ljava/lang/String;Lcom/spotify/mobile/android/service/v;)V
:goto_2a
return-void
:cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$1;->a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->a(Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;Lorg/json/JSONObject;)V
:try_end_30
.catch Lorg/json/JSONException; {:try_start_2 .. :try_end_30} :catch_31
goto :goto_2a
:catch_31
move-exception v0
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const-string v2, "json"
invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$1;->a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->a(Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;)Lcom/spotify/mobile/android/service/flow/login/ac;
move-result-object v0
const/4 v2, 0x5
invoke-interface {v0, v2, v1}, Lcom/spotify/mobile/android/service/flow/login/ac;->a(ILjava/util/Map;)V
goto :goto_2a
.end method
.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 6
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v1, "unknown"
invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$1;->a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;
invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->a(Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;)Lcom/spotify/mobile/android/service/flow/login/ac;
move-result-object v1
const/4 v2, 0x5
invoke-interface {v1, v2, v0}, Lcom/spotify/mobile/android/service/flow/login/ac;->a(ILjava/util/Map;)V
return-void
.end method