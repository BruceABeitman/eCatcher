.class final Lcom/bbm/ui/activities/mp;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/mo;
.method constructor <init>(Lcom/bbm/ui/activities/mo;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/mp;->a:Lcom/bbm/ui/activities/mo;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/mp;->a:Lcom/bbm/ui/activities/mo;
iget-object v0, v0, Lcom/bbm/ui/activities/mo;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->u(Lcom/bbm/ui/activities/GroupConversationActivity;)V
return-void
.end method