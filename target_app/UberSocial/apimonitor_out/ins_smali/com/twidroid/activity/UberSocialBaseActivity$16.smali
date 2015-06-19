.class  Lcom/twidroid/activity/UberSocialBaseActivity$16;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/UberSocialBaseActivity;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$16;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 13
const/4 v9, 0x3
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
const/4 v5, -0x1
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_79
const-string v1, "com.ubersocial.networkerror"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4f
const-string v1, "NETWORK_ERROR_STRING"
invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_7a
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$16;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const-string v2, "NETWORK_ERROR_STRING"
invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/activity/UberSocialBaseActivity$16;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const v4, 0x7f0901a7
invoke-virtual {v3, v4}, Lcom/twidroid/activity/UberSocialBaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/twidroid/activity/UberSocialBaseActivity;->a(Ljava/lang/String;Landroid/view/View;)V
const-string v1, "show_error"
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Object;
const-string v3, "Message"
aput-object v3, v2, v6
const-string v3, "NETWORK_ERROR_STRING"
invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v7
const-string v3, "Type"
aput-object v3, v2, v8
const-string v3, "string"
aput-object v3, v2, v9
invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v2
invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:goto_4f
:cond_4f
const-string v1, "com.ubersocial.info"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_79
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$16;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$16;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const-string v2, "NETWORK_ERROR"
invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
invoke-static {v2}, Lcom/twidroid/net/b;->a(I)I
move-result v2
invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$16;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const v3, 0x7f0901a8
invoke-virtual {v2, v3}, Lcom/twidroid/activity/UberSocialBaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->a(Ljava/lang/String;Landroid/view/View;)V
:cond_79
return-void
:cond_7a
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$16;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$16;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const-string v3, "NETWORK_ERROR"
invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v3
invoke-static {v3}, Lcom/twidroid/net/b;->a(I)I
move-result v3
invoke-virtual {v2, v3}, Lcom/twidroid/activity/UberSocialBaseActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/activity/UberSocialBaseActivity$16;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const v4, 0x7f0901a7
invoke-virtual {v3, v4}, Lcom/twidroid/activity/UberSocialBaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/twidroid/activity/UberSocialBaseActivity;->a(Ljava/lang/String;Landroid/view/View;)V
const-string v1, "show_error"
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Object;
const-string v3, "Message"
aput-object v3, v2, v6
iget-object v3, p0, Lcom/twidroid/activity/UberSocialBaseActivity$16;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const-string v4, "NETWORK_ERROR"
invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v4
invoke-static {v4}, Lcom/twidroid/net/b;->a(I)I
move-result v4
invoke-virtual {v3, v4}, Lcom/twidroid/activity/UberSocialBaseActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v7
const-string v3, "Type"
aput-object v3, v2, v8
const-string v3, "code"
aput-object v3, v2, v9
invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v2
invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
goto :goto_4f
.end method