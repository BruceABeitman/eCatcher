.class final Lcom/bbm/ui/activities/aae;
.super Landroid/os/Handler;
.source "OpenInBbmActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/OpenInBbmActivity;
.method constructor <init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aae;->a:Lcom/bbm/ui/activities/OpenInBbmActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 4
iget-object v1, p0, Lcom/bbm/ui/activities/aae;->a:Lcom/bbm/ui/activities/OpenInBbmActivity;
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/app/AlertDialog$Builder;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Lcom/bbm/ui/activities/OpenInBbmActivity;Landroid/app/AlertDialog$Builder;)V
return-void
.end method