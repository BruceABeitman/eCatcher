.class public Lcom/ubermedia/b/j;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field private a:Landroid/net/Uri;
.field private b:I
.field private c:Landroid/app/ProgressDialog;
.field private d:Landroid/content/Context;
.field private e:Lcom/ubermedia/b/k;
.method public constructor <init>(Landroid/content/Context;Lcom/ubermedia/b/k;)V
.registers 3
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
iput-object p1, p0, Lcom/ubermedia/b/j;->d:Landroid/content/Context;
iput-object p2, p0, Lcom/ubermedia/b/j;->e:Lcom/ubermedia/b/k;
return-void
.end method
.method private c()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return-void
:cond_e
new-instance v0, Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/ubermedia/b/j;->d:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/ubermedia/b/j;->d:Landroid/content/Context;
sget v2, Lcom/ubermedia/d/e;->dialog_downloading_image:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
const/16 v1, 0x64
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
const/4 v1, -0x2
iget-object v2, p0, Lcom/ubermedia/b/j;->d:Landroid/content/Context;
const/high16 v3, 0x104
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/ubermedia/b/j$1;
invoke-direct {v3, p0}, Lcom/ubermedia/b/j$1;-><init>(Lcom/ubermedia/b/j;)V
invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
goto :goto_d
.end method
.method private d()V
.registers 2
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_11
return-void
.end method
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/ubermedia/b/j;->c([Ljava/lang/Object;)Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method protected a()V
.registers 1
invoke-direct {p0}, Lcom/ubermedia/b/j;->c()V
return-void
.end method
.method protected a(Ljava/io/File;)V
.registers 8
const/4 v4, 0x0
invoke-direct {p0}, Lcom/ubermedia/b/j;->d()V
invoke-virtual {p0}, Lcom/ubermedia/b/j;->h()Z
move-result v0
if-eqz v0, :cond_b
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/ubermedia/b/j;->e:Lcom/ubermedia/b/k;
iget-object v1, p0, Lcom/ubermedia/b/j;->a:Landroid/net/Uri;
invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
iget v3, p0, Lcom/ubermedia/b/j;->b:I
move v5, v4
invoke-interface/range {v0 .. v5}, Lcom/ubermedia/b/k;->a(Landroid/net/Uri;Ljava/lang/String;IIZ)V
goto :goto_a
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/io/File;
invoke-virtual {p0, p1}, Lcom/ubermedia/b/j;->a(Ljava/io/File;)V
return-void
.end method
.method protected varargs a([Ljava/lang/Integer;)V
.registers 4
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a_([Ljava/lang/Object;)V
iget-object v0, p0, Lcom/ubermedia/b/j;->c:Landroid/app/ProgressDialog;
const/4 v1, 0x0
aget-object v1, p1, v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
return-void
.end method
.method protected synthetic a_([Ljava/lang/Object;)V
.registers 2
check-cast p1, [Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/ubermedia/b/j;->a([Ljava/lang/Integer;)V
return-void
.end method
.method protected varargs c([Ljava/lang/Object;)Ljava/io/File;
.registers 16
const/4 v1, 0x1
const/4 v0, 0x0
const/4 v7, 0x0
aget-object v0, p1, v0
check-cast v0, Ljava/lang/String;
aget-object v1, p1, v1
check-cast v1, Landroid/net/Uri;
iput-object v1, p0, Lcom/ubermedia/b/j;->a:Landroid/net/Uri;
const/4 v1, 0x2
aget-object v1, p1, v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
iput v1, p0, Lcom/ubermedia/b/j;->b:I
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v1
const-string v2, "mounted"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d7
new-instance v1, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
const-string v3, ".tmp"
invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:goto_2f
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_38
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
:cond_38
new-instance v6, Ljava/io/File;
invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_3d
iget-object v0, p0, Lcom/ubermedia/b/j;->a:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "content://com.google.android.gallery3d"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_59
iget-object v0, p0, Lcom/ubermedia/b/j;->a:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "content://com.google.android.apps.docs.storage"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_df
:cond_59
iget-object v0, p0, Lcom/ubermedia/b/j;->d:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lcom/ubermedia/b/j;->a:Landroid/net/Uri;
invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v8
iget-object v0, p0, Lcom/ubermedia/b/j;->d:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lcom/ubermedia/b/j;->a:Landroid/net/Uri;
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
const-string v0, "_size"
invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
invoke-interface {v1}, Landroid/database/Cursor;->close()V
move v2, v0
move-object v3, v8
:goto_87
const-wide/16 v0, 0x0
new-instance v4, Ljava/io/FileOutputStream;
invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const/16 v5, 0x400
new-array v5, v5, [B
:cond_92
:goto_92
invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I
move-result v8
const/4 v9, -0x1
if-eq v8, v9, :cond_101
int-to-long v9, v8
add-long/2addr v0, v9
const/4 v9, 0x0
invoke-virtual {v4, v5, v9, v8}, Ljava/io/OutputStream;->write([BII)V
if-lez v2, :cond_92
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Integer;
const/4 v9, 0x0
const-wide/16 v10, 0x64
mul-long/2addr v10, v0
int-to-long v12, v2
div-long/2addr v10, v12
long-to-int v10, v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v8, v9
invoke-virtual {p0, v8}, Lcom/ubermedia/b/j;->e([Ljava/lang/Object;)V
:try_end_b4
.catch Ljava/lang/Exception; {:try_start_3d .. :try_end_b4} :catch_b5
goto :goto_92
:catch_b5
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, ""
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Exception: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
move-object v0, v7
:goto_d6
return-object v0
:cond_d7
iget-object v1, p0, Lcom/ubermedia/b/j;->d:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v1
goto/16 :goto_2f
:cond_df
:try_start_df
new-instance v0, Ljava/net/URL;
iget-object v1, p0, Lcom/ubermedia/b/j;->a:Landroid/net/Uri;
invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v2
invoke-static {v2}, Ldroidbox/java/net/URLConnection;->connect(Ljava/net/URLConnection;)V
new-instance v1, Ljava/io/BufferedInputStream;
invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I
move-result v0
move v2, v0
move-object v3, v1
goto :goto_87
:cond_101
invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
:try_end_104
.catch Ljava/lang/Exception; {:try_start_df .. :try_end_104} :catch_b5
move-object v0, v6
goto :goto_d6
.end method