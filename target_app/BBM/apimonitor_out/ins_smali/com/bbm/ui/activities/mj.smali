.class final Lcom/bbm/ui/activities/mj;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/mj; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->q(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/a/s;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/bbm/ui/a/s;->a(I)Lcom/bbm/g/ad;
move-result-object v5
iget-object v0, v5, Lcom/bbm/g/ad;->h:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_66
iget-object v1, p0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
const v0, 0x7f0a0456
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/bbm/ui/activities/GroupConversationActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->r(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/TextView;
move-result-object v0
const-string v1, "#7fd2ee"
invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->r(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0901ae
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, v5, Lcom/bbm/g/ad;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v2
iget-object v6, p0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
new-instance v0, Lcom/bbm/ui/activities/mk;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
move-object v1, p0
move-object v4, v2
invoke-direct/range {v0 .. v5}, Lcom/bbm/ui/activities/mk;-><init>(Lcom/bbm/ui/activities/mj;Lcom/bbm/g/o;Lcom/bbm/d/a;Lcom/bbm/g/o;Lcom/bbm/g/ad;)V
invoke-static {v6, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/bbm/ui/activities/GroupConversationActivity;Lcom/bbm/util/d/d;)Lcom/bbm/util/d/d;
iget-object v0, p0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->s(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/util/d/d;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/d/d;->c()V
:cond_66
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/bbm/ui/activities/mj; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method