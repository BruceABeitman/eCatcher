.class final Lcom/instagram/android/feed/a/a/x;
.super Ljava/lang/Object;
.source "MediaOptionsDialog.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/feed/a/a/u;
.method private constructor <init>(Lcom/instagram/android/feed/a/a/u;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/feed/a/a/u;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/x;-><init>(Lcom/instagram/android/feed/a/a/u;)V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/a/a/x; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x0
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->b(Lcom/instagram/android/feed/a/a/u;)[Ljava/lang/CharSequence;
move-result-object v0
aget-object v0, v0, p2
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->delete_media:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_67
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->confirm_media_deletion_title:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v1
iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->g()Z
move-result v0
if-eqz v0, :cond_64
sget v0, Lcom/facebook/az;->delete_this_video_question:I
:goto_3d
invoke-virtual {v1, v0}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->delete_media:I
new-instance v2, Lcom/instagram/android/feed/a/a/z;
invoke-direct {v2, p0}, Lcom/instagram/android/feed/a/a/z;-><init>(Lcom/instagram/android/feed/a/a/x;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->dont_delete:I
new-instance v2, Lcom/instagram/android/feed/a/a/y;
invoke-direct {v2, p0}, Lcom/instagram/android/feed/a/a/y;-><init>(Lcom/instagram/android/feed/a/a/x;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
:goto_63
const-string v1, " - Lcom/instagram/android/feed/a/a/x; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_64
sget v0, Lcom/facebook/az;->delete_this_photo_question:I
goto :goto_3d
:cond_67
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->share:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
new-instance v1, Lcom/instagram/sharelater/ShareLaterMedia;
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/sharelater/ShareLaterMedia;-><init>(Lcom/instagram/feed/d/l;)V
const-string v2, "ShareLaterMedia.SHARE_LATER_MEDIA"
invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
new-instance v1, Lcom/instagram/base/a/a/a;
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->f(Lcom/instagram/android/feed/a/a/u;)Landroid/support/v4/app/s;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/creation/a/ar;
invoke-direct {v2}, Lcom/instagram/android/creation/a/ar;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
goto :goto_63
:cond_a6
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->report_inappropriate:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_df
const-string v0, "inappropriate"
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->g(Lcom/instagram/android/feed/a/a/u;)I
move-result v2
iget-object v3, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v3}, Lcom/instagram/android/feed/a/a/u;->h(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/g/a;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/util/ReportMediaUtil;->a(Landroid/content/Context;Lcom/instagram/feed/d/l;)V
goto :goto_63
:cond_df
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->flag_reason_remove_from_popular:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_114
new-instance v0, Lcom/instagram/android/c/a/c;
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v3}, Lcom/instagram/android/feed/a/a/u;->i(Lcom/instagram/android/feed/a/a/u;)Landroid/support/v4/app/an;
move-result-object v3
new-instance v4, Lcom/instagram/android/feed/a/a/ac;
iget-object v5, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-direct {v4, v5, v6}, Lcom/instagram/android/feed/a/a/ac;-><init>(Lcom/instagram/android/feed/a/a/u;B)V
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/c;-><init>(Lcom/instagram/feed/d/l;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
invoke-virtual {v0}, Lcom/instagram/android/c/a/c;->h()V
goto/16 :goto_63
:cond_114
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->add_people:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_179
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "media_id"
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "media_url"
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v3}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/instagram/feed/d/l;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "people_tags"
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/feed/d/l;->U()Lcom/instagram/model/people/b;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v2
const-class v3, Lcom/instagram/android/people/activity/PeopleTagActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_63
:cond_179
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->photo_options:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1a2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->i(Lcom/instagram/android/feed/a/a/u;)Landroid/support/v4/app/an;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/instagram/android/people/c/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;)V
goto/16 :goto_63
:cond_1a2
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->copy_share_url:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1d7
new-instance v0, Lcom/instagram/android/c/a/k;
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v3}, Lcom/instagram/android/feed/a/a/u;->i(Lcom/instagram/android/feed/a/a/u;)Landroid/support/v4/app/an;
move-result-object v3
new-instance v4, Lcom/instagram/android/feed/a/a/aa;
iget-object v5, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-direct {v4, v5, v6}, Lcom/instagram/android/feed/a/a/aa;-><init>(Lcom/instagram/android/feed/a/a/u;B)V
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/k;-><init>(Lcom/instagram/feed/d/l;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V
invoke-virtual {v0}, Lcom/instagram/android/c/a/k;->h()V
goto/16 :goto_63
:cond_1d7
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->starred_hide_this:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_222
new-instance v0, Lcom/instagram/android/feed/d/d;
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v3}, Lcom/instagram/android/feed/a/a/u;->j(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/android/feed/a/a;
move-result-object v3
iget-object v4, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v4}, Lcom/instagram/android/feed/a/a/u;->k(Lcom/instagram/android/feed/a/a/u;)Landroid/view/View;
move-result-object v4
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/feed/d/d;-><init>(Landroid/content/Context;Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/a;Landroid/view/View;)V
invoke-virtual {v0}, Lcom/instagram/android/feed/d/d;->a()V
const-string v0, "hide_button"
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->g(Lcom/instagram/android/feed/a/a/u;)I
move-result v2
iget-object v3, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v3}, Lcom/instagram/android/feed/a/a/u;->h(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/g/a;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
goto/16 :goto_63
:cond_222
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->learn_more:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_25b
new-instance v0, Lcom/instagram/android/feed/d/a;
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/android/feed/d/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/android/feed/d/a;->a()V
const-string v0, "learn_more_button"
iget-object v1, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/u;->d(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/d/l;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/u;->g(Lcom/instagram/android/feed/a/a/u;)I
move-result v2
iget-object v3, p0, Lcom/instagram/android/feed/a/a/x;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v3}, Lcom/instagram/android/feed/a/a/u;->h(Lcom/instagram/android/feed/a/a/u;)Lcom/instagram/feed/g/a;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
goto/16 :goto_63
:cond_25b
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Menu item click not handled"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method