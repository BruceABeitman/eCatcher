.class final Lcom/spotify/mobile/android/service/flow/login/l$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/bi;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/l;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/l;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/l$1;->b:Lcom/spotify/mobile/android/service/flow/login/l;
iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/l$1;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l$1;->b:Lcom/spotify/mobile/android/service/flow/login/l;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l$1;->b:Lcom/spotify/mobile/android/service/flow/login/l;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/l$1;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/l;->b(Lcom/spotify/mobile/android/service/flow/login/l;Ljava/lang/String;)V
:cond_f
return-void
.end method
.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 7
const/4 v3, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l$1;->b:Lcom/spotify/mobile/android/service/flow/login/l;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_3e
const-string v0, "Http api/user/create failed: %s"
new-array v1, v3, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
const v0, 0x7f0f03bd
:try_start_16
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "error"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "email_in_use"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_26
.catch Lorg/json/JSONException; {:try_start_16 .. :try_end_26} :catch_3f
move-result v1
if-eqz v1, :cond_2c
const v0, 0x7f0f03bb
:goto_2c
:cond_2c
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/l$1;->b:Lcom/spotify/mobile/android/service/flow/login/l;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/l$1;->b:Lcom/spotify/mobile/android/service/flow/login/l;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->b(Lcom/spotify/mobile/android/service/flow/login/l;)V
:cond_3e
return-void
:catch_3f
move-exception v1
goto :goto_2c
.end method