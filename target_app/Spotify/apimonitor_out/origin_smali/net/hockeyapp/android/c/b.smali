.class public final Lnet/hockeyapp/android/c/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lnet/hockeyapp/android/b/a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/b/a;)V
    .registers 6

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lnet/hockeyapp/android/c/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/hockeyapp/android/c/b;->c:Ljava/lang/String;

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

    iput-object v0, p0, Lnet/hockeyapp/android/c/b;->d:Ljava/lang/String;

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

    iput-object v0, p0, Lnet/hockeyapp/android/c/b;->e:Ljava/lang/String;

    iput-object p3, p0, Lnet/hockeyapp/android/c/b;->b:Lnet/hockeyapp/android/b/a;

    return-void
.end method

.method static synthetic a(Lnet/hockeyapp/android/c/b;)Lnet/hockeyapp/android/b/a;
    .registers 2

    iget-object v0, p0, Lnet/hockeyapp/android/c/b;->b:Lnet/hockeyapp/android/b/a;

    return-object v0
.end method

.method private varargs b()Ljava/lang/Boolean;
    .registers 14

    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/hockeyapp/android/c/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&type=apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "HockeySDK/Android"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-gt v1, v2, :cond_38

    const-string v1, "connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lnet/hockeyapp/android/c/b;->e:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_75

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_75

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create the dir(s):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_74
    return-object v0

    :cond_75
    :try_start_75
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnet/hockeyapp/android/c/b;->d:Ljava/lang/String;

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

    :goto_90
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_b1

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

    invoke-virtual {p0, v7}, Lnet/hockeyapp/android/c/b;->publishProgress([Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_90

    :cond_b1
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c6

    const/4 v0, 0x1

    :goto_c1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_c4} :catch_6b

    move-result-object v0

    goto :goto_74

    :cond_c6
    const/4 v0, 0x0

    goto :goto_c1
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/c/b;->a:Landroid/content/Context;

    iput-object v0, p0, Lnet/hockeyapp/android/c/b;->f:Landroid/app/ProgressDialog;

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lnet/hockeyapp/android/c/b;->a:Landroid/content/Context;

    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lnet/hockeyapp/android/c/b;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lnet/hockeyapp/android/c/b;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_b

    :try_start_6
    iget-object v0, p0, Lnet/hockeyapp/android/c/b;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_7d

    :cond_b
    :goto_b
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lnet/hockeyapp/android/c/b;->b:Lnet/hockeyapp/android/b/a;

    invoke-virtual {v0}, Lnet/hockeyapp/android/b/a;->a()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnet/hockeyapp/android/c/b;->e:Ljava/lang/String;

    iget-object v3, p0, Lnet/hockeyapp/android/c/b;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lnet/hockeyapp/android/c/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_39
    return-void

    :cond_3a
    :try_start_3a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/hockeyapp/android/c/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lnet/hockeyapp/android/c/b;->b:Lnet/hockeyapp/android/b/a;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/hockeyapp/android/c/b;->b:Lnet/hockeyapp/android/b/a;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/hockeyapp/android/c/b;->b:Lnet/hockeyapp/android/b/a;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/hockeyapp/android/c/b$1;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/c/b$1;-><init>(Lnet/hockeyapp/android/c/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/hockeyapp/android/c/b;->b:Lnet/hockeyapp/android/b/a;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/hockeyapp/android/c/b$2;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/c/b$2;-><init>(Lnet/hockeyapp/android/c/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_7a} :catch_7b

    goto :goto_39

    :catch_7b
    move-exception v0

    goto :goto_39

    :catch_7d
    move-exception v0

    goto :goto_b
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 4

    check-cast p1, [Ljava/lang/Integer;

    :try_start_2
    iget-object v0, p0, Lnet/hockeyapp/android/c/b;->f:Landroid/app/ProgressDialog;

    if-nez v0, :cond_27

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/hockeyapp/android/c/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/c/b;->f:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lnet/hockeyapp/android/c/b;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lnet/hockeyapp/android/c/b;->f:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/hockeyapp/android/c/b;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lnet/hockeyapp/android/c/b;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_27
    iget-object v0, p0, Lnet/hockeyapp/android/c/b;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    goto :goto_33
.end method
