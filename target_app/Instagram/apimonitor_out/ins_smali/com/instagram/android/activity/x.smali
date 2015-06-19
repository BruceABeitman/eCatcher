.class final Lcom/instagram/android/activity/x;
.super Ljava/lang/Object;
.source "TumblrAuthActivity.java"
.implements Landroid/support/v4/app/ao;
.field final synthetic a:Lcom/instagram/android/activity/TumblrAuthActivity;
.method private constructor <init>(Lcom/instagram/android/activity/TumblrAuthActivity;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/activity/x;->a:Lcom/instagram/android/activity/TumblrAuthActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/activity/TumblrAuthActivity;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/activity/x;-><init>(Lcom/instagram/android/activity/TumblrAuthActivity;)V
return-void
.end method
.method private a(Landroid/support/v4/a/c;Lcom/instagram/share/tumblr/e;)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/activity/x;->a:Lcom/instagram/android/activity/TumblrAuthActivity;
invoke-virtual {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->e()Landroid/support/v4/app/an;
move-result-object v0
invoke-virtual {p1}, Landroid/support/v4/a/c;->g()I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v4/app/an;->a(I)V
iget-object v0, p0, Lcom/instagram/android/activity/x;->a:Lcom/instagram/android/activity/TumblrAuthActivity;
invoke-static {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->d(Lcom/instagram/android/activity/TumblrAuthActivity;)V
invoke-virtual {p2}, Lcom/instagram/share/tumblr/e;->c()Z
move-result v0
if-eqz v0, :cond_64
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Success! Token: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p2}, Lcom/instagram/share/tumblr/e;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", Secret: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p2}, Lcom/instagram/share/tumblr/e;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/instagram/android/activity/x;->a:Lcom/instagram/android/activity/TumblrAuthActivity;
sget v1, Lcom/facebook/av;->followInstagram:I
invoke-virtual {v0, v1}, Lcom/instagram/android/activity/TumblrAuthActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CompoundButton;
invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z
move-result v0
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/instagram/android/activity/x;->a:Lcom/instagram/android/activity/TumblrAuthActivity;
invoke-virtual {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/share/tumblr/TumblrService;->a(Landroid/content/Context;)V
:cond_4d
invoke-virtual {p2}, Lcom/instagram/share/tumblr/e;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Lcom/instagram/share/tumblr/e;->b()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/share/tumblr/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/share/tumblr/a;
iget-object v0, p0, Lcom/instagram/android/activity/x;->a:Lcom/instagram/android/activity/TumblrAuthActivity;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/instagram/android/activity/TumblrAuthActivity;->setResult(I)V
iget-object v0, p0, Lcom/instagram/android/activity/x;->a:Lcom/instagram/android/activity/TumblrAuthActivity;
invoke-virtual {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->finish()V
:goto_63
return-void
:cond_64
iget-object v0, p0, Lcom/instagram/android/activity/x;->a:Lcom/instagram/android/activity/TumblrAuthActivity;
iget-object v1, p0, Lcom/instagram/android/activity/x;->a:Lcom/instagram/android/activity/TumblrAuthActivity;
invoke-virtual {v1}, Lcom/instagram/android/activity/TumblrAuthActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/az;->tumblr_login_error:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/activity/TumblrAuthActivity;->b(Ljava/lang/String;)V
goto :goto_63
.end method
.method public final a(Landroid/os/Bundle;)Landroid/support/v4/a/c;
.registers 5
new-instance v1, Lcom/instagram/share/tumblr/d;
iget-object v0, p0, Lcom/instagram/android/activity/x;->a:Lcom/instagram/android/activity/TumblrAuthActivity;
invoke-virtual {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-direct {v1, v0}, Lcom/instagram/share/tumblr/d;-><init>(Landroid/content/Context;)V
if-eqz p1, :cond_39
const-string v0, "deliverOnly"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_39
const/4 v0, 0x1
:goto_16
invoke-virtual {v1, v0}, Lcom/instagram/share/tumblr/d;->a(Z)V
const-string v0, "https://www.tumblr.com/oauth/access_token"
invoke-virtual {v1, v0}, Lcom/instagram/share/tumblr/d;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/activity/x;->a:Lcom/instagram/android/activity/TumblrAuthActivity;
invoke-static {v0}, Lcom/instagram/android/activity/TumblrAuthActivity;->b(Lcom/instagram/android/activity/TumblrAuthActivity;)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/instagram/android/activity/x;->a:Lcom/instagram/android/activity/TumblrAuthActivity;
invoke-static {v2}, Lcom/instagram/android/activity/TumblrAuthActivity;->c(Lcom/instagram/android/activity/TumblrAuthActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/instagram/share/tumblr/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/share/tumblr/b;->a()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/instagram/share/tumblr/b;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/instagram/share/tumblr/d;->a(Ljava/lang/String;Ljava/lang/String;)V
return-object v1
:cond_39
const/4 v0, 0x0
goto :goto_16
.end method
.method public final bridge synthetic a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
.registers 3
check-cast p2, Lcom/instagram/share/tumblr/e;
invoke-direct {p0, p1, p2}, Lcom/instagram/android/activity/x;->a(Landroid/support/v4/a/c;Lcom/instagram/share/tumblr/e;)V
return-void
.end method