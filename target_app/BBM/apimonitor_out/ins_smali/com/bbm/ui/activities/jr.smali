.class final Lcom/bbm/ui/activities/jr;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/FilePickerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/FilePickerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/jr;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/jr; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v3, 0x7f0e0553
const-string v0, "headerActionBar Positive Button Clicked"
const-class v1, Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/jr;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->g(Lcom/bbm/ui/activities/FilePickerActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_7b
iget-object v0, p0, Lcom/bbm/ui/activities/jr;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->f(Lcom/bbm/ui/activities/FilePickerActivity;)Landroid/widget/GridView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/jz;
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/jz;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_58
new-instance v0, Lcom/bbm/ui/b/o;
iget-object v2, p0, Lcom/bbm/ui/activities/jr;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-direct {v0, v2}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v2, 0x7f0e032f
invoke-virtual {v0, v2}, Lcom/bbm/ui/b/o;->setTitle(I)V
const v2, 0x7f0e032e
invoke-virtual {v0, v2}, Lcom/bbm/ui/b/o;->e(I)V
const v2, 0x7f0e0171
invoke-virtual {v0, v2}, Lcom/bbm/ui/b/o;->b(I)V
invoke-virtual {v0, v3}, Lcom/bbm/ui/b/o;->a(I)V
new-instance v2, Lcom/bbm/ui/activities/js;
invoke-direct {v2, p0, v1}, Lcom/bbm/ui/activities/js;-><init>(Lcom/bbm/ui/activities/jr;Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
:goto_57
const-string v1, " - Lcom/bbm/ui/activities/jr; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_58
iget-object v0, p0, Lcom/bbm/ui/activities/jr;->a:Lcom/bbm/ui/activities/FilePickerActivity;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/bbm/ui/activities/jr;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/FilePickerActivity;->h(Lcom/bbm/ui/activities/FilePickerActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/FilePickerActivity;->b(Lcom/bbm/ui/activities/FilePickerActivity;Ljava/lang/String;)V
goto :goto_57
:cond_7b
new-instance v0, Lcom/bbm/ui/b/o;
iget-object v1, p0, Lcom/bbm/ui/activities/jr;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-direct {v0, v1}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e0331
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
const v1, 0x7f0e0330
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->a()V
invoke-virtual {v0, v3}, Lcom/bbm/ui/b/o;->b(I)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
goto :goto_57
.end method