.class  Lcom/twidroid/c/r$2$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/widget/EditText;
.field final synthetic b:Lcom/twidroid/c/r$2;
.method constructor <init>(Lcom/twidroid/c/r$2;Landroid/widget/EditText;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/c/r$2$1;->b:Lcom/twidroid/c/r$2;
iput-object p2, p0, Lcom/twidroid/c/r$2$1;->a:Landroid/widget/EditText;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
new-instance v0, Lcom/twidroid/net/a/d;
iget-object v1, p0, Lcom/twidroid/c/r$2$1;->b:Lcom/twidroid/c/r$2;
iget-object v1, v1, Lcom/twidroid/c/r$2;->b:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/c/r$2$1;->b:Lcom/twidroid/c/r$2;
iget-object v2, v2, Lcom/twidroid/c/r$2;->b:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/d/v;->s()Landroid/content/SharedPreferences;
move-result-object v2
new-instance v3, Lcom/twidroid/net/oauth/a;
iget-object v4, p0, Lcom/twidroid/c/r$2$1;->b:Lcom/twidroid/c/r$2;
iget-object v4, v4, Lcom/twidroid/c/r$2;->c:Landroid/app/Activity;
invoke-direct {v3, v4}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/net/a/d;-><init>(Lcom/twidroid/model/twitter/c;Landroid/content/SharedPreferences;Lcom/ubermedia/net/b/c;)V
iget-object v1, p0, Lcom/twidroid/c/r$2$1;->a:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/c/r$2$1;->b:Lcom/twidroid/c/r$2;
iget-object v2, v2, Lcom/twidroid/c/r$2;->c:Landroid/app/Activity;
invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/a/d;->a(Ljava/lang/String;Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_4e
const-string v0, "StatusMessageDialog"
const-string v1, "Email saved successfully"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:goto_41
iget-object v0, p0, Lcom/twidroid/c/r$2$1;->b:Lcom/twidroid/c/r$2;
iget-object v0, v0, Lcom/twidroid/c/r$2;->c:Landroid/app/Activity;
new-instance v1, Lcom/twidroid/c/r$2$1$1;
invoke-direct {v1, p0}, Lcom/twidroid/c/r$2$1$1;-><init>(Lcom/twidroid/c/r$2$1;)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
:cond_4e
const-string v0, "StatusMessageDialog"
const-string v1, "ERROR while  saving email address"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_41
.end method