.class final Lcom/bbm/ui/activities/kd;
.super Ljava/lang/Object;
.source "FileSearchActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/FileSearchActivity;
.method constructor <init>(Lcom/bbm/ui/activities/FileSearchActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/kd;->a:Lcom/bbm/ui/activities/FileSearchActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/kd; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
const-string v2, "extra_selected_file_path"
iget-object v0, p0, Lcom/bbm/ui/activities/kd;->a:Lcom/bbm/ui/activities/FileSearchActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FileSearchActivity;->a(Lcom/bbm/ui/activities/FileSearchActivity;)Lcom/bbm/ui/activities/kh;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/bbm/ui/activities/kh;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/kd;->a:Lcom/bbm/ui/activities/FileSearchActivity;
const/4 v2, -0x1
invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/activities/FileSearchActivity;->setResult(ILandroid/content/Intent;)V
iget-object v0, p0, Lcom/bbm/ui/activities/kd;->a:Lcom/bbm/ui/activities/FileSearchActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/FileSearchActivity;->finish()V
const-string v1, " - Lcom/bbm/ui/activities/kd; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method