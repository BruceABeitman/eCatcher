.class public Lcom/bbm/setup/r;
.super Landroid/app/Activity;
.source "SetupActivityBase.java"
.field private a:Lcom/bbm/setup/aa;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/bbm/setup/ah;)Lcom/google/b/a/l;
.registers 5
iget-object v0, p1, Lcom/bbm/setup/ah;->n:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_1f
const/4 v0, 0x1
:goto_9
if-eqz v0, :cond_21
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
new-instance v1, Landroid/content/ComponentName;
iget-object v2, p1, Lcom/bbm/setup/ah;->n:Ljava/lang/String;
invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
:goto_1e
return-object v0
:cond_1f
const/4 v0, 0x0
goto :goto_9
:cond_21
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
goto :goto_1e
.end method
.method private e()Lcom/bbm/setup/ah;
.registers 2
iget-object v0, p0, Lcom/bbm/setup/r;->a:Lcom/bbm/setup/aa;
invoke-virtual {v0}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;
move-result-object v0
iget-object v0, v0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;
return-object v0
.end method
.method protected final a()V
.registers 5
invoke-direct {p0}, Lcom/bbm/setup/r;->e()Lcom/bbm/setup/ah;
move-result-object v0
invoke-static {p0, v0}, Lcom/bbm/setup/r;->a(Landroid/content/Context;Lcom/bbm/setup/ah;)Lcom/google/b/a/l;
move-result-object v1
invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z
move-result v2
if-eqz v2, :cond_3a
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Launching nested activity "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, v0, Lcom/bbm/setup/ah;->n:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/bbm/setup/r;->startActivityForResult(Landroid/content/Intent;I)V
const v0, 0x7f040003
const v1, 0x7f040004
invoke-virtual {p0, v0, v1}, Lcom/bbm/setup/r;->overridePendingTransition(II)V
:goto_39
return-void
:cond_3a
invoke-virtual {p0}, Lcom/bbm/setup/r;->d()V
goto :goto_39
.end method
.method public final b()V
.registers 5
invoke-direct {p0}, Lcom/bbm/setup/r;->e()Lcom/bbm/setup/ah;
move-result-object v1
invoke-static {p0, v1}, Lcom/bbm/setup/r;->a(Landroid/content/Context;Lcom/bbm/setup/ah;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v2
if-eqz v2, :cond_41
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
const/high16 v2, 0x200
invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Replacing activity with "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, v1, Lcom/bbm/setup/ah;->n:Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/bbm/setup/r;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/bbm/setup/r;->finish()V
const v0, 0x7f040003
const v1, 0x7f040004
invoke-virtual {p0, v0, v1}, Lcom/bbm/setup/r;->overridePendingTransition(II)V
:goto_40
return-void
:cond_41
invoke-virtual {p0}, Lcom/bbm/setup/r;->d()V
goto :goto_40
.end method
.method protected final c()V
.registers 4
const/4 v2, 0x0
const-string v0, "Exiting activity"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
const/16 v0, 0x64
invoke-virtual {p0, v0}, Lcom/bbm/setup/r;->setResult(I)V
invoke-virtual {p0}, Lcom/bbm/setup/r;->finish()V
invoke-virtual {p0, v2, v2}, Lcom/bbm/setup/r;->overridePendingTransition(II)V
return-void
.end method
.method protected final d()V
.registers 4
const/4 v2, 0x0
const-string v0, "Returning success from activity"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
const/16 v0, 0xca
invoke-virtual {p0, v0}, Lcom/bbm/setup/r;->setResult(I)V
invoke-virtual {p0}, Lcom/bbm/setup/r;->finish()V
invoke-virtual {p0, v2, v2}, Lcom/bbm/setup/r;->overridePendingTransition(II)V
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 6
const-string v0, "onActivityResult"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
if-nez p1, :cond_12
const/16 v0, 0x64
if-ne p2, v0, :cond_13
invoke-virtual {p0}, Lcom/bbm/setup/r;->c()V
:cond_12
:goto_12
return-void
:cond_13
const/16 v0, 0xca
if-ne p2, v0, :cond_12
invoke-virtual {p0}, Lcom/bbm/setup/r;->d()V
goto :goto_12
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/setup/r; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
sget-object v0, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;
iput-object v0, p0, Lcom/bbm/setup/r;->a:Lcom/bbm/setup/aa;
const-string v1, " - Lcom/bbm/setup/r; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method