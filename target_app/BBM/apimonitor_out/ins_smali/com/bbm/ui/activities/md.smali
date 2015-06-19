.class public abstract Lcom/bbm/ui/activities/md;
.super Lcom/bbm/ui/activities/ev;
.source "GroupChildActivity.java"
.field  c:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/ev;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected c()Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/g/am;->s(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-eq v0, v1, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0, p1}, Lcom/bbm/ui/activities/kp;->a(Landroid/app/Activity;Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1b
const/4 v0, 0x1
:goto_12
const-string v1, "No group URI specified in Intent"
invoke-static {p0, v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
:cond_1a
return-void
:cond_1b
const/4 v0, 0x0
goto :goto_12
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
const-string v1, "groupUri"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method