.class public final Lcom/instagram/android/c/a/x;
.super Lcom/instagram/api/j/g;
.source "UserProfileSaveRequest.java"
.field private final a:Lcom/instagram/android/h/b/c;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/android/h/b/c;Lcom/instagram/api/j/a;)V
.registers 6
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p1, p2, v0, p4}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput-object p3, p0, Lcom/instagram/android/c/a/x;->a:Lcom/instagram/android/h/b/c;
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 5
const-string v0, "gender"
iget-object v1, p0, Lcom/instagram/android/c/a/x;->a:Lcom/instagram/android/h/b/c;
invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->j()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "username"
iget-object v1, p0, Lcom/instagram/android/c/a/x;->a:Lcom/instagram/android/h/b/c;
invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "first_name"
iget-object v1, p0, Lcom/instagram/android/c/a/x;->a:Lcom/instagram/android/h/b/c;
invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "phone_number"
iget-object v1, p0, Lcom/instagram/android/c/a/x;->a:Lcom/instagram/android/h/b/c;
invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "email"
iget-object v1, p0, Lcom/instagram/android/c/a/x;->a:Lcom/instagram/android/h/b/c;
invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->i()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "external_url"
iget-object v1, p0, Lcom/instagram/android/c/a/x;->a:Lcom/instagram/android/h/b/c;
invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "biography"
iget-object v1, p0, Lcom/instagram/android/c/a/x;->a:Lcom/instagram/android/h/b/c;
invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "is_private"
iget-object v0, p0, Lcom/instagram/android/c/a/x;->a:Lcom/instagram/android/h/b/c;
invoke-virtual {v0}, Lcom/instagram/android/h/b/c;->e()Lcom/instagram/user/c/e;
move-result-object v0
sget-object v2, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;
if-ne v0, v2, :cond_63
const-string v0, "True"
:goto_5f
invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_63
const-string v0, "False"
goto :goto_5f
.end method
.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
.registers 6
const-string v0, "user"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2b
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/c/a/x;->a:Lcom/instagram/android/h/b/c;
invoke-virtual {v1}, Lcom/instagram/android/h/b/c;->k()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/service/a/a;->a(Lcom/instagram/user/c/a;)Z
move-result v0
if-eqz v0, :cond_22
invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/user/c/h;->a()V
:cond_22
invoke-static {p2}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {p3, v0}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V
const/4 v0, 0x1
:goto_2a
return v0
:cond_2b
const/4 v0, 0x0
goto :goto_2a
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 2
const-string v0, "accounts/edit_profile/"
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