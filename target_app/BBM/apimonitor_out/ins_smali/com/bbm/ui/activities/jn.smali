.class final Lcom/bbm/ui/activities/jn;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"
.implements Lcom/bbm/ui/p;
.field final synthetic a:Lcom/bbm/ui/activities/FilePickerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/FilePickerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/jn;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 4
packed-switch p1, :pswitch_data_38
const/4 v0, 0x0
:goto_4
if-eqz v0, :cond_b
iget-object v1, p0, Lcom/bbm/ui/activities/jn;->a:Lcom/bbm/ui/activities/FilePickerActivity;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->a(Lcom/bbm/ui/activities/FilePickerActivity;Ljava/lang/String;)V
:cond_b
return-void
:pswitch_c
sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;
invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_17
sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;
invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_22
sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;
invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_2d
sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;
invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:pswitch_data_38
.packed-switch 0x0
:pswitch_c
:pswitch_17
:pswitch_22
:pswitch_2d
.end packed-switch
.end method