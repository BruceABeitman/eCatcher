.class final Lcom/bbm/ui/activities/afg;
.super Ljava/lang/Object;
.source "SetAsActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/SetAsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SetAsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/afg; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SetAsActivity;->a(Lcom/bbm/ui/activities/SetAsActivity;)Lcom/bbm/ui/activities/afi;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/bbm/ui/activities/afi;->a(I)Lcom/bbm/ui/activities/afk;
move-result-object v0
iget v0, v0, Lcom/bbm/ui/activities/afk;->a:I
packed-switch v0, :pswitch_data_ae
:cond_10
:goto_10
const-string v1, " - Lcom/bbm/ui/activities/afg; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_11
const-string v0, "set as bbm pic OnItemClick"
const-class v1, Lcom/bbm/ui/activities/SetAsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
:try_start_18
iget-object v0, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
const/4 v1, 0x1
new-instance v2, Ljava/io/File;
iget-object v3, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/SetAsActivity;->b(Lcom/bbm/ui/activities/SetAsActivity;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v2
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lcom/bbm/ui/el;->a(Landroid/app/Activity;ILandroid/net/Uri;Z)Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/SetAsActivity;->finish()V
:try_end_36
.catch Ljava/io/IOException; {:try_start_18 .. :try_end_36} :catch_37
goto :goto_10
:catch_37
move-exception v0
iget-object v1, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/SetAsActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/SetAsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e011f
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v4}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_10
:pswitch_52
const-string v0, "set contact picture onClick"
const-class v1, Lcom/bbm/ui/activities/SetAsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.PICK"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "vnd.android.cursor.dir/contact"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
const/4 v2, 0x2
invoke-virtual {v1, v0, v2}, Lcom/bbm/ui/activities/SetAsActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_10
:pswitch_6c
:try_start_6c
const-string v0, "set as wallpaper OnItemClick"
const-class v1, Lcom/bbm/ui/activities/SetAsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
move-result-object v0
new-instance v1, Ljava/io/File;
iget-object v2, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/SetAsActivity;->b(Lcom/bbm/ui/activities/SetAsActivity;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
iget-object v0, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
const v2, 0x7f0e0663
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/SetAsActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/afg;->a:Lcom/bbm/ui/activities/SetAsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/SetAsActivity;->finish()V
:try_end_9f
.catch Ljava/io/FileNotFoundException; {:try_start_6c .. :try_end_9f} :catch_a1
.catch Ljava/io/IOException; {:try_start_6c .. :try_end_9f} :catch_a7
goto/16 :goto_10
:catch_a1
move-exception v0
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
goto/16 :goto_10
:catch_a7
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_10
nop
:pswitch_data_ae
.packed-switch 0x1
:pswitch_11
:pswitch_52
:pswitch_6c
.end packed-switch
.end method