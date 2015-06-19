.class final Lcom/bbm/ui/activities/az;
.super Ljava/lang/Object;
.source "BroadcastActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ba;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/bbm/ui/activities/ay;
.method constructor <init>(Lcom/bbm/ui/activities/ay;Lcom/bbm/ui/activities/ba;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/az;->c:Lcom/bbm/ui/activities/ay;
iput-object p2, p0, Lcom/bbm/ui/activities/az;->a:Lcom/bbm/ui/activities/ba;
iput-object p3, p0, Lcom/bbm/ui/activities/az;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/az; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "deleteButton Clicked"
const-class v1, Lcom/bbm/ui/activities/BroadcastActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/az;->a:Lcom/bbm/ui/activities/ba;
iget-object v0, v0, Lcom/bbm/ui/activities/ba;->a:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/activities/az;->c:Lcom/bbm/ui/activities/ay;
iget-object v1, v1, Lcom/bbm/ui/activities/ay;->b:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/BroadcastActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0900f8
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/az;->c:Lcom/bbm/ui/activities/ay;
iget-object v0, v0, Lcom/bbm/ui/activities/ay;->b:Lcom/bbm/ui/activities/BroadcastActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/az;->b:Ljava/lang/String;
iget-object v0, v0, Lcom/bbm/ui/activities/BroadcastActivity;->a:Lcom/bbm/util/cs;
iget-object v2, v0, Lcom/bbm/util/cs;->a:Ljava/util/List;
invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
invoke-virtual {v0}, Lcom/bbm/util/cs;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/az;->c:Lcom/bbm/ui/activities/ay;
iget-object v0, v0, Lcom/bbm/ui/activities/ay;->b:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->c(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/util/cr;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
const-string v1, " - Lcom/bbm/ui/activities/az; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method