.class final Lcom/bbm/ui/activities/ais;
.super Ljava/lang/Object;
.source "ViewChannelPostActivity.java"
.implements Landroid/content/DialogInterface$OnDismissListener;
.field final synthetic a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ais;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onDismiss(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/ais;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->f(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
iget-object v0, p0, Lcom/bbm/ui/activities/ais;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;)V
return-void
.end method