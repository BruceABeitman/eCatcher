.class public Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;
.super Ljava/lang/Object;
.source "TaskConverUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFilePathTask(Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;->pathList:Ljava/util/List;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_13

    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "list is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/sharesdk/ShareWrapper;->createShareRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/util/Pair;

    sget-object v5, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method public static buildTask(Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "content://media"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    :cond_12
    :goto_12
    return-object v4

    :cond_13
    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "_data"

    aput-object v7, v6, v8

    invoke-static {p1, v5, v6}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->queryString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "_id"

    aput-object v7, v6, v8

    invoke-static {p1, v5, v6}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->queryString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "path = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_56

    const-string/jumbo v6, "fetch media failed"

    invoke-static {p1, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_12

    :cond_56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    const/4 v4, 0x0

    :try_start_5d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;

    invoke-direct {v6, v7, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/lenovo/sharesdk/ShareWrapper;->createShareRecords(Ljava/util/List;)Ljava/util/List;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_73} :catch_75

    move-result-object v4

    goto :goto_12

    :catch_75
    move-exception v0

    sget-object v6, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public static getSelectedItems(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->loadContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static loadContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "content://media"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    :cond_10
    :goto_10
    return-object v4

    :cond_11
    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "_data"

    aput-object v6, v5, v7

    invoke-static {p0, p1, v5}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->queryString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "_id"

    aput-object v6, v5, v7

    invoke-static {p0, p1, v5}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->queryString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "path = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_54

    const-string/jumbo v5, "fetch media failed"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_10

    :cond_54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v4, 0x0

    :try_start_5b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;

    invoke-direct {v5, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/lenovo/sharesdk/ShareWrapper;->getInstance()Lcom/lenovo/sharesdk/ShareWrapper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lenovo/sharesdk/ShareWrapper;->createShareRecords(Ljava/util/List;)Ljava/util/List;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_71} :catch_73

    move-result-object v4

    goto :goto_10

    :catch_73
    move-exception v0

    sget-object v5, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private static queryString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_b
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_30
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_22

    move-result-object v8

    :cond_1c
    if-eqz v6, :cond_21

    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_39

    :cond_21
    :goto_21
    return-object v8

    :catch_22
    move-exception v7

    :try_start_23
    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/TaskConverUtils;->TAG:Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_30

    if-eqz v6, :cond_21

    :try_start_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_21

    :catch_2e
    move-exception v1

    goto :goto_21

    :catchall_30
    move-exception v1

    if-eqz v6, :cond_36

    :try_start_33
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    :cond_36
    :goto_36
    throw v1

    :catch_37
    move-exception v2

    goto :goto_36

    :catch_39
    move-exception v1

    goto :goto_21
.end method
