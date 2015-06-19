.class final Lcom/bbm/ui/activities/ju;
.super Lcom/bbm/ui/cj;
.source "FilePickerActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/FilePickerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/FilePickerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ju;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ju;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->finish()V
return-void
.end method
.method public final a(I)V
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
packed-switch p1, :pswitch_data_70
:goto_5
return-void
:pswitch_6
new-instance v0, Lcom/bbm/ui/b/k;
iget-object v1, p0, Lcom/bbm/ui/activities/ju;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-direct {v0, v1}, Lcom/bbm/ui/b/k;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e0328
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->setTitle(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/ju;->a:Lcom/bbm/ui/activities/FilePickerActivity;
const v2, 0x7f0e032c
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/FilePickerActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->d(Ljava/lang/String;)V
const v1, 0x7f0e0171
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->b(I)V
const v1, 0x7f0e00f4
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->a(I)V
new-instance v1, Lcom/bbm/ui/activities/jv;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/jv;-><init>(Lcom/bbm/ui/activities/ju;Lcom/bbm/ui/b/k;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/k;->show()V
goto :goto_5
:pswitch_37
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/activities/ju;->a:Lcom/bbm/ui/activities/FilePickerActivity;
const-class v3, Lcom/bbm/ui/activities/FileSearchActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v2, p0, Lcom/bbm/ui/activities/ju;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-virtual {v2, v1, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_5
:pswitch_46
invoke-static {}, Lcom/bbm/ui/activities/FilePickerActivity;->f()Z
move-result v2
if-nez v2, :cond_55
:goto_4c
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->b(Z)Z
iget-object v0, p0, Lcom/bbm/ui/activities/ju;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->j(Lcom/bbm/ui/activities/FilePickerActivity;)V
goto :goto_5
:cond_55
move v0, v1
goto :goto_4c
:pswitch_57
iget-object v0, p0, Lcom/bbm/ui/activities/ju;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->k(Lcom/bbm/ui/activities/FilePickerActivity;)Landroid/widget/LinearLayout;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/ju;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/FilePickerActivity;->k(Lcom/bbm/ui/activities/FilePickerActivity;)Landroid/widget/LinearLayout;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I
move-result v2
if-eqz v2, :cond_6d
:goto_69
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
goto :goto_5
:cond_6d
const/16 v1, 0x8
goto :goto_69
:pswitch_data_70
.packed-switch 0x0
:pswitch_6
:pswitch_37
:pswitch_46
:pswitch_57
.end packed-switch
.end method