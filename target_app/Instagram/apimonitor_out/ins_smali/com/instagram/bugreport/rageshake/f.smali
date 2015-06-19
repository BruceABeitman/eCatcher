.class public final Lcom/instagram/bugreport/rageshake/f;
.super Landroid/os/AsyncTask;
.source "SaveFlytrapInfoTask.java"
.field private a:Landroid/graphics/Bitmap;
.field private b:Landroid/app/Activity;
.field private c:Landroid/net/Uri;
.field private d:Landroid/net/Uri;
.field private e:Landroid/net/Uri;
.field private f:Landroid/content/Context;
.field private g:Lcom/instagram/ui/dialog/f;
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/app/Activity;)V
.registers 4
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p2, p0, Lcom/instagram/bugreport/rageshake/f;->b:Landroid/app/Activity;
invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->f:Landroid/content/Context;
iput-object p1, p0, Lcom/instagram/bugreport/rageshake/f;->a:Landroid/graphics/Bitmap;
return-void
.end method
.method private a(Landroid/content/Intent;)V
.registers 4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/instagram/bugreport/rageshake/f;->d:Landroid/net/Uri;
if-eqz v1, :cond_12
iget-object v1, p0, Lcom/instagram/bugreport/rageshake/f;->d:Landroid/net/Uri;
invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_12
iget-object v1, p0, Lcom/instagram/bugreport/rageshake/f;->e:Landroid/net/Uri;
if-eqz v1, :cond_1f
iget-object v1, p0, Lcom/instagram/bugreport/rageshake/f;->e:Landroid/net/Uri;
invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_1f
const-string v1, "RageShakeActivity.INTENT_EXTRA_OTHER_ATTACHMENT_FILE_PATHS"
invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
return-void
.end method
.method private varargs b()Ljava/lang/Void;
.registers 5
iget-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->a:Landroid/graphics/Bitmap;
new-instance v1, Ljava/io/File;
iget-object v2, p0, Lcom/instagram/bugreport/rageshake/f;->f:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v2
const-string v3, "ig_bugreport.png"
invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-static {v0, v1}, Lcom/instagram/common/d/a;->a(Landroid/graphics/Bitmap;Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->c:Landroid/net/Uri;
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/instagram/bugreport/rageshake/f;->f:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v1
const-string v2, "logcat.txt"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-static {v0}, Lcom/instagram/common/d/a;->a(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->d:Landroid/net/Uri;
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/instagram/bugreport/rageshake/f;->f:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v1
const-string v2, "stacktrace-dump.txt"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-static {v0}, Lcom/instagram/common/d/a;->b(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->e:Landroid/net/Uri;
const/4 v0, 0x0
return-object v0
.end method
.method private c()V
.registers 6
const/4 v1, 0x1
iget-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->b:Landroid/app/Activity;
if-eqz v0, :cond_3a
invoke-virtual {p0}, Lcom/instagram/bugreport/rageshake/f;->a()V
const/4 v0, 0x0
new-instance v2, Landroid/content/Intent;
iget-object v3, p0, Lcom/instagram/bugreport/rageshake/f;->f:Landroid/content/Context;
const-class v4, Lcom/instagram/bugreport/rageshake/RageShakeActivity;
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v3, 0x1000
invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
iget-object v3, p0, Lcom/instagram/bugreport/rageshake/f;->c:Landroid/net/Uri;
if-eqz v3, :cond_27
const-string v0, "RageShakeActivity.INTENT_EXTRA_MEDIA_FILE_PATH"
iget-object v3, p0, Lcom/instagram/bugreport/rageshake/f;->c:Landroid/net/Uri;
invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move v0, v1
:cond_27
iget-object v3, p0, Lcom/instagram/bugreport/rageshake/f;->d:Landroid/net/Uri;
if-nez v3, :cond_2f
iget-object v3, p0, Lcom/instagram/bugreport/rageshake/f;->e:Landroid/net/Uri;
if-eqz v3, :cond_33
:cond_2f
invoke-direct {p0, v2}, Lcom/instagram/bugreport/rageshake/f;->a(Landroid/content/Intent;)V
move v0, v1
:cond_33
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->f:Landroid/content/Context;
invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_3a
:cond_3a
return-void
:cond_3b
sget v0, Lcom/facebook/az;->rageshake_error_save_failed:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
goto :goto_3a
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->g:Lcom/instagram/ui/dialog/f;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->g:Lcom/instagram/ui/dialog/f;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V
:cond_9
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->b:Landroid/app/Activity;
return-void
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/f;->b()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/f;->c()V
return-void
.end method
.method protected final onPreExecute()V
.registers 4
new-instance v0, Lcom/instagram/ui/dialog/f;
iget-object v1, p0, Lcom/instagram/bugreport/rageshake/f;->b:Landroid/app/Activity;
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->g:Lcom/instagram/ui/dialog/f;
iget-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->g:Lcom/instagram/ui/dialog/f;
iget-object v1, p0, Lcom/instagram/bugreport/rageshake/f;->b:Landroid/app/Activity;
sget v2, Lcom/facebook/az;->rageshake_wait:I
invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/bugreport/rageshake/f;->g:Lcom/instagram/ui/dialog/f;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->show()V
return-void
.end method