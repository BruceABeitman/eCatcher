.class final Lcom/bbm/ui/activities/agw;
.super Ljava/lang/Object;
.source "ShareActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Landroid/content/Intent;
.field final synthetic b:Lcom/bbm/ui/activities/ShareActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ShareActivity;Landroid/content/Intent;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/agw;->a:Landroid/content/Intent;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/agw; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v6, 0x7f0e0564
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ahc;
if-eqz v0, :cond_d4
iget-object v1, p0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ShareActivity;->a(Lcom/bbm/ui/activities/ShareActivity;)Z
move-result v1
if-eqz v1, :cond_cb
iget-object v1, p0, Lcom/bbm/ui/activities/agw;->a:Landroid/content/Intent;
const-string v2, "appId"
invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
iget-object v3, v0, Lcom/bbm/ui/activities/ahc;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v2
iget-wide v2, v2, Lcom/bbm/d/gp;->v:J
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_48
iget-object v0, p0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;
invoke-virtual {v2, v6}, Lcom/bbm/ui/activities/ShareActivity;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;
const v4, 0x7f0e0562
invoke-virtual {v3, v4}, Lcom/bbm/ui/activities/ShareActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/bbm/ui/activities/ShareActivity;->a(Lcom/bbm/ui/activities/ShareActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:goto_47
const-string v1, " - Lcom/bbm/ui/activities/agw; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_48
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-nez v2, :cond_65
iget-object v0, p0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;
invoke-virtual {v2, v6}, Lcom/bbm/ui/activities/ShareActivity;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;
const v4, 0x7f0e0560
invoke-virtual {v3, v4}, Lcom/bbm/ui/activities/ShareActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/bbm/ui/activities/ShareActivity;->a(Lcom/bbm/ui/activities/ShareActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_47
:cond_65
iget-object v2, p0, Lcom/bbm/ui/activities/agw;->a:Landroid/content/Intent;
const-string v3, "context"
invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/bbm/ui/activities/agx;
invoke-direct {v3, p0, v0, v2}, Lcom/bbm/ui/activities/agx;-><init>(Lcom/bbm/ui/activities/agw;Lcom/bbm/ui/activities/ahc;Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/Alaska;->a()Lcom/bbm/f/a;
move-result-object v2
iget-object v4, p0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/ShareActivity;->b(Lcom/bbm/ui/activities/ShareActivity;)Lcom/bbm/util/cr;
move-result-object v4
invoke-static {v4}, Lcom/bbm/util/dm;->a(Lcom/bbm/util/cr;)Lcom/bbm/f/ac;
move-result-object v4
invoke-interface {v2, v4}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
iget-object v0, v0, Lcom/bbm/ui/activities/ahc;->c:Ljava/lang/String;
invoke-virtual {v2, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-wide v4, v0, Lcom/bbm/d/gp;->v:J
invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v2
iget-wide v4, v2, Lcom/bbm/d/gp;->v:J
invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v4
invoke-static {v1}, Lcom/bbm/d/z;->d(Ljava/lang/String;)Lcom/bbm/d/br;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Lcom/bbm/d/br;->a(Ljava/lang/String;)Lcom/bbm/d/br;
move-result-object v0
invoke-virtual {v4, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
new-instance v0, Lcom/bbm/ui/activities/agy;
invoke-direct {v0, p0, v1, v3}, Lcom/bbm/ui/activities/agy;-><init>(Lcom/bbm/ui/activities/agw;Ljava/lang/String;Landroid/os/Handler;)V
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
goto/16 :goto_47
:cond_cb
iget-object v1, p0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ahc;->c:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/ShareActivity;->a(Lcom/bbm/ui/activities/ShareActivity;Ljava/lang/String;)V
goto/16 :goto_47
:cond_d4
const-string v0, "Unable to get ViewHolder from View - will not start chat"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_47
.end method