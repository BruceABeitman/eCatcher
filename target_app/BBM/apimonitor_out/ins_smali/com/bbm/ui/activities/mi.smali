.class final Lcom/bbm/ui/activities/mi;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/mi;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/mi; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/ui/activities/mi; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/mi; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x2
const/4 v2, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/mi;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->p(Lcom/bbm/ui/activities/GroupConversationActivity;)Z
move-result v0
if-eqz v0, :cond_1f
if-eq p2, v3, :cond_e
if-ne p2, v2, :cond_1f
:cond_e
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/mi;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->e(Lcom/bbm/ui/activities/GroupConversationActivity;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/bbm/g/an;->a(Ljava/lang/String;)Lcom/bbm/g/at;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:cond_1f
iget-object v0, p0, Lcom/bbm/ui/activities/mi;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->j(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v0
iget-object v1, p0, Lcom/bbm/ui/activities/mi;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->j(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v1
invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-ne v0, v1, :cond_77
iget-object v0, p0, Lcom/bbm/ui/activities/mi;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->j(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/mi;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->j(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getBottom()I
move-result v0
iget-object v1, p0, Lcom/bbm/ui/activities/mi;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->j(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I
move-result v1
if-gt v0, v1, :cond_77
iget-object v0, p0, Lcom/bbm/ui/activities/mi;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->j(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getTranscriptMode()I
move-result v0
if-eq v0, v3, :cond_76
iget-object v0, p0, Lcom/bbm/ui/activities/mi;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->j(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V
:goto_76
:cond_76
const-string v1, " - Lcom/bbm/ui/activities/mi; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_77
iget-object v0, p0, Lcom/bbm/ui/activities/mi;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->j(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getTranscriptMode()I
move-result v0
if-eq v0, v2, :cond_76
iget-object v0, p0, Lcom/bbm/ui/activities/mi;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->j(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setTranscriptMode(I)V
goto :goto_76
.end method