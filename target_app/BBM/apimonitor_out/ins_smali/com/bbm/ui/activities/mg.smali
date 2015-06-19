.class final Lcom/bbm/ui/activities/mg;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/mg;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onGlobalLayout()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/mg;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->o(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/EmoticonPanelViewLayout;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonPanelViewLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/mg;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/mg;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/bbm/ui/activities/GroupConversationActivity;Lcom/bbm/ui/c/fm;)V
return-void
.end method