.class  Lcom/tencent/open/TaskGuide$c;
.super Lcom/tencent/open/TaskGuide$g;
.source "ProGuard"
.field final synthetic a:Lcom/tencent/open/TaskGuide;
.method private constructor <init>(Lcom/tencent/open/TaskGuide;)V
.registers 3
iput-object p1, p0, Lcom/tencent/open/TaskGuide$c;->a:Lcom/tencent/open/TaskGuide;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/tencent/open/TaskGuide$g;-><init>(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$4;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$4;)V
.registers 3
invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide$c;-><init>(Lcom/tencent/open/TaskGuide;)V
return-void
.end method
.method protected a(Ljava/lang/Exception;)V
.registers 7
if-eqz p1, :cond_5
invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
:cond_5
if-nez p1, :cond_30
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_c
const-string/jumbo v0, "result"
const-string/jumbo v2, "\u6682\u65e0\u4efb\u52a1"
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_15
.catch Lorg/json/JSONException; {:try_start_c .. :try_end_15} :catch_2b
:goto_15
iget-object v0, p0, Lcom/tencent/open/TaskGuide$c;->a:Lcom/tencent/open/TaskGuide;
iget-object v0, v0, Lcom/tencent/open/TaskGuide;->c:Lcom/tencent/tauth/IUiListener;
invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
:goto_1c
iget-object v0, p0, Lcom/tencent/open/TaskGuide$c;->a:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->x(Lcom/tencent/open/TaskGuide;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/tencent/open/TaskGuide$c$1;
invoke-direct {v1, p0}, Lcom/tencent/open/TaskGuide$c$1;-><init>(Lcom/tencent/open/TaskGuide$c;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
:catch_2b
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_15
:cond_30
iget-object v0, p0, Lcom/tencent/open/TaskGuide$c;->a:Lcom/tencent/open/TaskGuide;
iget-object v0, v0, Lcom/tencent/open/TaskGuide;->c:Lcom/tencent/tauth/IUiListener;
new-instance v1, Lcom/tencent/tauth/UiError;
const/16 v2, 0x64
const-string/jumbo v3, "error "
const-string/jumbo v4, "\u83b7\u53d6\u4efb\u52a1\u5931\u8d25"
invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
goto :goto_1c
.end method
.method public onComplete(Lorg/json/JSONObject;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/tencent/open/TaskGuide$c;->a:Lcom/tencent/open/TaskGuide;
invoke-static {p1}, Lcom/tencent/open/TaskGuide$i;->a(Lorg/json/JSONObject;)Lcom/tencent/open/TaskGuide$i;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->a(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$i;)Lcom/tencent/open/TaskGuide$i;
:try_end_9
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_40
:goto_9
iget-object v0, p0, Lcom/tencent/open/TaskGuide$c;->a:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->y(Lcom/tencent/open/TaskGuide;)Lcom/tencent/open/TaskGuide$i;
move-result-object v0
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/tencent/open/TaskGuide$c;->a:Lcom/tencent/open/TaskGuide;
invoke-static {v0}, Lcom/tencent/open/TaskGuide;->y(Lcom/tencent/open/TaskGuide;)Lcom/tencent/open/TaskGuide$i;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/open/TaskGuide$i;->a()Z
move-result v0
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/tencent/open/TaskGuide$c;->a:Lcom/tencent/open/TaskGuide;
invoke-virtual {v0}, Lcom/tencent/open/TaskGuide;->showWindow()V
iget-object v0, p0, Lcom/tencent/open/TaskGuide$c;->a:Lcom/tencent/open/TaskGuide;
const/4 v1, 0x2
sget-object v2, Lcom/tencent/open/TaskGuide$d;->d:Lcom/tencent/open/TaskGuide$d;
invoke-static {v0, v1, v2}, Lcom/tencent/open/TaskGuide;->a(Lcom/tencent/open/TaskGuide;ILcom/tencent/open/TaskGuide$d;)V
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_2f
const-string/jumbo v0, "result"
const-string/jumbo v2, "\u83b7\u53d6\u6210\u529f"
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_38
:try_end_38
.catch Lorg/json/JSONException; {:try_start_2f .. :try_end_38} :catch_45
iget-object v0, p0, Lcom/tencent/open/TaskGuide$c;->a:Lcom/tencent/open/TaskGuide;
iget-object v0, v0, Lcom/tencent/open/TaskGuide;->c:Lcom/tencent/tauth/IUiListener;
invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
:goto_3f
return-void
:catch_40
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_9
:catch_45
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_38
:cond_4a
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/tencent/open/TaskGuide$c;->a(Ljava/lang/Exception;)V
goto :goto_3f
.end method