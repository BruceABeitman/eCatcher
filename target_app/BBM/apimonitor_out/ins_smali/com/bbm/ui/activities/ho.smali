.class final Lcom/bbm/ui/activities/ho;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ho; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
const/4 v0, 0x0
const-string v2, "on message item long press"
const-class v3, Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2, v3}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v2, p0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->av(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/TextView;
move-result-object v2
if-eqz v2, :cond_22
iget-object v2, p0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v3, p0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->av(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/TextView;
move-result-object v3
const v4, 0x7f09006c
const v5, 0x7f09006a
invoke-static {v2, v3, v4, v5}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Landroid/widget/TextView;II)V
:cond_22
iget-object v2, p0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->ai(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/e/au;
move-result-object v2
invoke-virtual {v2, p3}, Lcom/bbm/ui/e/au;->a(I)Lcom/bbm/d/fg;
move-result-object v2
invoke-static {v2}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/fg;)Z
move-result v3
if-eqz v3, :cond_33
:goto_32
move v2, v0
const-string v1, " - Lcom/bbm/ui/activities/ho; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_33
iget-object v3, p0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v4, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v5, Lcom/bbm/d/fj;->b:Lcom/bbm/d/fj;
if-ne v4, v5, :cond_3c
move v0, v1
:cond_3c
invoke-static {v3, v0}, Lcom/bbm/ui/activities/ConversationActivity;->f(Lcom/bbm/ui/activities/ConversationActivity;Z)Z
iget-object v0, p0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aw(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/ct;
invoke-static {p2}, Lcom/bbm/ui/ct;->a(Landroid/view/View;)Landroid/view/View;
move-result-object v0
new-instance v3, Lcom/bbm/ui/activities/hp;
invoke-direct {v3, p0, v2, v0, p2}, Lcom/bbm/ui/activities/hp;-><init>(Lcom/bbm/ui/activities/ho;Lcom/bbm/d/fg;Landroid/view/View;Landroid/view/View;)V
invoke-static {v3}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
move v0, v1
goto :goto_32
.end method