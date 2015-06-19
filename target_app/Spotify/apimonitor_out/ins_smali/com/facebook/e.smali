.class final Lcom/facebook/e;
.super Lcom/facebook/widget/j;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Z
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 5
const-string v0, "oauth"
invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public final a(Ljava/lang/String;)Lcom/facebook/e;
.registers 2
iput-object p1, p0, Lcom/facebook/e;->a:Ljava/lang/String;
return-object p0
.end method
.method public final a(Z)Lcom/facebook/e;
.registers 2
iput-boolean p1, p0, Lcom/facebook/e;->b:Z
return-object p0
.end method
.method public final a()Lcom/facebook/widget/i;
.registers 7
invoke-virtual {p0}, Lcom/facebook/e;->e()Landroid/os/Bundle;
move-result-object v3
const-string v0, "redirect_uri"
const-string v1, "fbconnect://success"
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "client_id"
invoke-virtual {p0}, Lcom/facebook/e;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "e2e"
iget-object v1, p0, Lcom/facebook/e;->a:Ljava/lang/String;
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "response_type"
const-string v1, "token"
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "return_scopes"
const-string v1, "true"
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/facebook/e;->b:Z
if-eqz v0, :cond_3a
invoke-static {}, Lcom/facebook/ah;->g()Z
move-result v0
if-nez v0, :cond_3a
const-string v0, "auth_type"
const-string v1, "rerequest"
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_3a
new-instance v0, Lcom/facebook/widget/i;
invoke-virtual {p0}, Lcom/facebook/e;->c()Landroid/content/Context;
move-result-object v1
const-string v2, "oauth"
invoke-virtual {p0}, Lcom/facebook/e;->d()I
move-result v4
invoke-virtual {p0}, Lcom/facebook/e;->f()Lcom/facebook/widget/m;
move-result-object v5
invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/i;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/m;)V
return-object v0
.end method