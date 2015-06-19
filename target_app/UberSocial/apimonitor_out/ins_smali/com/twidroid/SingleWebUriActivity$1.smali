.class  Lcom/twidroid/SingleWebUriActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/SingleWebUriActivity;
.field private b:Z
.method constructor <init>(Lcom/twidroid/SingleWebUriActivity;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/SingleWebUriActivity$1;->a:Lcom/twidroid/SingleWebUriActivity;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/SingleWebUriActivity$1;->b:Z
return-void
.end method
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity$1;->a:Lcom/twidroid/SingleWebUriActivity;
invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/twidroid/SingleWebUriActivity;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity$1;->a:Lcom/twidroid/SingleWebUriActivity;
invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/SingleWebUriActivity;->setTitle(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity$1;->a:Lcom/twidroid/SingleWebUriActivity;
invoke-static {v0}, Lcom/twidroid/SingleWebUriActivity;->e(Lcom/twidroid/SingleWebUriActivity;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_23
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/SingleWebUriActivity$1;->b:Z
:cond_23
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 15
const-wide/16 v10, 0x0
const-wide/16 v8, -0x1
const-string v0, "//twitter.com/intent"
invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_13c
const-string v0, "twitter.com/intent/tweet"
invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_ad
:try_start_14
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_ad
invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_ad
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {p2, v0}, Lcom/ubermedia/net/b/c;->b(Ljava/lang/String;Ljava/util/List;)V
const-string v1, ""
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
move-wide v2, v8
:goto_38
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ubermedia/net/c;
invoke-virtual {v0}, Lcom/ubermedia/net/c;->a()Ljava/lang/String;
move-result-object v5
const-string v6, "in_reply_to"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_58
invoke-virtual {v0}, Lcom/ubermedia/net/c;->b()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
:cond_58
invoke-virtual {v0}, Lcom/ubermedia/net/c;->a()Ljava/lang/String;
move-result-object v5
const-string v6, "tweet_text"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_155
invoke-virtual {v0}, Lcom/ubermedia/net/c;->b()Ljava/lang/String;
move-result-object v0
:goto_68
move-object v1, v0
goto :goto_38
:cond_6a
cmp-long v0, v2, v10
if-lez v0, :cond_a3
iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity$1;->a:Lcom/twidroid/SingleWebUriActivity;
invoke-static {v0}, Lcom/twidroid/SingleWebUriActivity;->a(Lcom/twidroid/SingleWebUriActivity;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0, v2, v3}, Lcom/twidroid/net/a/c/c;->j(J)Lcom/twidroid/model/twitter/Tweet;
move-result-object v0
sput-object v0, Lcom/twidroid/activity/UberSocialBaseActivity;->Y:Lcom/twidroid/model/twitter/Tweet;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "@"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v4, Lcom/twidroid/activity/UberSocialBaseActivity;->Y:Lcom/twidroid/model/twitter/Tweet;
iget-object v4, v4, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, " "
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_a3
iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity$1;->a:Lcom/twidroid/SingleWebUriActivity;
const/4 v4, -0x1
const/4 v5, -0x1
const/4 v6, 0x0
const-string v7, ""
invoke-static/range {v0 .. v7}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V
:cond_ad
:try_end_ad
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_ad} :catch_f9
:goto_ad
const-string v0, "twitter.com/intent/retweet"
invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_135
:try_start_b5
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_135
invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_135
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {p2, v0}, Lcom/ubermedia/net/b/c;->b(Ljava/lang/String;Ljava/util/List;)V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-wide v1, v8
:goto_d7
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_fe
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ubermedia/net/c;
invoke-virtual {v0}, Lcom/ubermedia/net/c;->a()Ljava/lang/String;
move-result-object v4
const-string v5, "tweet_id"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_153
invoke-virtual {v0}, Lcom/ubermedia/net/c;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_f6
.catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_f6} :catch_137
move-result-wide v0
:goto_f7
move-wide v1, v0
goto :goto_d7
:catch_f9
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_ad
:cond_fe
cmp-long v0, v1, v10
if-lez v0, :cond_135
:try_start_102
iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity$1;->a:Lcom/twidroid/SingleWebUriActivity;
invoke-static {v0}, Lcom/twidroid/SingleWebUriActivity;->b(Lcom/twidroid/SingleWebUriActivity;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/a/c/c;->j(J)Lcom/twidroid/model/twitter/Tweet;
move-result-object v0
sput-object v0, Lcom/twidroid/activity/UberSocialBaseActivity;->Y:Lcom/twidroid/model/twitter/Tweet;
iget-object v0, p0, Lcom/twidroid/SingleWebUriActivity$1;->a:Lcom/twidroid/SingleWebUriActivity;
sget-object v1, Lcom/twidroid/activity/UberSocialBaseActivity;->Y:Lcom/twidroid/model/twitter/Tweet;
iget-object v2, p0, Lcom/twidroid/SingleWebUriActivity$1;->a:Lcom/twidroid/SingleWebUriActivity;
invoke-static {v2}, Lcom/twidroid/SingleWebUriActivity;->c(Lcom/twidroid/SingleWebUriActivity;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/SingleWebUriActivity$1;->a:Lcom/twidroid/SingleWebUriActivity;
invoke-static {v3}, Lcom/twidroid/SingleWebUriActivity;->d(Lcom/twidroid/SingleWebUriActivity;)Lcom/twidroid/net/c/a/f;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/twidroid/c/l;->a(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/c/a/f;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
:cond_135
:goto_135
:try_end_135
.catch Ljava/lang/Exception; {:try_start_102 .. :try_end_135} :catch_137
const/4 v0, 0x1
:goto_136
return v0
:catch_137
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_135
:cond_13c
iget-boolean v0, p0, Lcom/twidroid/SingleWebUriActivity$1;->b:Z
if-eqz v0, :cond_150
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
iget-object v1, p0, Lcom/twidroid/SingleWebUriActivity$1;->a:Lcom/twidroid/SingleWebUriActivity;
invoke-virtual {v1, v0}, Lcom/twidroid/SingleWebUriActivity;->startActivity(Landroid/content/Intent;)V
:cond_150
iget-boolean v0, p0, Lcom/twidroid/SingleWebUriActivity$1;->b:Z
goto :goto_136
:cond_153
move-wide v0, v1
goto :goto_f7
:cond_155
move-object v0, v1
goto/16 :goto_68
.end method