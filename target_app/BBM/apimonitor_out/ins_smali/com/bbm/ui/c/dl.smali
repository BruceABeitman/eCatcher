.class final Lcom/bbm/ui/c/dl;
.super Ljava/lang/Object;
.source "GroupsFragment.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/bbm/ui/c/de;
.method constructor <init>(Lcom/bbm/ui/c/de;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/dl;->a:Lcom/bbm/ui/c/de;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/dl; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/c/dl;->a:Lcom/bbm/ui/c/de;
invoke-static {v0}, Lcom/bbm/ui/c/de;->c(Lcom/bbm/ui/c/de;)Lcom/bbm/ui/ee;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/bbm/ui/ee;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/ds;
sget-object v1, Lcom/bbm/ui/c/di;->a:[I
iget-object v2, v0, Lcom/bbm/ui/c/ds;->a:Lcom/bbm/ui/c/dt;
invoke-virtual {v2}, Lcom/bbm/ui/c/dt;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_30
:goto_19
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/bbm/ui/c/dl; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:pswitch_1b
iget-object v0, v0, Lcom/bbm/ui/c/ds;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/g/a;
iget-object v1, p0, Lcom/bbm/ui/c/dl;->a:Lcom/bbm/ui/c/de;
invoke-static {v1, v0}, Lcom/bbm/ui/c/de;->a(Lcom/bbm/ui/c/de;Lcom/bbm/g/a;)V
goto :goto_19
:pswitch_25
iget-object v1, p0, Lcom/bbm/ui/c/dl;->a:Lcom/bbm/ui/c/de;
iget-object v0, v0, Lcom/bbm/ui/c/ds;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/g/ai;
invoke-static {v1, v0}, Lcom/bbm/ui/c/de;->a(Lcom/bbm/ui/c/de;Lcom/bbm/g/ai;)V
goto :goto_19
nop
:pswitch_data_30
.packed-switch 0x1
:pswitch_1b
:pswitch_25
.end packed-switch
.end method