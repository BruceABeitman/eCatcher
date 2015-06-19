.class final Lcom/instagram/feed/survey/j;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/feed/survey/b;
.field final synthetic b:Lcom/instagram/feed/survey/h;
.method constructor <init>(Lcom/instagram/feed/survey/h;Lcom/instagram/feed/survey/b;)V
.registers 3
iput-object p1, p0, Lcom/instagram/feed/survey/j;->b:Lcom/instagram/feed/survey/h;
iput-object p2, p0, Lcom/instagram/feed/survey/j;->a:Lcom/instagram/feed/survey/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/feed/survey/j; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/feed/survey/j;->a:Lcom/instagram/feed/survey/b;
iget-object v1, p0, Lcom/instagram/feed/survey/j;->b:Lcom/instagram/feed/survey/h;
invoke-static {v1}, Lcom/instagram/feed/survey/h;->b(Lcom/instagram/feed/survey/h;)Lcom/instagram/feed/g/a;
move-result-object v1
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Lcom/instagram/feed/survey/o;->a(Lcom/instagram/feed/survey/b;Lcom/instagram/common/analytics/e;Z)V
iget-object v0, p0, Lcom/instagram/feed/survey/j;->b:Lcom/instagram/feed/survey/h;
invoke-static {v0}, Lcom/instagram/feed/survey/h;->c(Lcom/instagram/feed/survey/h;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
const-string v1, " - Lcom/instagram/feed/survey/j; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method