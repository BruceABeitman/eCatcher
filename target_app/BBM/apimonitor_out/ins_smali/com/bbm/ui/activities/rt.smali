.class final Lcom/bbm/ui/activities/rt;
.super Lcom/bbm/j/u;
.source "GroupPictureCommentsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/rt;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 5
const/4 v0, 0x1
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v2, p0, Lcom/bbm/ui/activities/rt;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v1
iget-object v2, v1, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v2, v3, :cond_17
const/4 v0, 0x0
:goto_16
return v0
:cond_17
iget-boolean v1, v1, Lcom/bbm/g/a;->j:Z
if-eqz v1, :cond_57
iget-object v1, p0, Lcom/bbm/ui/activities/rt;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->z(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Z
move-result v1
if-eqz v1, :cond_57
new-instance v1, Lcom/bbm/ui/b/i;
iget-object v2, p0, Lcom/bbm/ui/activities/rt;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-direct {v1, v2}, Lcom/bbm/ui/b/i;-><init>(Landroid/content/Context;)V
const v2, 0x7f0e0457
invoke-virtual {v1, v2}, Lcom/bbm/ui/b/i;->setTitle(I)V
const v2, 0x7f0e0455
invoke-virtual {v1, v2}, Lcom/bbm/ui/b/i;->c(I)V
const v2, 0x7f0e0456
invoke-virtual {v1, v2}, Lcom/bbm/ui/b/i;->e(I)V
const v2, 0x7f0e02ea
invoke-virtual {v1, v2}, Lcom/bbm/ui/b/i;->a(I)V
new-instance v2, Lcom/bbm/ui/activities/ru;
invoke-direct {v2, p0, v1}, Lcom/bbm/ui/activities/ru;-><init>(Lcom/bbm/ui/activities/rt;Lcom/bbm/ui/b/i;)V
invoke-virtual {v1, v2}, Lcom/bbm/ui/b/i;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v1}, Lcom/bbm/ui/b/i;->show()V
:cond_4d
:goto_4d
iget-object v1, p0, Lcom/bbm/ui/activities/rt;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
iget-object v1, v1, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
goto :goto_16
:cond_57
iget-object v1, p0, Lcom/bbm/ui/activities/rt;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->z(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Z
move-result v1
if-eqz v1, :cond_4d
iget-object v1, p0, Lcom/bbm/ui/activities/rt;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Z)V
goto :goto_4d
.end method