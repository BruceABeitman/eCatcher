.class final Lcom/bbm/ui/activities/lz;
.super Lcom/bbm/ui/cj;
.source "GroupChatListActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupChatListActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupChatListActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/lz;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/lz;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupChatListActivity;->h()V
return-void
.end method
.method public final a(I)V
.registers 4
packed-switch p1, :pswitch_data_28
:goto_3
return-void
:pswitch_4
new-instance v0, Lcom/bbm/ui/b/k;
iget-object v1, p0, Lcom/bbm/ui/activities/lz;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-direct {v0, v1}, Lcom/bbm/ui/b/k;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e0521
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->setTitle(I)V
const v1, 0x7f0e0453
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->c(I)V
const/16 v1, 0x100
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->d(I)V
new-instance v1, Lcom/bbm/ui/activities/ma;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/ma;-><init>(Lcom/bbm/ui/activities/lz;Lcom/bbm/ui/b/k;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/k;->show()V
goto :goto_3
:pswitch_data_28
.packed-switch 0x0
:pswitch_4
.end packed-switch
.end method