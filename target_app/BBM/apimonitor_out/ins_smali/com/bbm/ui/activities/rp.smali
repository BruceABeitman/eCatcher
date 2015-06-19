.class final Lcom/bbm/ui/activities/rp;
.super Ljava/lang/Object;
.source "GroupPictureCommentsActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 8
const/4 v4, 0x1
packed-switch p2, :pswitch_data_f2
:goto_4
:cond_4
return-void
:pswitch_5
iget-object v0, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->i(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
goto :goto_4
:pswitch_14
iget-object v0, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/g/af;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/g/af;->b:Z
if-eqz v0, :cond_3c
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->c(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/bbm/g/ck;
invoke-direct {v2, v1}, Lcom/bbm/g/ck;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:goto_32
iget-object v0, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
goto :goto_4
:cond_3c
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->c(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/bbm/g/cj;
invoke-direct {v2, v1}, Lcom/bbm/g/cj;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f0e0400
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/bbm/g/cj;->a(Ljava/lang/String;)Lcom/bbm/g/cj;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
goto :goto_32
:pswitch_62
const-string v0, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_87
iget-object v0, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/g/af;
move-result-object v0
iget-object v0, v0, Lcom/bbm/g/af;->i:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/g/af;
move-result-object v2
iget-object v2, v2, Lcom/bbm/g/af;->i:Ljava/lang/String;
invoke-static {v2}, Lcom/bbm/util/b/h;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
:cond_87
iget-object v0, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
goto/16 :goto_4
:pswitch_92
iget-object v0, p0, Lcom/bbm/ui/activities/rp;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v2, v0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a:Ljava/lang/String;
iget-object v3, v0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lcom/bbm/g/am;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/af;
move-result-object v1
iget-object v1, v1, Lcom/bbm/g/af;->i:Ljava/lang/String;
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Ljava/lang/String;)Ljava/io/File;
move-result-object v1
const-string v3, "android.intent.action.SEND"
invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v3, "android.intent.extra.STREAM"
invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v3, "picturePath"
invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v4
invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v3, "groupUri"
iget-object v4, v0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v3, "pictureUri"
iget-object v4, v0, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v3, "image/jpeg"
invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
if-eqz v1, :cond_4
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f0e043f
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_4
nop
:pswitch_data_f2
.packed-switch 0x0
:pswitch_5
:pswitch_14
:pswitch_62
:pswitch_92
.end packed-switch
.end method