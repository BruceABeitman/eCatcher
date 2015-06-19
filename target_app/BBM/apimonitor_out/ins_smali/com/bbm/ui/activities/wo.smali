.class final Lcom/bbm/ui/activities/wo;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/wn;
.method constructor <init>(Lcom/bbm/ui/activities/wn;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/wo;->a:Lcom/bbm/ui/activities/wn;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/wo;->a:Lcom/bbm/ui/activities/wn;
iget-object v0, v0, Lcom/bbm/ui/activities/wn;->a:Lcom/bbm/ui/activities/MainActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->onShowDialog(Landroid/view/View;)V
return-void
.end method