.class final Lcom/umeng/analytics/MobclickAgentJSInterface$a;
.super Landroid/webkit/WebChromeClient;
.source "MobclickAgentJSInterface.java"
.field  a:Landroid/webkit/WebChromeClient;
.field final synthetic b:Lcom/umeng/analytics/MobclickAgentJSInterface;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.method public constructor <init>(Lcom/umeng/analytics/MobclickAgentJSInterface;Landroid/webkit/WebChromeClient;)V
.registers 4
iput-object p1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->b:Lcom/umeng/analytics/MobclickAgentJSInterface;
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
const-string/jumbo v0, "ekv"
iput-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->c:Ljava/lang/String;
const-string/jumbo v0, "event"
iput-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->d:Ljava/lang/String;
if-nez p2, :cond_1c
new-instance v0, Landroid/webkit/WebChromeClient;
invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V
iput-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
:goto_1b
return-void
:cond_1c
iput-object p2, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
goto :goto_1b
.end method
.method public onCloseWindow(Landroid/webkit/WebView;)V
.registers 3
iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V
return-void
.end method
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.registers 6
iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
move-result v0
return v0
.end method
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 6
iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
move-result v0
return v0
.end method
.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 6
iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
move-result v0
return v0
.end method
.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 6
iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
move-result v0
return v0
.end method
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.registers 14
const/4 v7, 0x1
const-string/jumbo v0, "ekv"
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_67
:try_start_a
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v0, "id"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
const-string/jumbo v0, "duration"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_45
const/4 v0, 0x0
move v4, v0
:goto_28
invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v5
:goto_2c
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_54
invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->a()Lcom/umeng/analytics/b;
move-result-object v0
iget-object v1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->b:Lcom/umeng/analytics/MobclickAgentJSInterface;
invoke-static {v1}, Lcom/umeng/analytics/MobclickAgentJSInterface;->a(Lcom/umeng/analytics/MobclickAgentJSInterface;)Landroid/content/Context;
move-result-object v1
int-to-long v4, v4
invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V
:try_end_40
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_40} :catch_62
:goto_40
invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V
move v0, v7
:goto_44
return v0
:try_start_45
:cond_45
const-string/jumbo v0, "duration"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
move v4, v0
goto :goto_28
:cond_54
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_61
.catch Ljava/lang/Exception; {:try_start_45 .. :try_end_61} :catch_62
goto :goto_2c
:catch_62
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_40
:cond_67
const-string/jumbo v0, "event"
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9c
:try_start_70
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->a()Lcom/umeng/analytics/b;
move-result-object v0
iget-object v1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->b:Lcom/umeng/analytics/MobclickAgentJSInterface;
invoke-static {v1}, Lcom/umeng/analytics/MobclickAgentJSInterface;->a(Lcom/umeng/analytics/MobclickAgentJSInterface;)Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "tag"
invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "label"
invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v5, "duration"
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v4
int-to-long v4, v4
const/4 v6, 0x1
invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
:try_end_99
.catch Ljava/lang/Exception; {:try_start_70 .. :try_end_99} :catch_9a
goto :goto_40
:catch_9a
move-exception v0
goto :goto_40
:cond_9c
iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
move-result v0
goto :goto_44
.end method
.method public onProgressChanged(Landroid/webkit/WebView;I)V
.registers 4
iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V
return-void
.end method
.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
return-void
.end method
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
return-void
.end method
.method public onRequestFocus(Landroid/webkit/WebView;)V
.registers 3
iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface$a;->a:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V
return-void
.end method