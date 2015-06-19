.class final Lcom/bbm/ui/activities/io;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/io;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
new-instance v0, Lcom/bbm/ui/widget/i;
iget-object v1, p0, Lcom/bbm/ui/activities/io;->a:Lcom/bbm/ui/activities/ConversationActivity;
const v2, 0x7f0e04ee
const v3, 0x7f0e04ed
const v4, 0x7f020404
invoke-direct {v0, v1, v2, v3, v4}, Lcom/bbm/ui/widget/i;-><init>(Landroid/content/Context;III)V
iget-object v1, p0, Lcom/bbm/ui/activities/io;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/widget/i;->a(Landroid/view/View;)V
return-void
.end method