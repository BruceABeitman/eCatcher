.class public Lcom/twidroid/net/hockeyapp/android/f;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field private a:Landroid/content/Context;
.field private b:Lcom/twidroid/net/hockeyapp/android/e;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Landroid/app/ProgressDialog;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/e;)V
.registers 6
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/f;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/twidroid/net/hockeyapp/android/f;->c:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".apk"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->d:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/Download"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->e:Ljava/lang/String;
iput-object p3, p0, Lcom/twidroid/net/hockeyapp/android/f;->b:Lcom/twidroid/net/hockeyapp/android/e;
return-void
.end method
.method static synthetic a(Lcom/twidroid/net/hockeyapp/android/f;)Lcom/twidroid/net/hockeyapp/android/e;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->b:Lcom/twidroid/net/hockeyapp/android/e;
return-object v0
.end method
.method private d()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/f;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&type=apk"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
.registers 15
:try_start_0
new-instance v0, Ljava/net/URL;
invoke-direct {p0}, Lcom/twidroid/net/hockeyapp/android/f;->d()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
const-string v1, "connection"
const-string v2, "close"
invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Ldroidbox/java/net/URLConnection;->connect(Ljava/net/URLConnection;)V
invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I
move-result v2
new-instance v1, Ljava/io/File;
iget-object v3, p0, Lcom/twidroid/net/hockeyapp/android/f;->e:Ljava/lang/String;
invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
new-instance v3, Ljava/io/File;
iget-object v4, p0, Lcom/twidroid/net/hockeyapp/android/f;->d:Ljava/lang/String;
invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v4, Ljava/io/BufferedInputStream;
invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v0
invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
new-instance v5, Ljava/io/FileOutputStream;
invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const/16 v0, 0x400
new-array v3, v0, [B
const-wide/16 v0, 0x0
:goto_40
invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I
move-result v6
const/4 v7, -0x1
if-eq v6, v7, :cond_6b
int-to-long v7, v6
add-long/2addr v0, v7
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Integer;
const/4 v8, 0x0
const-wide/16 v9, 0x64
mul-long/2addr v9, v0
int-to-long v11, v2
div-long/2addr v9, v11
long-to-int v9, v9
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v7, v8
invoke-virtual {p0, v7}, Lcom/twidroid/net/hockeyapp/android/f;->e([Ljava/lang/Object;)V
const/4 v7, 0x0
invoke-virtual {v5, v3, v7, v6}, Ljava/io/OutputStream;->write([BII)V
:try_end_60
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_61
goto :goto_40
:catch_61
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_6a
return-object v0
:cond_6b
:try_start_6b
invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
invoke-virtual {v4}, Ljava/io/InputStream;->close()V
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_80
const/4 v0, 0x1
:goto_7b
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_7e
.catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7e} :catch_61
move-result-object v0
goto :goto_6a
:cond_80
const/4 v0, 0x0
goto :goto_7b
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/twidroid/net/hockeyapp/android/f;->a([Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method public a(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/f;->a:Landroid/content/Context;
return-void
.end method
.method protected a(Ljava/lang/Boolean;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->f:Landroid/app/ProgressDialog;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->f:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_9
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->b:Lcom/twidroid/net/hockeyapp/android/e;
invoke-virtual {v0, p0}, Lcom/twidroid/net/hockeyapp/android/e;->a(Lcom/twidroid/net/hockeyapp/android/f;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/File;
iget-object v2, p0, Lcom/twidroid/net/hockeyapp/android/f;->e:Ljava/lang/String;
iget-object v3, p0, Lcom/twidroid/net/hockeyapp/android/f;->d:Ljava/lang/String;
invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v1
const-string v2, "application/vnd.android.package-archive"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/f;->a:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_37
return-void
:try_start_38
:cond_38
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/f;->a:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/f;->b:Lcom/twidroid/net/hockeyapp/android/e;
const/4 v2, 0x4
invoke-static {v1, v2}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/f;->b:Lcom/twidroid/net/hockeyapp/android/e;
const/4 v2, 0x5
invoke-static {v1, v2}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/f;->b:Lcom/twidroid/net/hockeyapp/android/e;
const/4 v2, 0x6
invoke-static {v1, v2}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/twidroid/net/hockeyapp/android/f$1;
invoke-direct {v2, p0}, Lcom/twidroid/net/hockeyapp/android/f$1;-><init>(Lcom/twidroid/net/hockeyapp/android/f;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/f;->b:Lcom/twidroid/net/hockeyapp/android/e;
const/4 v2, 0x7
invoke-static {v1, v2}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/twidroid/net/hockeyapp/android/f$2;
invoke-direct {v2, p0}, Lcom/twidroid/net/hockeyapp/android/f$2;-><init>(Lcom/twidroid/net/hockeyapp/android/f;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
:try_end_78
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_78} :catch_79
goto :goto_37
:catch_79
move-exception v0
goto :goto_37
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/twidroid/net/hockeyapp/android/f;->a(Ljava/lang/Boolean;)V
return-void
.end method
.method protected varargs a([Ljava/lang/Integer;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->f:Landroid/app/ProgressDialog;
if-nez v0, :cond_25
new-instance v0, Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/f;->a:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->f:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->f:Landroid/app/ProgressDialog;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->f:Landroid/app/ProgressDialog;
const-string v1, "Loading..."
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->f:Landroid/app/ProgressDialog;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->f:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
:cond_25
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->f:Landroid/app/ProgressDialog;
const/4 v1, 0x0
aget-object v1, p1, v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
:try_end_31
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32
:goto_31
return-void
:catch_32
move-exception v0
goto :goto_31
.end method
.method protected synthetic a_([Ljava/lang/Object;)V
.registers 2
check-cast p1, [Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/twidroid/net/hockeyapp/android/f;->a([Ljava/lang/Integer;)V
return-void
.end method
.method public c()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->a:Landroid/content/Context;
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f;->f:Landroid/app/ProgressDialog;
return-void
.end method