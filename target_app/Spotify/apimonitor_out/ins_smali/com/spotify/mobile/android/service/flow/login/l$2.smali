.class final Lcom/spotify/mobile/android/service/flow/login/l$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/bi;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/l;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/l;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/l$2;->a:Lcom/spotify/mobile/android/service/flow/login/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 5
check-cast p1, Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l$2;->a:Lcom/spotify/mobile/android/service/flow/login/l;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_20
:try_start_a
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "access_token"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "username"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/l$2;->a:Lcom/spotify/mobile/android/service/flow/login/l;
invoke-static {v2, v0, v1}, Lcom/spotify/mobile/android/service/flow/login/l;->a(Lcom/spotify/mobile/android/service/flow/login/l;Ljava/lang/String;Ljava/lang/String;)V
:cond_20
:try_end_20
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_20} :catch_21
:goto_20
return-void
:catch_21
move-exception v0
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l$2;->a:Lcom/spotify/mobile/android/service/flow/login/l;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0f03bc
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l$2;->a:Lcom/spotify/mobile/android/service/flow/login/l;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->b(Lcom/spotify/mobile/android/service/flow/login/l;)V
goto :goto_20
.end method
.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 7
const/4 v3, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l$2;->a:Lcom/spotify/mobile/android/service/flow/login/l;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_28
const-string v0, "Http api/token failed: %s"
new-array v1, v3, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l$2;->a:Lcom/spotify/mobile/android/service/flow/login/l;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0f03bc
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l$2;->a:Lcom/spotify/mobile/android/service/flow/login/l;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->b(Lcom/spotify/mobile/android/service/flow/login/l;)V
:cond_28
return-void
.end method