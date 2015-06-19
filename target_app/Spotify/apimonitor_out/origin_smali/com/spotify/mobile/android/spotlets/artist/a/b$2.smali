.class final Lcom/spotify/mobile/android/spotlets/artist/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/a/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/a/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b$2;->a:Lcom/spotify/mobile/android/spotlets/artist/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b$2;->a:Lcom/spotify/mobile/android/spotlets/artist/a/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/a/b;->c(Lcom/spotify/mobile/android/spotlets/artist/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;

    sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/a/b;->b:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :try_start_17
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_c9

    move-result v0

    if-nez v0, :cond_21

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_20
    return-void

    :cond_21
    const/4 v0, 0x0

    :try_start_22
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_72

    move v9, v6

    :goto_2d
    const/4 v0, 0x1

    invoke-static {v10, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v11

    const/4 v0, 0x2

    invoke-static {v10, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v12

    const/4 v0, 0x3

    invoke-static {v10, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v6

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v10, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x5

    invoke-static {v10, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v8

    const/4 v0, 0x6

    const-string v1, ""

    invoke-static {v10, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b$2;->a:Lcom/spotify/mobile/android/spotlets/artist/a/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/a/b;->c(Lcom/spotify/mobile/android/spotlets/artist/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/u;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/artist/a/b;->d()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_64
    .catchall {:try_start_22 .. :try_end_64} :catchall_c9

    move-result-object v14

    :try_start_65
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_c4

    move-result v0

    if-nez v0, :cond_74

    :try_start_6b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_c9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_20

    :cond_72
    move v9, v7

    goto :goto_2d

    :cond_74
    const/4 v0, 0x5

    :try_start_75
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_c4

    move-result v0

    if-nez v0, :cond_86

    :try_start_7f
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_c9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_20

    :cond_86
    const/4 v0, 0x0

    :try_start_87
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x3

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x4

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/a/d;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/artist/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/a/a;

    move-object v2, v13

    move v3, v9

    move v4, v11

    move v5, v12

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/spotify/mobile/android/spotlets/artist/a/a;-><init>(Ljava/lang/String;ZZZZLjava/lang/String;ZLcom/spotify/mobile/android/spotlets/artist/a/d;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b$2;->a:Lcom/spotify/mobile/android/spotlets/artist/a/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/a/b;->e(Lcom/spotify/mobile/android/spotlets/artist/a/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/spotify/mobile/android/spotlets/artist/a/b$2$1;

    invoke-direct {v2, p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/a/b$2$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/a/b$2;Lcom/spotify/mobile/android/spotlets/artist/a/a;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_bc
    .catchall {:try_start_87 .. :try_end_bc} :catchall_c4

    :try_start_bc
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_20

    :catchall_c4
    move-exception v0

    :try_start_c5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_c9

    :catchall_c9
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method
