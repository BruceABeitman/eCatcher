.class final Lcom/bbm/ui/activities/fw;
.super Lcom/bbm/ui/cj;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->I(Lcom/bbm/ui/activities/ConversationActivity;)V
return-void
.end method
.method public final a(I)V
.registers 6
const/4 v3, 0x1
packed-switch p1, :pswitch_data_60
:goto_4
return-void
:pswitch_5
iget-object v0, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
new-instance v1, Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
const-class v2, Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
:try_start_26
const-string v2, "com.bbm.excludedcontacts"
iget-object v0, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/es;
iget-object v0, v0, Lcom/bbm/d/es;->r:Ljava/util/List;
invoke-static {v0}, Lcom/google/b/c/p;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
:try_end_3d
.catch Lcom/bbm/j/z; {:try_start_26 .. :try_end_3d} :catch_5d
:goto_3d
const-string v0, "com.bbm.showifbusy"
invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0, v1, v3}, Lcom/bbm/ui/activities/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_4
:pswitch_48
iget-object v0, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->b()V
goto :goto_4
:catch_5d
move-exception v0
goto :goto_3d
nop
:pswitch_data_60
.packed-switch 0x0
:pswitch_5
:pswitch_48
.end packed-switch
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/fw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->H(Lcom/bbm/ui/activities/ConversationActivity;)V
return-void
.end method