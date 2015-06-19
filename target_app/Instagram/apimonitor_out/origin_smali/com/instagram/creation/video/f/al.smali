.class final Lcom/instagram/creation/video/f/al;
.super Ljava/lang/Object;
.source "VideoCoverFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/ah;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/al;->a:Lcom/instagram/creation/video/f/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/16 v2, 0x280

    iget-object v0, p0, Lcom/instagram/creation/video/f/al;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v0, v0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->h(Lcom/instagram/creation/video/f/ad;)Lcom/instagram/creation/video/widget/PreviewTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/widget/PreviewTextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/instagram/creation/video/f/al;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v2, v2, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    iget-object v2, v2, Lcom/instagram/creation/video/f/ad;->a:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_55
    invoke-static {}, Lcom/instagram/creation/video/l/j;->a()Z

    move-result v2

    if-nez v2, :cond_66

    iget-object v2, p0, Lcom/instagram/creation/video/f/al;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v2, v2, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v2}, Lcom/instagram/creation/video/f/ad;->n()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/creation/video/l/j;->d(Landroid/content/Context;)V

    :cond_66
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/instagram/creation/video/f/al;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v3, v3, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v3}, Lcom/instagram/creation/video/f/ad;->n()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/creation/video/l/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5f

    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/al;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v0, v0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->X()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_98} :catch_99

    return-void

    :catch_99
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
