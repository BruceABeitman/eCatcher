.class final Lcom/bbm/ui/activities/mx;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/mw;
.method constructor <init>(Lcom/bbm/ui/activities/mw;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/mx;->a:Lcom/bbm/ui/activities/mw;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/mx;->a:Lcom/bbm/ui/activities/mw;
iget-object v0, v0, Lcom/bbm/ui/activities/mw;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/EmoticonInputPanel;
move-result-object v0
sget-object v1, Lcom/bbm/ui/bl;->b:Lcom/bbm/ui/bl;
invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V
return-void
.end method