.class final Lcom/bbm/ui/activities/ao;
.super Ljava/lang/Object;
.source "BroadcastActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/BroadcastActivity;
.method constructor <init>(Lcom/bbm/ui/activities/BroadcastActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ao;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ao; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "mOnClickListener Clicked: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-class v1, Lcom/bbm/ui/activities/BroadcastActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
sparse-switch v0, :sswitch_data_96
:goto_1f
const-string v1, " - Lcom/bbm/ui/activities/ao; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_20
:try_start_20
iget-object v0, p0, Lcom/bbm/ui/activities/ao;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->a()Ljava/util/ArrayList;
move-result-object v0
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/activities/ao;->a:Lcom/bbm/ui/activities/BroadcastActivity;
const-class v3, Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "com.bbm.excludedcontacts"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
const-string v0, "com.bbm.selectall"
const/4 v2, 0x1
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v0, "com.bbm.showifbusy"
const/4 v2, 0x1
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/ao;->a:Lcom/bbm/ui/activities/BroadcastActivity;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/BroadcastActivity;->startActivityForResult(Landroid/content/Intent;I)V
:try_end_46
.catch Lcom/bbm/j/z; {:try_start_20 .. :try_end_46} :catch_47
goto :goto_1f
:catch_47
move-exception v0
goto :goto_1f
:sswitch_49
:try_start_49
iget-object v0, p0, Lcom/bbm/ui/activities/ao;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->a()Ljava/util/ArrayList;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ao;->a:Lcom/bbm/ui/activities/BroadcastActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/BroadcastActivity;->b:Lcom/bbm/d/a;
iget-object v2, p0, Lcom/bbm/ui/activities/ao;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/BroadcastActivity;->a(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/widget/EditText;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/util/List;)V
iget-object v1, p0, Lcom/bbm/ui/activities/ao;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/BroadcastActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const/high16 v2, 0x7f0d
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v4, v5
invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ao;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-static {v1, v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ao;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->finish()V
:try_end_8c
.catch Lcom/bbm/j/z; {:try_start_49 .. :try_end_8c} :catch_8d
goto :goto_1f
:catch_8d
move-exception v0
goto :goto_1f
:sswitch_8f
iget-object v0, p0, Lcom/bbm/ui/activities/ao;->a:Lcom/bbm/ui/activities/BroadcastActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->finish()V
goto :goto_1f
nop
:sswitch_data_96
.sparse-switch
0x7f0a02af -> :sswitch_20
0x7f0a054b -> :sswitch_8f
0x7f0a054d -> :sswitch_49
.end sparse-switch
.end method