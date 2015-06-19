.class  Lcom/twidroid/activity/UberSocialBaseActivity$19$1;
.super Lcom/twidroid/c/c;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/ac;
.field final synthetic b:Lcom/twidroid/activity/UberSocialBaseActivity$19;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity$19;Landroid/app/Activity;Lcom/twidroid/activity/ac;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$19;
iput-object p3, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;->a:Lcom/twidroid/activity/ac;
invoke-direct {p0, p2}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V
return-void
.end method
.method public a()V
.registers 1
return-void
.end method
.method public a(I)V
.registers 9
const/4 v6, 0x1
const/4 v5, 0x0
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;->a:Lcom/twidroid/activity/ac;
iput p1, v0, Lcom/twidroid/activity/ac;->a:I
new-instance v0, Lcom/twidroid/activity/ab;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$19;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-direct {v0, v1}, Lcom/twidroid/activity/ab;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V
new-array v1, v6, [Lcom/twidroid/activity/ac;
iget-object v2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;->a:Lcom/twidroid/activity/ac;
aput-object v2, v1, v5
invoke-virtual {v0, v1}, Lcom/twidroid/activity/ab;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$19;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0, v5}, Lcom/twidroid/b/a/b;->a(Z)I
move-result v1
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$19;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0, v6}, Lcom/twidroid/b/a/b;->a(Z)I
move-result v2
const-string v3, "Mute"
const/16 v0, 0xa
new-array v4, v0, [Ljava/lang/Object;
const-string v0, "source"
aput-object v0, v4, v5
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$19;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->g:Ljava/lang/String;
aput-object v0, v4, v6
const/4 v0, 0x2
const-string v5, "type"
aput-object v5, v4, v0
const/4 v5, 0x3
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;->a:Lcom/twidroid/activity/ac;
iget-object v0, v0, Lcom/twidroid/activity/ac;->b:Ljava/lang/String;
const-string v6, "@"
invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8d
const-string v0, "user"
:goto_58
aput-object v0, v4, v5
const/4 v0, 0x4
const-string v5, "total mutes"
aput-object v5, v4, v0
const/4 v0, 0x5
add-int v5, v2, v1
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v0
const/4 v0, 0x6
const-string v5, "total hashtags"
aput-object v5, v4, v0
const/4 v0, 0x7
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v4, v0
const/16 v0, 0x8
const-string v2, "total users"
aput-object v2, v4, v0
const/16 v0, 0x9
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v4, v0
invoke-static {v4}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-static {v3, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;->dismiss()V
return-void
:cond_8d
const-string v0, "hashtag"
goto :goto_58
.end method