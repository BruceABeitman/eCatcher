.class final Lcom/bbm/ui/activities/zw;
.super Ljava/lang/Object;
.source "OpenInBbmActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Lcom/bbm/ui/activities/OpenInBbmActivity;
.method constructor <init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/zw;->a:Lcom/bbm/ui/activities/OpenInBbmActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/zw;->a:Lcom/bbm/ui/activities/OpenInBbmActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->finish()V
return-void
.end method