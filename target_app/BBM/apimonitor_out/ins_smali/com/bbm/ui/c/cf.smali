.class final Lcom/bbm/ui/c/cf;
.super Ljava/lang/Object;
.source "DiscoverChannelsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/c/cd;
.method constructor <init>(Lcom/bbm/ui/c/cd;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/cf;->a:Lcom/bbm/ui/c/cd;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/cf; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/bbm/ui/c/cf;->a:Lcom/bbm/ui/c/cd;
invoke-static {v0}, Lcom/bbm/ui/c/cd;->b(Lcom/bbm/ui/c/cd;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v1, p0, Lcom/bbm/ui/c/cf;->a:Lcom/bbm/ui/c/cd;
invoke-static {v1}, Lcom/bbm/ui/c/cd;->a(Lcom/bbm/ui/c/cd;)Landroid/widget/GridLayout;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/widget/GridLayout;->indexOfChild(Landroid/view/View;)I
move-result v1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ev;
if-eqz v0, :cond_29
iget-object v1, p0, Lcom/bbm/ui/c/cf;->a:Lcom/bbm/ui/c/cd;
invoke-static {v1}, Lcom/bbm/ui/c/cd;->c(Lcom/bbm/ui/c/cd;)Landroid/content/Context;
move-result-object v1
iget-object v0, v0, Lcom/bbm/d/ev;->a:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;)V
:cond_29
:goto_29
:try_end_29
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a
const-string v1, " - Lcom/bbm/ui/c/cf; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_2a
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_29
.end method