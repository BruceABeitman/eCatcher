.class public Lco/vine/android/provider/HybridPostCursor;
.super Lco/vine/android/provider/GroupCursor;
.source "HybridPostCursor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/provider/GroupCursor",
        "<",
        "Lco/vine/android/api/VinePost;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_INCLUDE_LIST:Ljava/lang/String; = "include_list"

.field public static final EXTRA_IS_LAST:Ljava/lang/String; = "is_last"

.field public static final EXTRA_POST:Ljava/lang/String; = "post"

.field public static final EXTRA_POSTS:Ljava/lang/String; = "extra_posts"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIncludeList:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 3

    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lco/vine/android/provider/HybridPostCursor;-><init>(Landroid/database/Cursor;I)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lco/vine/android/provider/GroupCursor;-><init>(Landroid/database/Cursor;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/provider/HybridPostCursor;->mIncludeList:Z

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lco/vine/android/provider/HybridPostCursor;

    if-ne v0, v1, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Constructed HybridPostCursor with explore app. Use HybridPostCursorExplore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/provider/GroupCursor;-><init>(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/provider/HybridPostCursor;->mIncludeList:Z

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lco/vine/android/provider/HybridPostCursor;

    if-ne v0, v1, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Constructed HybridPostCursor with explore app. Use HybridPostCursorExplore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iput-object p1, p0, Lco/vine/android/provider/HybridPostCursor;->mList:Ljava/util/List;

    iput p2, p0, Lco/vine/android/provider/HybridPostCursor;->mLimit:I

    return-void
.end method

.method public static declared-synchronized mergePosts(Ljava/util/ArrayList;Ljava/util/ArrayList;Lco/vine/android/api/VineComparatorFactory$VineComparator;Z)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;",
            "Lco/vine/android/api/VineComparatorFactory$VineComparator",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;"
        }
    .end annotation

    const-class v7, Lco/vine/android/provider/HybridPostCursor;

    monitor-enter v7

    if-eqz p0, :cond_b

    :try_start_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    :cond_b
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-static {p1, p2}, Lco/vine/android/provider/HybridPostCursor;->sort(Ljava/util/ArrayList;Lco/vine/android/api/VineComparatorFactory$VineComparator;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_64

    move-object p0, p1

    :goto_17
    monitor-exit v7

    return-object p0

    :cond_19
    const/4 p0, 0x0

    goto :goto_17

    :cond_1b
    :try_start_1b
    new-instance v1, Lco/vine/android/util/LongSparseArray;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v1, v6}, Lco/vine/android/util/LongSparseArray;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/api/VinePost;

    iget-wide v8, v4, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v8, v9, v6}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_41
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/api/VinePost;

    iget-wide v8, v3, Lco/vine/android/api/VinePost;->postId:J

    invoke-virtual {v1, v8, v9}, Lco/vine/android/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_67

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_1b .. :try_end_63} :catchall_64

    goto :goto_46

    :catchall_64
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_67
    :try_start_67
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_6d
    if-eqz p3, :cond_72

    invoke-static {v0}, Lco/vine/android/util/FlurryUtils;->trackGraphTimelineRefreshNewCount(I)V

    :cond_72
    invoke-static {p0, p2}, Lco/vine/android/provider/HybridPostCursor;->sort(Ljava/util/ArrayList;Lco/vine/android/api/VineComparatorFactory$VineComparator;)V
    :try_end_75
    .catchall {:try_start_67 .. :try_end_75} :catchall_64

    goto :goto_17
.end method

