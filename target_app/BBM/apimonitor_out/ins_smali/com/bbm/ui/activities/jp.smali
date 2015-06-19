.class final Lcom/bbm/ui/activities/jp;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"
.implements Lcom/bbm/ui/p;
.field final synthetic a:Lcom/bbm/ui/activities/FilePickerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/FilePickerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/jp;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 3
if-nez p1, :cond_19
const/4 v0, 0x1
:goto_3
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->a(Z)Z
iget-object v0, p0, Lcom/bbm/ui/activities/jp;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->d(Lcom/bbm/ui/activities/FilePickerActivity;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/bbm/ui/activities/jp;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->b(Lcom/bbm/ui/activities/FilePickerActivity;)V
:cond_13
iget-object v0, p0, Lcom/bbm/ui/activities/jp;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/FilePickerActivity;->e(Lcom/bbm/ui/activities/FilePickerActivity;)Z
return-void
:cond_19
const/4 v0, 0x0
goto :goto_3
.end method