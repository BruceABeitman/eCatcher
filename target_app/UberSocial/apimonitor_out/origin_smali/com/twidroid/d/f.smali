.class public Lcom/twidroid/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AvatarLoadingHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/16 v4, 0x48

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v9, 0x7f02010b

    invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;

    move-result-object v0

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-lez v2, :cond_a2

    :try_start_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x9ba3c0

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_8b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/twidroid/net/n;->b()Z

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_8b} :catch_8c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_38 .. :try_end_8b} :catch_97

    :cond_8b
    :goto_8b
    return-void

    :catch_8c
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8b

    :catch_97
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8b

    :cond_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/net/n;->b()Z

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8b
.end method
