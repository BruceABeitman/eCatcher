.class final Lcom/bbm/ui/activities/wh;
.super Ljava/lang/Object;
.source "MainActivity.java"
.implements Landroid/content/DialogInterface$OnDismissListener;
.field final synthetic a:Lcom/bbm/ui/activities/wg;
.method constructor <init>(Lcom/bbm/ui/activities/wg;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/wh;->a:Lcom/bbm/ui/activities/wg;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onDismiss(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/wh;->a:Lcom/bbm/ui/activities/wg;
iget-object v0, v0, Lcom/bbm/ui/activities/wg;->c:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
return-void
.end method