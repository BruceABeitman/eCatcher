.class final Lcom/bbm/ui/e/u;
.super Ljava/lang/Object;
.source "FileTransferHolder.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/ui/e/t;
.method constructor <init>(Lcom/bbm/ui/e/t;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v2, v2, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v2}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/ui/e/s;)Lcom/bbm/d/fg;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v3, v3, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v3}, Lcom/bbm/ui/e/s;->b(Lcom/bbm/ui/e/s;)Lcom/bbm/d/a;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v4, v4, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v4}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/ui/e/s;)Lcom/bbm/d/fg;
move-result-object v4
iget-object v4, v4, Lcom/bbm/d/fg;->h:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/d/a;->H(Ljava/lang/String;)Lcom/bbm/d/ex;
move-result-object v3
iget-object v4, v3, Lcom/bbm/d/ex;->m:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v4, v5, :cond_2c
iget-object v4, v2, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v4, v5, :cond_2d
:goto_2c
:cond_2c
return v0
:cond_2d
iget-object v4, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v4, v4, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v4, v3}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/ui/e/s;Lcom/bbm/d/ex;)V
sget-object v3, Lcom/bbm/ui/e/ad;->a:[I
iget-object v4, v2, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
invoke-virtual {v4}, Lcom/bbm/d/fk;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_16e
:goto_41
move v0, v1
goto :goto_2c
:pswitch_43
const-string v2, "FileTransfer Clicked"
const-class v3, Lcom/bbm/ui/e/s;
invoke-static {v2, v3}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v2, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v2, v2, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v2}, Lcom/bbm/ui/e/s;->c(Lcom/bbm/ui/e/s;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_e9
iget-object v2, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v2, v2, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v2}, Lcom/bbm/ui/e/s;->c(Lcom/bbm/ui/e/s;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-nez v2, :cond_e9
const-string v0, "audio/amr"
iget-object v2, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v2, v2, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v2}, Lcom/bbm/ui/e/s;->c(Lcom/bbm/ui/e/s;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a4
new-instance v0, Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v2, v2, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v2}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v2
const-class v3, Lcom/bbm/ui/activities/AudioPlayerActivity;
invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v2, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v2, v2, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v2}, Lcom/bbm/ui/e/s;->e(Lcom/bbm/ui/e/s;)Ljava/io/File;
move-result-object v2
invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v3, v3, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v3}, Lcom/bbm/ui/e/s;->c(Lcom/bbm/ui/e/s;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v2, v2, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v2}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_41
:cond_a4
const-string v0, "text/x-vcalendar"
iget-object v2, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v2, v2, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v2}, Lcom/bbm/ui/e/s;->c(Lcom/bbm/ui/e/s;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d0
iget-object v0, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v0, v0, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v0}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v2, v2, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v2}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v2
const v3, 0x7f0e034f
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
goto/16 :goto_41
:cond_d0
iget-object v0, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v0, v0, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
iget-object v2, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v2, v2, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v2}, Lcom/bbm/ui/e/s;->e(Lcom/bbm/ui/e/s;)Ljava/io/File;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v3, v3, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v3}, Lcom/bbm/ui/e/s;->c(Lcom/bbm/ui/e/s;)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v2, v3}, Lcom/bbm/ui/e/s;->a(Lcom/bbm/ui/e/s;Ljava/io/File;Ljava/lang/String;)V
goto/16 :goto_41
:cond_e9
const-string v2, "mime type is NULL or empty"
new-array v3, v0, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v2, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v2, v2, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v2}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v3, v3, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v3}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e0351
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V
goto/16 :goto_41
:pswitch_110
const-string v3, "PictureTransfer Clicked"
const-class v4, Lcom/bbm/ui/e/s;
invoke-static {v3, v4}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v3, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v3, v3, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v3}, Lcom/bbm/ui/e/s;->b(Lcom/bbm/ui/e/s;)Lcom/bbm/d/a;
move-result-object v3
iget-object v2, v2, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-virtual {v3, v2}, Lcom/bbm/d/a;->w(Ljava/lang/String;)Lcom/bbm/d/fs;
move-result-object v2
iget-object v3, v2, Lcom/bbm/d/fs;->r:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v3, v4, :cond_2c
iget-object v0, v2, Lcom/bbm/d/fs;->i:Ljava/lang/String;
if-eqz v0, :cond_137
iget-object v0, v2, Lcom/bbm/d/fs;->i:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_13a
:cond_137
move v0, v1
goto/16 :goto_2c
:cond_13a
new-instance v3, Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v0, v0, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v0}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v0
const-class v4, Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v0, "extra_image_path"
iget-object v4, v2, Lcom/bbm/d/fs;->i:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "extra_mime_type"
iget-object v4, v2, Lcom/bbm/d/fs;->a:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "extra_suggested_filename"
iget-object v2, v2, Lcom/bbm/d/fs;->o:Ljava/lang/String;
invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/e/u;->a:Lcom/bbm/ui/e/t;
iget-object v0, v0, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;
invoke-static {v0}, Lcom/bbm/ui/e/s;->d(Lcom/bbm/ui/e/s;)Landroid/content/Context;
move-result-object v0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_41
nop
:pswitch_data_16e
.packed-switch 0x1
:pswitch_43
:pswitch_110
:pswitch_110
.end packed-switch
.end method