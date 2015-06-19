.class public Lcom/instagram/android/login/PasswordResetActivity;
.super Lcom/instagram/base/activity/a;
.source "PasswordResetActivity.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/base/activity/a;-><init>()V
return-void
.end method
.method private static b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/16 v0, 0x24
invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static c(Ljava/lang/String;)Z
.registers 4
const/4 v0, 0x0
const-string v1, "instagram://"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_12
const-string v1, "instagr.am://"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_12
:cond_11
:goto_11
return v0
:cond_12
invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_11
const-string v2, "android"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_34
const-string v2, "instagr.am"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_34
const-string v2, "reset_password"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_11
:cond_34
const/4 v0, 0x1
goto :goto_11
.end method
.method protected final h()V
.registers 8
const/4 v0, 0x1
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
invoke-static {}, Lcom/instagram/service/a/a;->d()Z
move-result v1
if-eqz v1, :cond_12
sget v1, Lcom/facebook/az;->must_log_out:I
invoke-static {v1}, Lcom/instagram/n/e;->a(I)V
invoke-virtual {p0}, Lcom/instagram/android/login/PasswordResetActivity;->finish()V
:cond_12
invoke-virtual {p0}, Lcom/instagram/android/login/PasswordResetActivity;->d()Landroid/support/v4/app/s;
move-result-object v1
sget v2, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v1, v2}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v1
if-nez v1, :cond_5f
new-instance v3, Lcom/instagram/android/login/fragment/v;
invoke-direct {v3}, Lcom/instagram/android/login/fragment/v;-><init>()V
new-instance v4, Landroid/os/Bundle;
invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/login/PasswordResetActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
:try_start_31
invoke-static {v1}, Lcom/instagram/android/login/PasswordResetActivity;->c(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_60
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
const-string v5, "argument_user_id"
const-string v6, "u"
invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/instagram/android/login/PasswordResetActivity;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v5, "argument_reset_token"
const-string v6, "t"
invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_55
:try_end_55
.catchall {:try_start_31 .. :try_end_55} :catchall_ab
.catch Ljava/lang/Exception; {:try_start_31 .. :try_end_55} :catch_8d
if-nez v0, :cond_b5
sget v0, Lcom/facebook/az;->uri_error:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
invoke-virtual {p0}, Lcom/instagram/android/login/PasswordResetActivity;->finish()V
:goto_5f
:cond_5f
return-void
:cond_60
:try_start_60
invoke-static {v1}, Lcom/instagram/api/h/b;->a(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_c9
const-string v2, "\\/\\?.*"
const-string v5, ""
invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const-string v5, "argument_user_id"
array-length v6, v2
add-int/lit8 v6, v6, -0x2
aget-object v6, v2, v6
invoke-static {v6}, Lcom/instagram/android/login/PasswordResetActivity;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v5, "argument_reset_token"
array-length v6, v2
add-int/lit8 v6, v6, -0x1
aget-object v2, v2, v6
invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:try_end_8c
.catchall {:try_start_60 .. :try_end_8c} :catchall_ab
.catch Ljava/lang/Exception; {:try_start_60 .. :try_end_8c} :catch_8d
goto :goto_55
:catch_8d
move-exception v0
:try_start_8e
const-string v2, "reset_password"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "malformed uri "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1, v0}, Lcom/instagram/common/g/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_a2
.catchall {:try_start_8e .. :try_end_a2} :catchall_ab
sget v0, Lcom/facebook/az;->uri_error:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
invoke-virtual {p0}, Lcom/instagram/android/login/PasswordResetActivity;->finish()V
goto :goto_5f
:catchall_ab
move-exception v0
sget v0, Lcom/facebook/az;->uri_error:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
invoke-virtual {p0}, Lcom/instagram/android/login/PasswordResetActivity;->finish()V
goto :goto_5f
:cond_b5
invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/android/login/PasswordResetActivity;->d()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;
move-result-object v0
sget v1, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;
invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I
goto :goto_5f
:cond_c9
move v0, v2
goto :goto_55
.end method