.class final Lcom/tencent/connect/share/a$4;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/share/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tencent/utils/AsynLoadImgBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/connect/share/a$4;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/tencent/connect/share/a$4;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/16 v7, 0x2710

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/tencent/connect/share/a$4;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_87

    iget-object v0, p0, Lcom/tencent/connect/share/a$4;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/utils/Util;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_75

    invoke-static {v0}, Lcom/tencent/utils/Util;->fileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-static {v0, v7}, Lcom/tencent/connect/share/a;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_75

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/tmp/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/tencent/utils/Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "share2qzone_temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x280

    invoke-static {v0, v5, v7}, Lcom/tencent/connect/share/a;->a(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_79

    const-string/jumbo v2, "AsynScaleCompressImage"

    const-string/jumbo v3, "not out of bound,not compress!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    if-eqz v0, :cond_75

    iget-object v2, p0, Lcom/tencent/connect/share/a$4;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_79
    const-string/jumbo v0, "AsynScaleCompressImage"

    const-string/jumbo v5, "out of bound, compress!"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3, v4}, Lcom/tencent/connect/share/a;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    :cond_87
    iget-object v0, p0, Lcom/tencent/connect/share/a$4;->b:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "images"

    iget-object v3, p0, Lcom/tencent/connect/share/a$4;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tencent/connect/share/a$4;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
