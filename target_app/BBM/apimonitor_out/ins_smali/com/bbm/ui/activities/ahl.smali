.class final Lcom/bbm/ui/activities/ahl;
.super Ljava/lang/Object;
.source "ShowGroupBarCodeActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ahl;->a:Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ahl; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
const-string v0, "mCaptureSwitchButtonn Clicked"
const-class v1, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ahl;->a:Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->a(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;)Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ahl;->a:Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ahl;->a:Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/ahl;->a:Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
iget-object v3, v0, Lcom/bbm/g/a;->r:Ljava/lang/String;
iget-object v0, v0, Lcom/bbm/g/a;->v:Ljava/lang/String;
iput-object v3, v1, Lcom/bbm/h/aq;->d:Ljava/lang/String;
iput-object v0, v1, Lcom/bbm/h/aq;->c:Ljava/lang/String;
invoke-static {v2, v4, v0, v4}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;ILjava/lang/String;Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/ahl;->a:Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->finish()V
const-string v1, " - Lcom/bbm/ui/activities/ahl; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method