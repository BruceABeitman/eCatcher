.class public final Lcom/instagram/android/login/c/m;
.super Lcom/instagram/api/j/b;
.source "SendPasswordResetRequest.java"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
.registers 5
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/login/c/m;->a:Ljava/lang/String;
if-eqz v0, :cond_26
const-string v0, "user_id"
iget-object v1, p0, Lcom/instagram/android/login/c/m;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_b
const-string v0, "device_id"
invoke-virtual {p0}, Lcom/instagram/android/login/c/m;->l()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/v/a;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "guid"
invoke-virtual {p0}, Lcom/instagram/android/login/c/m;->l()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/v/a;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_26
const-string v0, "user_email"
iget-object v1, p0, Lcom/instagram/android/login/c/m;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/c/m;->a:Ljava/lang/String;
invoke-super {p0}, Lcom/instagram/api/j/b;->h()V
return-void
.end method
.method public final b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/c/m;->b:Ljava/lang/String;
invoke-super {p0}, Lcom/instagram/api/j/b;->h()V
return-void
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 2
const-string v0, "accounts/send_password_reset/"
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method