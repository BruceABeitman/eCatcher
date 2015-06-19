.class public Lcom/bbm/ui/activities/ImageViewerActivity;
.super Lcom/bbm/ui/activities/ev;
.source "ImageViewerActivity.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field final e:Lcom/bbm/ui/c/fq;

.field private f:Lcom/bbm/ui/FooterActionBar;

.field private g:Lcom/bbm/ui/TouchImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Ljava/lang/String;

.field private j:Lcom/bbm/ui/c/fm;

.field private k:Ljava/util/Timer;

.field private l:Z

.field private final m:Landroid/os/Handler;

.field private final n:Landroid/view/View$OnClickListener;

.field private final o:Lcom/bbm/ui/cj;

.field private final p:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->k:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->l:Z

    iput-boolean v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->m:Landroid/os/Handler;

    new-instance v0, Lcom/bbm/ui/activities/tx;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/tx;-><init>(Lcom/bbm/ui/activities/ImageViewerActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/bbm/ui/activities/ty;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ty;-><init>(Lcom/bbm/ui/activities/ImageViewerActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->o:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/tz;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/tz;-><init>(Lcom/bbm/ui/activities/ImageViewerActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->e:Lcom/bbm/ui/c/fq;

    new-instance v0, Lcom/bbm/ui/activities/ua;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ua;-><init>(Lcom/bbm/ui/activities/ImageViewerActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->p:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ImageViewerActivity;)Lcom/bbm/ui/FooterActionBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->f:Lcom/bbm/ui/FooterActionBar;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Lcom/bbm/util/b/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/b/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/bbm/util/bj;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_4c

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bbm/util/b/h;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v0, "image/jpeg"

    :cond_36
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e043f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_4b
    return-void

    :catch_4c
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_4b
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ImageViewerActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ImageViewerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ImageViewerActivity;->f()V

    return-void
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ImageViewerActivity;)V
    .registers 2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ImageViewerActivity;->b()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ImageViewerActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/ImageViewerActivity;)Lcom/bbm/ui/TouchImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->g:Lcom/bbm/ui/TouchImageView;

    return-object v0
.end method

.method private f()V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->k:Ljava/util/Timer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_9
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->k:Ljava/util/Timer;

    new-instance v1, Lcom/bbm/ui/activities/ue;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ue;-><init>(Lcom/bbm/ui/activities/ImageViewerActivity;)V

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic g(Lcom/bbm/ui/activities/ImageViewerActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/ImageViewerActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->m:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/b/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/gif"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/bbm/util/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra_image_path"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    :goto_1b
    return v0

    :catch_1c
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method final b()V
    .registers 6

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->d:Z

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->l:Z

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->d:Z

    if-eqz v0, :cond_51

    :try_start_d
    iget-boolean v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->l:Z

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v2, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v1, v1, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fd;

    :goto_29
    iget-boolean v1, v0, Lcom/bbm/d/fd;->a:Z

    invoke-static {p0, v1}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lcom/bbm/d/fd;->c()[B

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_51} :catch_72

    :cond_51
    :goto_51
    iput-boolean v4, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->l:Z

    :cond_53
    return-void

    :cond_54
    const/4 v0, 0x0

    goto :goto_29

    :cond_56
    :try_start_56
    invoke-virtual {v0}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-virtual {v0}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_71} :catch_72

    goto :goto_51

    :catch_72
    move-exception v0

    const-string v1, "No avatar Image data retrieved"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_51
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16

    const v13, 0x7f0e068e

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7}, Lcom/bbm/ui/activities/ImageViewerActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->setContentView(I)V

    const v0, 0x7f0a01ff

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/TouchImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->g:Lcom/bbm/ui/TouchImageView;

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->f:Lcom/bbm/ui/FooterActionBar;

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_avatar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_avatar"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->d:Z

    :cond_4c
    :goto_4c
    iget-boolean v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->d:Z

    if-eqz v0, :cond_91

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_avatar_user_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->i:Ljava/lang/String;

    if-nez v0, :cond_70

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    const-string v0, "extra_avatar_user_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->i:Ljava/lang/String;

    :cond_70
    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_8f

    move v0, v7

    :goto_75
    const-string v1, "No avatar URI specified in Intent"

    invoke-static {p0, v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    :cond_7d
    :goto_7d
    return-void

    :cond_7e
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "extra_is_avatar"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->d:Z

    goto :goto_4c

    :cond_8f
    move v0, v8

    goto :goto_75

    :cond_91
    invoke-virtual {p0}, Lcom/bbm/ui/activities/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_image_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_mime_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_suggested_filename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_c9

    if-eqz p1, :cond_c9

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c9

    const-string v0, "extra_image_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    :cond_c9
    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->b:Ljava/lang/String;

    if-nez v0, :cond_dd

    if-eqz p1, :cond_dd

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dd

    const-string v0, "extra_mime_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->b:Ljava/lang/String;

    :cond_dd
    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_f1

    if-eqz p1, :cond_f1

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f1

    const-string v0, "extra_suggested_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->c:Ljava/lang/String;

    :cond_f1
    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_19d

    move v0, v7

    :goto_f6
    const-string v1, "No image path specified in Intent"

    invoke-static {p0, v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    :try_start_fe
    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/ui/cl;->a(Ljava/lang/String;)Lcom/bbm/ui/cl;

    move-result-object v0

    if-eqz v0, :cond_1a0

    iget-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->g:Lcom/bbm/ui/TouchImageView;

    new-instance v2, Lcom/bbm/d/fd;

    invoke-direct {v2, v0}, Lcom/bbm/d/fd;-><init>(Lcom/bbm/ui/cl;)V

    invoke-virtual {v1, v2}, Lcom/bbm/ui/TouchImageView;->setObservableImage(Lcom/bbm/d/fd;)V
    :try_end_110
    .catch Ljava/lang/OutOfMemoryError; {:try_start_fe .. :try_end_110} :catch_215
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_110} :catch_289

    :cond_110
    :goto_110
    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    iput-boolean v8, p0, Lcom/bbm/ui/activities/ev;->y:Z

    new-instance v1, Lcom/bbm/ui/activities/ub;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/ub;-><init>(Lcom/bbm/ui/activities/ImageViewerActivity;Lcom/slidingmenu/lib/SlidingMenu;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/slidingmenu/lib/i;)V

    new-instance v1, Lcom/bbm/ui/activities/uc;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/uc;-><init>(Lcom/bbm/ui/activities/ImageViewerActivity;Lcom/slidingmenu/lib/SlidingMenu;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/slidingmenu/lib/k;)V

    invoke-virtual {v0, v7}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ev;->A:Lcom/bbm/ui/c/fm;

    iput-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->j:Lcom/bbm/ui/c/fm;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f020277

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0e0639

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/ImageViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v10}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f02027b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0e065d

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/ImageViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v10}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f02027c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v13}, Lcom/bbm/ui/activities/ImageViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v10}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->j:Lcom/bbm/ui/c/fm;

    invoke-virtual {v1, v0, v10, v10}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->f:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0202be

    invoke-direct {v1, p0, v2, v13}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v8}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->f:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->o:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    new-instance v0, Lcom/bbm/ui/activities/ud;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ud;-><init>(Lcom/bbm/ui/activities/ImageViewerActivity;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/slidingmenu/lib/a/b;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v8}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchInterceptEnabled(Z)V

    iput-boolean v8, p0, Lcom/bbm/ui/activities/ev;->y:Z

    goto/16 :goto_7d

    :cond_19d
    move v0, v8

    goto/16 :goto_f6

    :cond_1a0
    :try_start_1a0
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ImageViewerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget v1, v11, Landroid/graphics/Point;->x:I

    iget v2, v11, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/bbm/util/b/g;->a(Ljava/lang/String;IILcom/bbm/util/b/d;ZZLandroid/widget/ImageView$ScaleType;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v0}, Lcom/bbm/util/b/h;->b(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_286

    if-eqz v9, :cond_286

    invoke-static {v0}, Lcom/bbm/util/b/h;->c(Ljava/lang/String;)I

    move-result v0

    int-to-float v6, v0

    if-eqz v9, :cond_1da

    iget v0, v11, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_1da

    iget v0, v11, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_221

    :cond_1da
    move-object v0, v10

    :goto_1db
    if-eqz v0, :cond_110

    const-string v1, "ImageViewerActivity %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Bitmap size is (%dW x %dH)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->g:Lcom/bbm/ui/TouchImageView;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/TouchImageView;->setObservableImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->g:Lcom/bbm/ui/TouchImageView;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Lcom/bbm/ui/TouchImageView;->setMaxZoom(F)V
    :try_end_213
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a0 .. :try_end_213} :catch_215
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_213} :catch_289

    goto/16 :goto_110

    :catch_215
    move-exception v0

    const-string v1, "BBM unable to load image - OOM"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_110

    :cond_221
    :try_start_221
    iget v1, v11, Landroid/graphics/Point;->x:I

    iget v0, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v2, 0x42b4

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_239

    const/high16 v2, 0x4387

    cmpl-float v2, v6, v2

    if-nez v2, :cond_23d

    :cond_239
    iget v1, v11, Landroid/graphics/Point;->y:I

    iget v0, v11, Landroid/graphics/Point;->x:I

    :cond_23d
    if-gt v3, v1, :cond_241

    if-le v4, v0, :cond_264

    :cond_241
    if-le v3, v4, :cond_25c

    if-le v3, v1, :cond_25c

    int-to-float v0, v1

    int-to-float v2, v3

    div-float/2addr v0, v2

    int-to-float v2, v4

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v7

    :goto_24c
    if-nez v2, :cond_252

    cmpl-float v2, v6, v12

    if-eqz v2, :cond_283

    :cond_252
    cmpl-float v2, v6, v12

    if-nez v2, :cond_268

    const/4 v2, 0x1

    invoke-static {v9, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1db

    :cond_25c
    int-to-float v1, v0

    int-to-float v2, v4

    div-float/2addr v1, v2

    int-to-float v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move v2, v7

    goto :goto_24c

    :cond_264
    move v0, v4

    move v1, v3

    move v2, v8

    goto :goto_24c

    :cond_268
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    int-to-float v0, v0

    int-to-float v2, v4

    div-float/2addr v0, v2

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_280
    .catch Ljava/lang/OutOfMemoryError; {:try_start_221 .. :try_end_280} :catch_215
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_280} :catch_289

    move-result-object v0

    goto/16 :goto_1db

    :cond_283
    move-object v0, v9

    goto/16 :goto_1db

    :cond_286
    move-object v0, v9

    goto/16 :goto_1db

    :catch_289
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_110
.end method

.method protected onDestroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->g:Lcom/bbm/ui/TouchImageView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->g:Lcom/bbm/ui/TouchImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/TouchImageView;->b()V

    iput-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->g:Lcom/bbm/ui/TouchImageView;

    :cond_c
    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->f:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/slidingmenu/lib/a/b;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/slidingmenu/lib/i;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/slidingmenu/lib/k;)V

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->p:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->g:Lcom/bbm/ui/TouchImageView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/TouchImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->j:Lcom/bbm/ui/c/fm;

    iput-object v1, v0, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->f:Lcom/bbm/ui/FooterActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/bbm/ui/activities/ImageViewerActivity;->f()V

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->d:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->p:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    :cond_12
    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->g:Lcom/bbm/ui/TouchImageView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/TouchImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->j:Lcom/bbm/ui/c/fm;

    iget-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->e:Lcom/bbm/ui/c/fq;

    iput-object v1, v0, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "extra_image_path"

    iget-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "extra_mime_type"

    iget-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "extra_suggested_filename"

    iget-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "extra_avatar_user_uri"

    iget-object v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    const-string v0, "extra_is_avatar"

    iget-boolean v1, p0, Lcom/bbm/ui/activities/ImageViewerActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
