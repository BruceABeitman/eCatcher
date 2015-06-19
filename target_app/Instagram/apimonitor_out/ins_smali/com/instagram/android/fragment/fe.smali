.class final Lcom/instagram/android/fragment/fe;
.super Ljava/lang/Object;
.source "UserDetailFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/fragment/fb;
.method constructor <init>(Lcom/instagram/android/fragment/fb;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/fe; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
const/4 v5, 0x0
iget-object v0, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v0}, Lcom/instagram/android/fragment/fb;->as()[Ljava/lang/CharSequence;
move-result-object v0
aget-object v1, v0, p2
iget-object v2, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
sget v3, Lcom/facebook/az;->report_inappropriate:I
invoke-virtual {v2, v3}, Lcom/instagram/android/fragment/fb;->c(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_28
iget-object v0, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v0}, Lcom/instagram/android/fragment/fb;->n()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v1}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/util/f;->a(Landroid/content/Context;Lcom/instagram/user/c/a;)V
:goto_27
:cond_27
const-string v1, " - Lcom/instagram/android/fragment/fe; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_28
aget-object v1, v0, p2
iget-object v2, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
sget v3, Lcom/facebook/az;->directshare_receive_direct_posts:I
invoke-virtual {v2, v3}, Lcom/instagram/android/fragment/fb;->c(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5c
new-instance v0, Lcom/instagram/f/a/a/c;
iget-object v1, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v1}, Lcom/instagram/android/fragment/fb;->n()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v2}, Lcom/instagram/android/fragment/fb;->y()Landroid/support/v4/app/an;
move-result-object v2
new-instance v3, Lcom/instagram/android/fragment/ff;
iget-object v4, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-direct {v3, v4, v5}, Lcom/instagram/android/fragment/ff;-><init>(Lcom/instagram/android/fragment/fb;B)V
iget-object v4, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
iget-object v4, v4, Lcom/instagram/android/fragment/fb;->ae:Lcom/instagram/user/c/a;
invoke-virtual {v4}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/f/a/a/c;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/instagram/f/a/a/c;->h()V
goto :goto_27
:cond_5c
aget-object v1, v0, p2
iget-object v2, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v2}, Lcom/instagram/android/fragment/fb;->o()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/instagram/android/feed/c/a;->a(Ljava/lang/CharSequence;Landroid/content/res/Resources;)Z
move-result v1
if-eqz v1, :cond_7a
iget-object v0, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-static {v0}, Lcom/instagram/android/fragment/fb;->g(Lcom/instagram/android/fragment/fb;)Lcom/instagram/android/feed/c/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v1}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/c/a;->a(Lcom/instagram/user/c/a;)V
goto :goto_27
:cond_7a
aget-object v1, v0, p2
iget-object v2, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
sget v3, Lcom/facebook/az;->suggest_user:I
invoke-virtual {v2, v3}, Lcom/instagram/android/fragment/fb;->c(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_ac
new-instance v0, Lcom/instagram/feed/a/c;
iget-object v1, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v1}, Lcom/instagram/android/fragment/fb;->n()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v2}, Lcom/instagram/android/fragment/fb;->y()Landroid/support/v4/app/an;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v3}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v3
sget v4, Lcom/instagram/feed/a/d;->a:I
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/feed/a/c;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;I)V
invoke-virtual {v0}, Lcom/instagram/feed/a/c;->h()V
goto/16 :goto_27
:cond_ac
aget-object v0, v0, p2
iget-object v1, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
sget v2, Lcom/facebook/az;->copy_profile_url:I
invoke-virtual {v1, v2}, Lcom/instagram/android/fragment/fb;->c(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v0}, Lcom/instagram/android/fragment/fb;->l()Landroid/support/v4/app/k;
move-result-object v0
const-string v1, "/%s/"
new-array v2, v4, [Ljava/lang/Object;
iget-object v3, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v3}, Lcom/instagram/android/fragment/fb;->aq()Lcom/instagram/user/c/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v5
invoke-static {v1, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/u/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/fragment/fe;->a:Lcom/instagram/android/fragment/fb;
invoke-virtual {v0}, Lcom/instagram/android/fragment/fb;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->copy_profile_url_confirmation:I
invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto/16 :goto_27
.end method