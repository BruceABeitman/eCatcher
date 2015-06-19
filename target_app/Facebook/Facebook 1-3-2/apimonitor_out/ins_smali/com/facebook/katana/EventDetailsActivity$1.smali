.class  Lcom/facebook/katana/EventDetailsActivity$1;
.super Ljava/lang/Object;
.source "EventDetailsActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/EventDetailsActivity;
.method constructor <init>(Lcom/facebook/katana/EventDetailsActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/EventDetailsActivity$1;->this$0:Lcom/facebook/katana/EventDetailsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/EventDetailsActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x0
iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity$1;->this$0:Lcom/facebook/katana/EventDetailsActivity;
#getter for: Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v1}, Lcom/facebook/katana/EventDetailsActivity;->access$12(Lcom/facebook/katana/EventDetailsActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/EventDetailsActivity$1;->this$0:Lcom/facebook/katana/EventDetailsActivity;
iget-object v3, p0, Lcom/facebook/katana/EventDetailsActivity$1;->this$0:Lcom/facebook/katana/EventDetailsActivity;
#getter for: Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;
invoke-static {v3}, Lcom/facebook/katana/EventDetailsActivity;->access$10(Lcom/facebook/katana/EventDetailsActivity;)Lcom/facebook/katana/EventDetailsAdapter;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/katana/EventDetailsAdapter;->getEventId()J
move-result-wide v3
invoke-static {p2}, Lcom/facebook/katana/service/api/FacebookEvent;->getRsvpStatus(I)Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
move-result-object v5
invoke-virtual {v1, v2, v3, v4, v5}, Lcom/facebook/katana/binding/AppSession;->eventRsvp(Landroid/content/Context;JLcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;)Ljava/lang/String;
iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity$1;->this$0:Lcom/facebook/katana/EventDetailsActivity;
const v2, 0x7f0b0020
invoke-virtual {v1, v2}, Lcom/facebook/katana/EventDetailsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity$1;->this$0:Lcom/facebook/katana/EventDetailsActivity;
invoke-virtual {v1, v6}, Lcom/facebook/katana/EventDetailsActivity;->dismissDialog(I)V
const-string v1, " - Lcom/facebook/katana/EventDetailsActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method