.class final Lcom/bbm/ui/activities/st;
.super Ljava/lang/Object;
.source "GroupPictureUploadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->j(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->f(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->f(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Image view dimensions to sample to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    iget-object v3, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v3, v0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->b(Lcom/bbm/ui/activities/GroupPictureUploadActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->j(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;Landroid/graphics/Point;Lcom/bbm/util/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->f(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/su;

    invoke-direct {v2, p0, v0}, Lcom/bbm/ui/activities/su;-><init>(Lcom/bbm/ui/activities/st;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_bb
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_61} :catch_8c

    const-string v0, "done saving bitmap locally"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->n(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->i(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_74
    iget-object v0, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->i(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_89

    iget-object v0, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    new-instance v1, Lcom/bbm/ui/activities/sv;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/sv;-><init>(Lcom/bbm/ui/activities/st;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_88
    return-void

    :catchall_89
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_8c
    move-exception v0

    :try_start_8d
    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_bb

    const-string v0, "done saving bitmap locally"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->n(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->i(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_a3
    iget-object v0, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->i(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_a3 .. :try_end_ad} :catchall_b8

    iget-object v0, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    new-instance v1, Lcom/bbm/ui/activities/sv;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/sv;-><init>(Lcom/bbm/ui/activities/st;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_88

    :catchall_b8
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_bb
    move-exception v0

    const-string v1, "done saving bitmap locally"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->n(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Z

    iget-object v1, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->i(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_cf
    iget-object v2, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->i(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_cf .. :try_end_d9} :catchall_e4

    iget-object v1, p0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    new-instance v2, Lcom/bbm/ui/activities/sv;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/sv;-><init>(Lcom/bbm/ui/activities/st;)V

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v0

    :catchall_e4
    move-exception v0

    monitor-exit v1

    throw v0
.end method
