.class  Lcom/tencent/open/SocialApiIml$c;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Lcom/tencent/tauth/IUiListener;
.field final synthetic a:Lcom/tencent/open/SocialApiIml;
.field private b:Lcom/tencent/tauth/IUiListener;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Landroid/os/Bundle;
.method constructor <init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 6
iput-object p1, p0, Lcom/tencent/open/SocialApiIml$c;->a:Lcom/tencent/open/SocialApiIml;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/tencent/open/SocialApiIml$c;->b:Lcom/tencent/tauth/IUiListener;
iput-object p3, p0, Lcom/tencent/open/SocialApiIml$c;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/tencent/open/SocialApiIml$c;->d:Ljava/lang/String;
iput-object p5, p0, Lcom/tencent/open/SocialApiIml$c;->e:Landroid/os/Bundle;
return-void
.end method
.method public onCancel()V
.registers 2
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$c;->b:Lcom/tencent/tauth/IUiListener;
invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V
return-void
.end method
.method public onComplete(Ljava/lang/Object;)V
.registers 9
check-cast p1, Lorg/json/JSONObject;
const/4 v0, 0x0
:try_start_3
const-string/jumbo v1, "encry_token"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_9
.catch Lorg/json/JSONException; {:try_start_3 .. :try_end_9} :catch_41
move-result-object v0
move-object v6, v0
:goto_b
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$c;->e:Landroid/os/Bundle;
const-string/jumbo v1, "encrytoken"
invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$c;->a:Lcom/tencent/open/SocialApiIml;
iget-object v1, p0, Lcom/tencent/open/SocialApiIml$c;->a:Lcom/tencent/open/SocialApiIml;
invoke-static {v1}, Lcom/tencent/open/SocialApiIml;->b(Lcom/tencent/open/SocialApiIml;)Landroid/app/Activity;
move-result-object v1
iget-object v2, p0, Lcom/tencent/open/SocialApiIml$c;->c:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/open/SocialApiIml$c;->e:Landroid/os/Bundle;
iget-object v4, p0, Lcom/tencent/open/SocialApiIml$c;->d:Ljava/lang/String;
iget-object v5, p0, Lcom/tencent/open/SocialApiIml$c;->b:Lcom/tencent/tauth/IUiListener;
invoke-static/range {v0 .. v5}, Lcom/tencent/open/SocialApiIml;->a(Lcom/tencent/open/SocialApiIml;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_40
const-string/jumbo v0, "miles"
const-string/jumbo v1, "The token get from qq or qzone is empty. Write temp token to localstorage."
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$c;->a:Lcom/tencent/open/SocialApiIml;
iget-object v1, p0, Lcom/tencent/open/SocialApiIml$c;->a:Lcom/tencent/open/SocialApiIml;
invoke-static {v1}, Lcom/tencent/open/SocialApiIml;->c(Lcom/tencent/open/SocialApiIml;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/open/SocialApiIml;->writeEncryToken(Landroid/content/Context;)V
:cond_40
return-void
:catch_41
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
const-string/jumbo v2, "openSDK_LOG"
const-string/jumbo v3, "OpenApi, EncrytokenListener() onComplete error"
invoke-static {v2, v3, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v6, v0
goto :goto_b
.end method
.method public onError(Lcom/tencent/tauth/UiError;)V
.registers 5
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "OpenApi, EncryptTokenListener() onError"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$c;->b:Lcom/tencent/tauth/IUiListener;
invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
return-void
.end method