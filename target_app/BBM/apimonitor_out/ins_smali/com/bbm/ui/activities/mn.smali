.class final Lcom/bbm/ui/activities/mn;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/mn;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 6
iget-object v0, p0, Lcom/bbm/ui/activities/mn;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
sparse-switch v0, :sswitch_data_5e
:goto_f
return-void
:sswitch_10
iget-object v0, p0, Lcom/bbm/ui/activities/mn;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->b()V
goto :goto_f
:sswitch_16
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/mn;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->e(Lcom/bbm/ui/activities/GroupConversationActivity;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/bbm/g/an;->b(Ljava/lang/String;)Lcom/bbm/g/be;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
goto :goto_f
:sswitch_28
iget-object v0, p0, Lcom/bbm/ui/activities/mn;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->t(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/activities/na;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/activities/na;->c()V
goto :goto_f
:sswitch_32
iget-object v0, p0, Lcom/bbm/ui/activities/mn;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupConversationActivity;->a:Lcom/bbm/ui/activities/nb;
invoke-virtual {v0}, Lcom/bbm/ui/activities/nb;->c()V
goto :goto_f
:sswitch_3a
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/mn;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
const-class v2, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "groupConversationUri"
iget-object v2, p0, Lcom/bbm/ui/activities/mn;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupConversationActivity;->e(Lcom/bbm/ui/activities/GroupConversationActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "groupUri"
iget-object v2, p0, Lcom/bbm/ui/activities/mn;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/mn;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_f
nop
:sswitch_data_5e
.sparse-switch
0x7f0a0087 -> :sswitch_3a
0x7f0a0088 -> :sswitch_16
0x7f0a0089 -> :sswitch_28
0x7f0a008c -> :sswitch_32
0x7f0a0098 -> :sswitch_10
.end sparse-switch
.end method