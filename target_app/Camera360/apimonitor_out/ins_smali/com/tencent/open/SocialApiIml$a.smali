.class public Lcom/tencent/open/SocialApiIml$a;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Lcom/tencent/tauth/IUiListener;
.field  a:Lcom/tencent/open/SocialApiIml$b;
.field final synthetic b:Lcom/tencent/open/SocialApiIml;
.method public constructor <init>(Lcom/tencent/open/SocialApiIml;Lcom/tencent/open/SocialApiIml$b;)V
.registers 3
iput-object p1, p0, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/open/SocialApiIml;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
return-void
.end method
.method public onCancel()V
.registers 3
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/open/SocialApiIml;
invoke-static {v0}, Lcom/tencent/open/SocialApiIml;->a(Lcom/tencent/open/SocialApiIml;)V
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v0, v0, Lcom/tencent/open/SocialApiIml$b;->c:Landroid/os/Bundle;
const-string/jumbo v1, "image_date"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/tencent/open/c;->a(Ljava/lang/String;)V
return-void
.end method
.method public onComplete(Ljava/lang/Object;)V
.registers 8
const/4 v0, 0x0
if-eqz p1, :cond_c
check-cast p1, Lorg/json/JSONObject;
:try_start_5
const-string/jumbo v1, "check_result"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
:try_end_b
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_b} :catch_2f
move-result v0
:cond_c
:goto_c
iget-object v1, p0, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/open/SocialApiIml;
invoke-static {v1}, Lcom/tencent/open/SocialApiIml;->a(Lcom/tencent/open/SocialApiIml;)V
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/open/SocialApiIml;
iget-object v1, p0, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/open/SocialApiIml;
invoke-static {v1}, Lcom/tencent/open/SocialApiIml;->b(Lcom/tencent/open/SocialApiIml;)Landroid/app/Activity;
move-result-object v1
iget-object v2, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v2, v2, Lcom/tencent/open/SocialApiIml$b;->a:Landroid/content/Intent;
iget-object v3, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v3, v3, Lcom/tencent/open/SocialApiIml$b;->b:Ljava/lang/String;
iget-object v4, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v4, v4, Lcom/tencent/open/SocialApiIml$b;->c:Landroid/os/Bundle;
iget-object v5, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v5, v5, Lcom/tencent/open/SocialApiIml$b;->e:Lcom/tencent/tauth/IUiListener;
invoke-static/range {v0 .. v5}, Lcom/tencent/open/SocialApiIml;->a(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
:goto_2e
return-void
:catch_2f
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_c
:cond_34
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v0, v0, Lcom/tencent/open/SocialApiIml$b;->c:Landroid/os/Bundle;
const-string/jumbo v1, "image_date"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/tencent/open/c;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/open/SocialApiIml;
iget-object v1, p0, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/open/SocialApiIml;
invoke-static {v1}, Lcom/tencent/open/SocialApiIml;->b(Lcom/tencent/open/SocialApiIml;)Landroid/app/Activity;
move-result-object v1
iget-object v2, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v2, v2, Lcom/tencent/open/SocialApiIml$b;->b:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v3, v3, Lcom/tencent/open/SocialApiIml$b;->c:Landroid/os/Bundle;
iget-object v4, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v4, v4, Lcom/tencent/open/SocialApiIml$b;->d:Ljava/lang/String;
iget-object v5, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v5, v5, Lcom/tencent/open/SocialApiIml$b;->e:Lcom/tencent/tauth/IUiListener;
invoke-static/range {v0 .. v5}, Lcom/tencent/open/SocialApiIml;->a(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
goto :goto_2e
.end method
.method public onError(Lcom/tencent/tauth/UiError;)V
.registers 8
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/open/SocialApiIml;
invoke-static {v0}, Lcom/tencent/open/SocialApiIml;->a(Lcom/tencent/open/SocialApiIml;)V
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v0, v0, Lcom/tencent/open/SocialApiIml$b;->c:Landroid/os/Bundle;
const-string/jumbo v1, "image_date"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/tencent/open/c;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/open/SocialApiIml;
iget-object v1, p0, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/open/SocialApiIml;
invoke-static {v1}, Lcom/tencent/open/SocialApiIml;->b(Lcom/tencent/open/SocialApiIml;)Landroid/app/Activity;
move-result-object v1
iget-object v2, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v2, v2, Lcom/tencent/open/SocialApiIml$b;->b:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v3, v3, Lcom/tencent/open/SocialApiIml$b;->c:Landroid/os/Bundle;
iget-object v4, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v4, v4, Lcom/tencent/open/SocialApiIml$b;->d:Ljava/lang/String;
iget-object v5, p0, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml$b;
iget-object v5, v5, Lcom/tencent/open/SocialApiIml$b;->e:Lcom/tencent/tauth/IUiListener;
invoke-static/range {v0 .. v5}, Lcom/tencent/open/SocialApiIml;->a(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
return-void
.end method