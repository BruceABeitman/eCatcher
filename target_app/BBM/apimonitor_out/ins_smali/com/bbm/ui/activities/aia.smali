.class final Lcom/bbm/ui/activities/aia;
.super Ljava/lang/Object;
.source "StartupActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Lcom/bbm/ui/activities/StartupActivity;
.method constructor <init>(Lcom/bbm/ui/activities/StartupActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aia;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/aia;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->c(Lcom/bbm/ui/activities/StartupActivity;)Landroid/app/AlertDialog;
iget-object v0, p0, Lcom/bbm/ui/activities/aia;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/StartupActivity;->finish()V
return-void
.end method