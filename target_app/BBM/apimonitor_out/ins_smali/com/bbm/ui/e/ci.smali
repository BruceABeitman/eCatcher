.class final Lcom/bbm/ui/e/ci;
.super Ljava/lang/Object;
.source "TpaContentMessageHolder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/d/fl;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/bbm/ui/e/ch;
.method constructor <init>(Lcom/bbm/ui/e/ch;Lcom/bbm/d/fl;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/e/ci;->c:Lcom/bbm/ui/e/ch;
iput-object p2, p0, Lcom/bbm/ui/e/ci;->a:Lcom/bbm/d/fl;
iput-object p3, p0, Lcom/bbm/ui/e/ci;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/e/ci; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
const/4 v4, 0x0
const-string v0, "TpaContentMessageHolder clicked"
new-array v1, v5, [Ljava/lang/Object;
const-class v2, Lcom/bbm/ui/e/ch;
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/e/ci;->a:Lcom/bbm/d/fl;
iget-object v0, v0, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_107
:try_start_15
iget-object v0, p0, Lcom/bbm/ui/e/ci;->c:Lcom/bbm/ui/e/ch;
invoke-static {v0}, Lcom/bbm/ui/e/ch;->a(Lcom/bbm/ui/e/ch;)Lcom/bbm/d/gm;
move-result-object v0
if-nez v0, :cond_1e
:goto_1d
:cond_1d
const-string v1, " - Lcom/bbm/ui/e/ci; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1e
iget-object v0, p0, Lcom/bbm/ui/e/ci;->c:Lcom/bbm/ui/e/ch;
invoke-static {v0}, Lcom/bbm/ui/e/ch;->a(Lcom/bbm/ui/e/ch;)Lcom/bbm/d/gm;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/dm;->d(Lcom/bbm/d/gm;)Ljava/lang/String;
move-result-object v0
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
const-string v2, "android.intent.action.VIEW"
invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/e/ci;->a:Lcom/bbm/d/fl;
iget-object v2, v2, Lcom/bbm/d/fl;->f:Ljava/lang/String;
invoke-static {v2, v0}, Lcom/bbm/util/dm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const/high16 v2, 0x1000
invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/Alaska;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2, v1}, Lcom/bbm/util/dm;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v2
if-nez v2, :cond_ac
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "TPA: app is not installed: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/e/ci;->a:Lcom/bbm/d/fl;
iget-object v1, v1, Lcom/bbm/d/fl;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " in "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-class v1, Lcom/bbm/ui/e/ch;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/e/ci;->c:Lcom/bbm/ui/e/ch;
invoke-static {v0}, Lcom/bbm/ui/e/ch;->b(Lcom/bbm/ui/e/ch;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/ci;->a:Lcom/bbm/d/fl;
iget-object v1, v1, Lcom/bbm/d/fl;->c:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/e/ci;->a:Lcom/bbm/d/fl;
iget-object v2, v2, Lcom/bbm/d/fl;->e:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/bbm/util/dm;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:try_end_8e
.catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_8e} :catch_8f
goto :goto_1d
:catch_8f
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error trying to invoke url for partner appid: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/bbm/ui/e/ci;->a:Lcom/bbm/d/fl;
iget-object v2, v2, Lcom/bbm/d/fl;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-array v2, v5, [Ljava/lang/Object;
aput-object v0, v2, v4
invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_1d
:cond_ac
:try_start_ac
iget-object v2, p0, Lcom/bbm/ui/e/ci;->a:Lcom/bbm/d/fl;
iget-boolean v2, v2, Lcom/bbm/d/fl;->g:Z
if-nez v2, :cond_d7
iget-object v0, p0, Lcom/bbm/ui/e/ci;->c:Lcom/bbm/ui/e/ch;
invoke-static {v0}, Lcom/bbm/ui/e/ch;->b(Lcom/bbm/ui/e/ch;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/ci;->c:Lcom/bbm/ui/e/ch;
invoke-static {v1}, Lcom/bbm/ui/e/ch;->b(Lcom/bbm/ui/e/ch;)Landroid/content/Context;
move-result-object v1
const v2, 0x7f0e056c
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/e/ci;->c:Lcom/bbm/ui/e/ch;
invoke-static {v2}, Lcom/bbm/ui/e/ch;->b(Lcom/bbm/ui/e/ch;)Landroid/content/Context;
move-result-object v2
const v3, 0x7f0e0562
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/bbm/util/dm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_1d
:cond_d7
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Invoke TPA Uri: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " in "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-class v2, Lcom/bbm/ui/e/ch;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/e/ci;->c:Lcom/bbm/ui/e/ch;
invoke-static {v0}, Lcom/bbm/ui/e/ch;->b(Lcom/bbm/ui/e/ch;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_105
.catch Landroid/content/ActivityNotFoundException; {:try_start_ac .. :try_end_105} :catch_8f
goto/16 :goto_1d
:cond_107
iget-object v0, p0, Lcom/bbm/ui/e/ci;->b:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/bbm/ui/e/ci;->c:Lcom/bbm/ui/e/ch;
invoke-static {v0}, Lcom/bbm/ui/e/ch;->b(Lcom/bbm/ui/e/ch;)Landroid/content/Context;
move-result-object v0
const/4 v1, 0x0
iget-object v2, p0, Lcom/bbm/ui/e/ci;->c:Lcom/bbm/ui/e/ch;
invoke-static {v2}, Lcom/bbm/ui/e/ch;->b(Lcom/bbm/ui/e/ch;)Landroid/content/Context;
move-result-object v2
const v3, 0x7f0e0564
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/bbm/util/dm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_1d
.end method