.method private static sort(Ljava/util/ArrayList;Lco/vine/android/api/VineComparatorFactory$VineComparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;",
            "Lco/vine/android/api/VineComparatorFactory$VineComparator",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_b

    const/4 v0, -0x1

    invoke-static {v0}, Lco/vine/android/api/VineComparatorFactory;->get(I)Lco/vine/android/api/VineComparatorFactory$VineComparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_a
    return-void

    :cond_b
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_a
.end method


# virtual methods
.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->LOOKUP:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_f

    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Lco/vine/android/provider/GroupCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 7

    :try_start_0
    invoke-super {p0}, Lco/vine/android/provider/GroupCursor;->getExtras()Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_19

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_1c

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_b
    iget-boolean v4, p0, Lco/vine/android/provider/HybridPostCursor;->mIncludeList:Z

    if-eqz v4, :cond_22

    const-string v5, "extra_posts"

    iget-object v4, p0, Lco/vine/android/provider/HybridPostCursor;->mList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_18
    :goto_18
    return-object v1

    :catch_19
    move-exception v0

    const/4 v3, 0x0

    goto :goto_4

    :cond_1c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_b

    :cond_22
    iget v4, p0, Lco/vine/android/provider/HybridPostCursor;->mCursorPosition:I

    invoke-virtual {p0, v4}, Lco/vine/android/provider/HybridPostCursor;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VinePost;

    if-eqz v2, :cond_18

    const-string v4, "post"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "is_last"

    iget-boolean v5, v2, Lco/vine/android/api/VinePost;->isLast:Z

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_18
.end method

.method public markLast()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/provider/HybridPostCursor;->mList:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lco/vine/android/provider/HybridPostCursor;->mList:Ljava/util/List;

    iget-object v1, p0, Lco/vine/android/provider/HybridPostCursor;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VinePost;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lco/vine/android/api/VinePost;->isLast:Z

    :cond_17
    return-void
.end method

.method public onPrepare()V
    .registers 22

    move-object/from16 v0, p0

    iget-object v7, v0, Lco/vine/android/provider/HybridPostCursor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    if-eqz v7, :cond_13b

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_13b

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/provider/HybridPostCursor;->mList:Ljava/util/List;

    :cond_1c
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v17, v5, v13

    if-eqz v17, :cond_3e

    if-eqz v16, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/provider/HybridPostCursor;->mList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :cond_39
    move-wide v13, v5

    invoke-static {v7}, Lco/vine/android/api/VinePost;->from(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;

    move-result-object v16

    :cond_3e
    if-eqz v16, :cond_8a

    const/16 v17, 0x22

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/16 v17, 0x1b

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v17, 0x0

    cmp-long v17, v2, v17

    if-lez v17, :cond_aa

    invoke-static {v7}, Lco/vine/android/api/VineComment;->from(Landroid/database/Cursor;)Lco/vine/android/api/VineComment;

    move-result-object v15

    move-object/from16 v0, v16

    iget-object v0, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_79

    move-object/from16 v0, v16

    iget-object v0, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    :cond_79
    move-object/from16 v0, v16

    iget-object v0, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    :goto_8a
    :try_start_8a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8d
    .catch Ljava/lang/IllegalStateException; {:try_start_8a .. :try_end_8d} :catch_e5

    move-result v12

    :goto_8e
    if-eqz v12, :cond_9a

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/provider/HybridPostCursor;->mLimit:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v4, v0, :cond_1c

    :cond_9a
    if-eqz v16, :cond_a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/provider/HybridPostCursor;->mList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a9
    :goto_a9
    return-void

    :cond_aa
    const-wide/16 v17, 0x0

    cmp-long v17, v10, v17

    if-lez v17, :cond_8a

    invoke-static {v7}, Lco/vine/android/api/VineLike;->from(Landroid/database/Cursor;)Lco/vine/android/api/VineLike;

    move-result-object v9

    move-object/from16 v0, v16

    iget-object v0, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_d3

    move-object/from16 v0, v16

    iget-object v0, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    :cond_d3
    move-object/from16 v0, v16

    iget-object v0, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :catch_e5
    move-exception v8

    const-string v17, "Failed to get cursor\'s row id. total: {}, current: {}, limit: {}, postId: {}."

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/provider/HybridPostCursor;->mLimit:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/provider/HybridPostCursor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_132

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/provider/HybridPostCursor;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/client/AppController;->clearImageCacheFromMemory()V

    :cond_132
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    goto/16 :goto_8e

    :cond_13b
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/provider/HybridPostCursor;->mList:Ljava/util/List;

    goto/16 :goto_a9
.end method

.method public prepare(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p0, p1}, Lco/vine/android/provider/HybridPostCursor;->setContext(Landroid/content/Context;)V

    invoke-super {p0}, Lco/vine/android/provider/GroupCursor;->prepare()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/provider/HybridPostCursor;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    const-string v0, "include_list"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/provider/HybridPostCursor;->mIncludeList:Z

    return-object p1
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/provider/HybridPostCursor;->mContext:Landroid/content/Context;

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/provider/HybridPostCursor;->mContext:Landroid/content/Context;

    goto :goto_8
.end method
