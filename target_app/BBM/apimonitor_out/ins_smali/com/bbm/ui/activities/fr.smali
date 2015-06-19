.class final Lcom/bbm/ui/activities/fr;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Lcom/bbm/n/a;
.field final synthetic b:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/n/a;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/fr;->b:Lcom/bbm/ui/activities/ConversationActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/fr;->a:Lcom/bbm/n/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/fr;->b:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/fr;->a:Lcom/bbm/n/a;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/n/a;)V
return-void
.end method