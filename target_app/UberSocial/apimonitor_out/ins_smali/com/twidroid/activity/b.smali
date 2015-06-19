.class  Lcom/twidroid/activity/b;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/AskToFollow;
.method private constructor <init>(Lcom/twidroid/activity/AskToFollow;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/b;->a:Lcom/twidroid/activity/AskToFollow;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/activity/AskToFollow;Lcom/twidroid/activity/AskToFollow$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/activity/b;-><init>(Lcom/twidroid/activity/AskToFollow;)V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/b;->a([Ljava/lang/Void;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
.registers 8
const/4 v5, 0x0
:try_start_1
iget-object v0, p0, Lcom/twidroid/activity/b;->a:Lcom/twidroid/activity/AskToFollow;
invoke-static {v0}, Lcom/twidroid/activity/AskToFollow;->a(Lcom/twidroid/activity/AskToFollow;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x3
if-le v0, v1, :cond_7b
iget-object v0, p0, Lcom/twidroid/activity/b;->a:Lcom/twidroid/activity/AskToFollow;
iget-object v0, v0, Lcom/twidroid/activity/AskToFollow;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->f()Lcom/twidroid/model/twitter/c;
new-instance v0, Lcom/twidroid/net/a/d;
iget-object v1, p0, Lcom/twidroid/activity/b;->a:Lcom/twidroid/activity/AskToFollow;
iget-object v1, v1, Lcom/twidroid/activity/AskToFollow;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/b;->a:Lcom/twidroid/activity/AskToFollow;
iget-object v2, v2, Lcom/twidroid/activity/AskToFollow;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/d/v;->s()Landroid/content/SharedPreferences;
move-result-object v2
new-instance v3, Lcom/twidroid/net/oauth/a;
iget-object v4, p0, Lcom/twidroid/activity/b;->a:Lcom/twidroid/activity/AskToFollow;
invoke-virtual {v4}, Lcom/twidroid/activity/AskToFollow;->getApplicationContext()Landroid/content/Context;
move-result-object v4
invoke-direct {v3, v4}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/net/a/d;-><init>(Lcom/twidroid/model/twitter/c;Landroid/content/SharedPreferences;Lcom/ubermedia/net/b/c;)V
const-string v1, "follow-ubersocial"
const-string v2, "email-provided"
invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/activity/b;->a:Lcom/twidroid/activity/AskToFollow;
invoke-static {v1}, Lcom/twidroid/activity/AskToFollow;->a(Lcom/twidroid/activity/AskToFollow;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/b;->a:Lcom/twidroid/activity/AskToFollow;
iget-object v2, v2, Lcom/twidroid/activity/AskToFollow;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->getBaseContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/a/d;->a(Ljava/lang/String;Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_7c
const-string v0, "LoginDialog"
const-string v1, "Email saved successfully"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_7b
:goto_7b
return-object v5
:cond_7c
const-string v0, "LoginDialog"
const-string v1, "ERROR while  saving email address"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_83
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_83} :catch_84
goto :goto_7b
:catch_84
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v0, "LoginDialog"
const-string v1, "GeneralException"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7b
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/b;->a(Ljava/lang/String;)V
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 2
return-void
.end method