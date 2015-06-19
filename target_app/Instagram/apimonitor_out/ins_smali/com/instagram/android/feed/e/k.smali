.class final Lcom/instagram/android/feed/e/k;
.super Landroid/content/BroadcastReceiver;
.source "MediaLinkBroadcastHandler.java"
.field final synthetic a:Lcom/instagram/android/feed/e/j;
.method constructor <init>(Lcom/instagram/android/feed/e/j;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 9
const-string v0, "Media.COMMENT_MENTION_CLICKED"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_39
const-string v0, "tag"
iget-object v1, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v1}, Lcom/instagram/android/feed/e/j;->a(Lcom/instagram/android/feed/e/j;)Lcom/instagram/feed/g/a;
move-result-object v1
invoke-static {p2, v0, v1}, Lcom/instagram/android/feed/e/j;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v1}, Lcom/instagram/android/feed/e/j;->b(Lcom/instagram/android/feed/e/j;)Landroid/support/v4/app/Fragment;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;
move-result-object v1
const-string v2, "Media.EXTRA_USERNAME"
invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/e;->b(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
const-string v1, "user_mention"
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
:cond_38
:goto_38
return-void
:cond_39
const-string v0, "Media.COMMENT_HASHTAG_CLICKED"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_70
const-string v0, "hashtag"
iget-object v1, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v1}, Lcom/instagram/android/feed/e/j;->a(Lcom/instagram/android/feed/e/j;)Lcom/instagram/feed/g/a;
move-result-object v1
invoke-static {p2, v0, v1}, Lcom/instagram/android/feed/e/j;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V
iget-object v0, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v0}, Lcom/instagram/android/feed/e/j;->b(Lcom/instagram/android/feed/e/j;)Landroid/support/v4/app/Fragment;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;
move-result-object v0
const-string v1, "Media.EXTRA_HASHTAG_NAME"
invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v2}, Lcom/instagram/android/feed/e/j;->b(Lcom/instagram/android/feed/e/j;)Landroid/support/v4/app/Fragment;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;
move-result-object v2
const-string v3, "media_hashtag"
invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/fragment/cg;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V
goto :goto_38
:cond_70
const-string v0, "Media.NUMBER_LIKES_CLICKED"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b2
const-string v0, "number_of_likes"
iget-object v1, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v1}, Lcom/instagram/android/feed/e/j;->a(Lcom/instagram/android/feed/e/j;)Lcom/instagram/feed/g/a;
move-result-object v1
invoke-static {p2, v0, v1}, Lcom/instagram/android/feed/e/j;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v0
const-string v1, "Media.EXTRA_MEDIA_ID"
invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
move-result-object v0
new-instance v1, Lcom/instagram/android/fragment/fj;
invoke-direct {v1}, Lcom/instagram/android/fragment/fj;-><init>()V
iget-object v1, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v1}, Lcom/instagram/android/feed/e/j;->b(Lcom/instagram/android/feed/e/j;)Landroid/support/v4/app/Fragment;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-static {v1, p1, v0}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Landroid/content/Context;Lcom/instagram/feed/d/l;)Lcom/instagram/base/a/a/a;
move-result-object v0
const-string v1, "media_likes"
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
goto :goto_38
:cond_b2
const-string v0, "Media.USER_CLICKED"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ee
iget-object v0, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v0}, Lcom/instagram/android/feed/e/j;->a(Lcom/instagram/android/feed/e/j;)Lcom/instagram/feed/g/a;
move-result-object v0
invoke-static {p2, v0}, Lcom/instagram/android/feed/e/j;->a(Landroid/content/Intent;Lcom/instagram/feed/g/a;)V
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v1}, Lcom/instagram/android/feed/e/j;->b(Lcom/instagram/android/feed/e/j;)Landroid/support/v4/app/Fragment;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;
move-result-object v1
const-string v2, "Media.EXTRA_USER_ID"
invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
const-string v1, "Media.EXTRA_CLICK_POINT"
invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
goto/16 :goto_38
:cond_ee
const-string v0, "Media.NUMBER_COMMENTS_CLICKED"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13f
const-string v0, "number_of_comments"
iget-object v1, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v1}, Lcom/instagram/android/feed/e/j;->a(Lcom/instagram/android/feed/e/j;)Lcom/instagram/feed/g/a;
move-result-object v1
invoke-static {p2, v0, v1}, Lcom/instagram/android/feed/e/j;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V
const-string v0, "Media.EXTRA_MEDIA_ID"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v1}, Lcom/instagram/android/feed/e/j;->b(Lcom/instagram/android/feed/e/j;)Landroid/support/v4/app/Fragment;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v3
invoke-virtual {v3, v2}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
move-result-object v2
const/4 v3, 0x0
iget-object v4, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v4}, Lcom/instagram/android/feed/e/j;->a(Lcom/instagram/android/feed/e/j;)Lcom/instagram/feed/g/a;
move-result-object v4
invoke-interface {v4}, Lcom/instagram/feed/g/a;->n_()Z
move-result v4
iget-object v5, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v5}, Lcom/instagram/android/feed/e/j;->a(Lcom/instagram/android/feed/e/j;)Lcom/instagram/feed/g/a;
move-result-object v5
invoke-interface {v5}, Lcom/instagram/feed/g/a;->U()Z
move-result v5
invoke-interface/range {v0 .. v5}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Lcom/instagram/feed/d/l;ZZZ)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
goto/16 :goto_38
:cond_13f
const-string v0, "PeopleTag.BROADCAST_TAG_CLICKED"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
const-string v0, "PeopleTag.INTENT_EXTRA_USER_ID"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "PeopleTag.INTENT_EXTRA_MEDIA_ID"
invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
move-result-object v1
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_18a
iget-object v0, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v0}, Lcom/instagram/android/feed/e/j;->b(Lcom/instagram/android/feed/e/j;)Landroid/support/v4/app/Fragment;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;
move-result-object v0
iget-object v2, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v2}, Lcom/instagram/android/feed/e/j;->b(Lcom/instagram/android/feed/e/j;)Landroid/support/v4/app/Fragment;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->y()Landroid/support/v4/app/an;
move-result-object v2
invoke-static {v0, v2, v1}, Lcom/instagram/android/people/c/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;)V
goto/16 :goto_38
:cond_18a
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/e/k;->a:Lcom/instagram/android/feed/e/j;
invoke-static {v2}, Lcom/instagram/android/feed/e/j;->b(Lcom/instagram/android/feed/e/j;)Landroid/support/v4/app/Fragment;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;
move-result-object v2
invoke-interface {v1, v2, v0}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
goto/16 :goto_38
.end method