.class final Lcom/bbm/n/d;
.super Ljava/lang/Object;
.source "MediaCallManager.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/b/f/a/l;
.field final synthetic b:Lcom/bbm/d/gp;
.field final synthetic c:Z
.field final synthetic d:Lcom/bbm/n/b;
.method constructor <init>(Lcom/bbm/n/b;Lcom/google/b/f/a/l;Lcom/bbm/d/gp;Z)V
.registers 5
iput-object p1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
iput-object p2, p0, Lcom/bbm/n/d;->a:Lcom/google/b/f/a/l;
iput-object p3, p0, Lcom/bbm/n/d;->b:Lcom/bbm/d/gp;
iput-boolean p4, p0, Lcom/bbm/n/d;->c:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/bbm/n/d;->a:Lcom/google/b/f/a/l;
invoke-interface {v0}, Lcom/google/b/f/a/l;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p0, Lcom/bbm/n/d;->b:Lcom/bbm/d/gp;
iget-object v2, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/n/d;->b:Lcom/bbm/d/gp;
iget-object v3, v3, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v1
invoke-interface {v1}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/fd;
iget-object v2, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
new-instance v3, Landroid/support/v4/app/ag;
iget-object v4, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v4}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;
move-result-object v4
invoke-direct {v3, v4}, Landroid/support/v4/app/ag;-><init>(Landroid/content/Context;)V
invoke-static {v2, v3}, Lcom/bbm/n/b;->a(Lcom/bbm/n/b;Landroid/support/v4/app/ag;)Landroid/support/v4/app/ag;
iget-object v2, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v2}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v2
iget-object v1, v1, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
invoke-static {v1}, Lcom/bbm/util/b/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, v2, Landroid/support/v4/app/ag;->g:Landroid/graphics/Bitmap;
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v1
const v2, 0x7f02003d
invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(I)Landroid/support/v4/app/ag;
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v1
iget-object v2, p0, Lcom/bbm/n/d;->b:Lcom/bbm/d/gp;
iget-object v2, v2, Lcom/bbm/d/gp;->d:Ljava/lang/String;
iput-object v2, v1, Landroid/support/v4/app/ag;->b:Ljava/lang/CharSequence;
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v1
iget-object v2, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v2}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;
move-result-object v2
const v3, 0x7f0e0131
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Landroid/support/v4/app/ag;->c:Ljava/lang/CharSequence;
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v1
iget-object v2, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v2}, Lcom/bbm/n/b;->h(Lcom/bbm/n/b;)J
move-result-wide v2
iget-object v1, v1, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;
iput-wide v2, v1, Landroid/app/Notification;->when:J
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v1
const/4 v2, 0x1
iput-boolean v2, v1, Landroid/support/v4/app/ag;->k:Z
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v1
const/4 v2, 0x1
iput v2, v1, Landroid/support/v4/app/ag;->j:I
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v1
const/4 v2, 0x2
invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->c(I)V
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;
move-result-object v1
invoke-static {v1, v0}, Lcom/bbm/ui/f/r;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
move-result-object v0
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v1
iput-object v0, v1, Landroid/support/v4/app/ag;->d:Landroid/app/PendingIntent;
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;
move-result-object v1
const-class v2, Lcom/bbm/ui/voice/MediaServiceChangeReceiver;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "com.bbm.endcall"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;
move-result-object v1
const/4 v2, 0x0
const/high16 v3, 0x1000
invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v1
const v2, 0x7f02003e
iget-object v3, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v3}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;
move-result-object v3
const v4, 0x7f0e0309
invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/ag;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/ag;
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;
move-result-object v1
const-class v2, Lcom/bbm/ui/voice/MediaServiceChangeReceiver;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "com.bbm.mutetoggle"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;
move-result-object v1
const/4 v2, 0x0
const/high16 v3, 0x1000
invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
iget-boolean v1, p0, Lcom/bbm/n/d;->c:Z
if-eqz v1, :cond_131
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v1
const v2, 0x7f020040
iget-object v3, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v3}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;
move-result-object v3
const v4, 0x7f0e071b
invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/ag;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/ag;
:goto_11b
iget-object v0, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v0}, Lcom/bbm/n/b;->i(Lcom/bbm/n/b;)Landroid/app/NotificationManager;
move-result-object v0
const/16 v1, 0x2328
iget-object v2, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v2}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/ag;->a()Landroid/app/Notification;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
:goto_130
return-void
:cond_131
iget-object v1, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
move-result-object v1
const v2, 0x7f02003f
iget-object v3, p0, Lcom/bbm/n/d;->d:Lcom/bbm/n/b;
invoke-static {v3}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;
move-result-object v3
const v4, 0x7f0e0516
invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/ag;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/ag;
:try_end_14a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14a} :catch_14b
goto :goto_11b
:catch_14b
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_130
.end method