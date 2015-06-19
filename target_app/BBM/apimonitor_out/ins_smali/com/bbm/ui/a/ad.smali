.class final Lcom/bbm/ui/a/ad;
.super Ljava/lang/Object;
.source "UpdatesAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/a/z;
.method constructor <init>(Lcom/bbm/ui/a/z;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/a/ad;->a:Lcom/bbm/ui/a/z;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/a/ad; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v1, 0x7f0a007d
iget-object v0, p0, Lcom/bbm/ui/a/ad;->a:Lcom/bbm/ui/a/z;
invoke-static {v0}, Lcom/bbm/ui/a/z;->c(Lcom/bbm/ui/a/z;)Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->b(I)V
iget-object v0, p0, Lcom/bbm/ui/a/ad;->a:Lcom/bbm/ui/a/z;
invoke-static {v0}, Lcom/bbm/ui/a/z;->c(Lcom/bbm/ui/a/z;)Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(I)V
const-string v1, " - Lcom/bbm/ui/a/ad; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method