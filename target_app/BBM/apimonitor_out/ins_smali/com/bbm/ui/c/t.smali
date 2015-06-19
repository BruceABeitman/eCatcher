.class final Lcom/bbm/ui/c/t;
.super Ljava/lang/Object;
.source "ChannelDetailsFragment.java"
.implements Landroid/view/View$OnLongClickListener;
.field final synthetic a:Lcom/bbm/ui/c/l;
.method constructor <init>(Lcom/bbm/ui/c/l;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/t;->a:Lcom/bbm/ui/c/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onLongClick(Landroid/view/View;)Z
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/t; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x0
iget-object v0, p0, Lcom/bbm/ui/c/t;->a:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->h(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/activities/cn;
move-result-object v0
iget-object v0, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
iget-object v1, p0, Lcom/bbm/ui/c/t;->a:Lcom/bbm/ui/c/l;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
new-instance v3, Lcom/bbm/ui/slidingmenu/a;
const v4, 0x7f0a0037
const v5, 0x7f020271
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
const v6, 0x7f0e0197
invoke-virtual {v1, v6}, Lcom/bbm/ui/c/l;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v3, v4, v5, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/ui/c/u;
invoke-direct {v3, v1}, Lcom/bbm/ui/c/u;-><init>(Lcom/bbm/ui/c/l;)V
iput-object v3, v0, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
invoke-virtual {v0, v2, v7, v7}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
iget-object v0, p0, Lcom/bbm/ui/c/t;->a:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->h(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/activities/cn;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/bbm/ui/c/t;->a:Lcom/bbm/ui/c/l;
invoke-static {v0}, Lcom/bbm/ui/c/l;->h(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/activities/cn;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/activities/cn;->o()V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/bbm/ui/c/t; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method