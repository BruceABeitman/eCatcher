.class public Lcom/facebook/katana/service/api/methods/MailboxSync;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "MailboxSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/methods/MailboxSync$FriendsQuery;,
        Lcom/facebook/katana/service/api/methods/MailboxSync$ThreadsQuery;,
        Lcom/facebook/katana/service/api/methods/MailboxSync$UsersQuery;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static DEBUG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFolder:I

.field private final mLimit:I

.field private final mMyUserId:J

.field private final mSessionKey:Ljava/lang/String;

.field private final mStart:I

.field private final mSync:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    const-class v0, Lcom/facebook/katana/service/api/methods/MailboxSync;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->$assertionsDisabled:Z

    sput-boolean v1, Lcom/facebook/katana/service/api/methods/MailboxSync;->DEBUG:Z

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IIIZJLcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 17

    const-string v2, "GET"

    const/4 v3, 0x0

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mSessionKey:Ljava/lang/String;

    iput p4, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mFolder:I

    iput p5, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mStart:I

    iput p6, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mLimit:I

    iput-boolean p7, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mSync:Z

    iput-wide p8, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mMyUserId:J

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/service/api/methods/MailboxSync;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Collection;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/katana/service/api/methods/MailboxSync;->handleFetchResults(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/katana/service/api/methods/MailboxSync;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method private static addParticipantIdsToList(Ljava/util/List;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookMailboxThread;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/api/FacebookMailboxThread;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4
.end method

.method private buildThreadChangeSets(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookMailboxThread;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookMailboxThread;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookMailboxThread;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_f7

    const/4 v4, 0x1

    move v8, v4

    :goto_4
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    if-eqz v8, :cond_fb

    const/4 v15, 0x0

    :goto_c
    const/4 v10, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_10f

    if-nez v8, :cond_1e

    const-string v4, ")"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1e
    if-eqz v8, :cond_136

    const/4 v4, 0x0

    move-object v5, v4

    :goto_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mFolder:I

    move v4, v0

    invoke-static {v4}, Lcom/facebook/katana/provider/MailboxProvider;->getThreadsFolderUri(I)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/facebook/katana/service/api/methods/MailboxSync$ThreadsQuery;->THREADS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_73

    :cond_42
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/service/api/FacebookMailboxThread;

    if-eqz v12, :cond_13d

    invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getLastUpdate()J

    move-result-wide v6

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    cmp-long v4, v6, v15

    if-eqz v4, :cond_66

    move-object/from16 v0, p3

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_66
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    :goto_6d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_42

    :cond_73
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messages to add"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/katana/service/api/methods/MailboxSync;->log(Ljava/lang/String;)V

    :cond_a2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messages to change"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/katana/service/api/methods/MailboxSync;->log(Ljava/lang/String;)V

    :cond_c4
    if-eqz p4, :cond_e8

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messages to delete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/katana/service/api/methods/MailboxSync;->log(Ljava/lang/String;)V

    :cond_e8
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/MailboxSync;->addParticipantIdsToList(Ljava/util/List;Ljava/util/Set;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/MailboxSync;->addParticipantIdsToList(Ljava/util/List;Ljava/util/Set;)V

    return-void

    :cond_f7
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_4

    :cond_fb
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v4, 0x100

    invoke-direct {v15, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v4, "tid"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " IN("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :cond_10f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/service/api/FacebookMailboxThread;

    invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getThreadId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v11, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_12e

    const/4 v10, 0x0

    :cond_123
    :goto_123
    if-nez v8, :cond_11

    invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getThreadId()J

    move-result-wide v6

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto/16 :goto_11

    :cond_12e
    if-nez v8, :cond_123

    const-string v5, ","

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_123

    :cond_136
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_22

    :cond_13d
    if-eqz v8, :cond_14b

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6d

    :cond_14b
    sget-boolean v4, Lcom/facebook/katana/service/api/methods/MailboxSync;->$assertionsDisabled:Z

    if-nez v4, :cond_6d

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private commitChanges(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookMailboxThread;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookMailboxThread;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5b

    const/16 v18, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    move v0, v6

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0800a0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_14c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_52

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "adding "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " messages"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/katana/service/api/methods/MailboxSync;->log(Ljava/lang/String;)V

    :cond_52
    sget-object v6, Lcom/facebook/katana/provider/MailboxProvider;->THREADS_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v11

    move-object v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_5b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_b7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mFolder:I

    move v6, v0

    invoke-static {v6}, Lcom/facebook/katana/provider/MailboxProvider;->getThreadsTidFolderUri(I)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mFolder:I

    move v6, v0

    invoke-static {v6}, Lcom/facebook/katana/provider/MailboxProvider;->getMessagesFolderUri(I)Landroid/net/Uri;

    move-result-object v15

    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_168

    new-instance v22, Ljava/lang/StringBuffer;

    const/16 v6, 0x100

    move-object/from16 v0, v22

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v6, "tid"

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " IN("

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v14, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_23e

    const-string v6, ")"

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v11, v15, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_b7
    if-eqz p3, :cond_14b

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_14b

    new-instance v13, Ljava/lang/StringBuffer;

    const/16 v6, 0x80

    invoke-direct {v13, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v6, "tid"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " IN("

    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v14, 0x1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_25c

    const-string v6, ")"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mFolder:I

    move v6, v0

    invoke-static {v6}, Lcom/facebook/katana/provider/MailboxProvider;->getThreadsFolderUri(I)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v11

    move-object/from16 v1, v19

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v12, Ljava/lang/StringBuffer;

    const/16 v6, 0x80

    invoke-direct {v12, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v6, "tid"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " IN("

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v14, 0x1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_273

    const-string v6, ")"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deleting "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " messages"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/katana/service/api/methods/MailboxSync;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mFolder:I

    move v6, v0

    invoke-static {v6}, Lcom/facebook/katana/provider/MailboxProvider;->getMessagesFolderUri(I)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v11, v15, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v6, Lcom/facebook/katana/provider/MailboxProvider;->USERS_PRUNE_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v11, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_14b
    return-void

    :cond_14c
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/katana/service/api/FacebookMailboxThread;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mFolder:I

    move v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mMyUserId:J

    move-wide v7, v0

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getContentValues(IJLjava/util/Map;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    aput-object v6, v20, v18

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2a

    :cond_168
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/katana/service/api/FacebookMailboxThread;

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    const-string v7, "subject"

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getSubject()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "snippet"

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getSnippet()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "other_party"

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getOtherPartyUserId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v16

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "msg_count"

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getMsgCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v16

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "unread_count"

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getUnreadCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v16

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "last_update"

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getLastUpdate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v16

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "participants"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x7f0800a0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mMyUserId:J

    move-wide v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v0, v5

    move-object/from16 v1, p4

    move-object v2, v8

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getParticipantsString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_218

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "updating "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " messages"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/katana/service/api/methods/MailboxSync;->log(Ljava/lang/String;)V

    :cond_218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getThreadId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7c

    :cond_23e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/katana/service/api/FacebookMailboxThread;

    if-eqz v14, :cond_253

    const/4 v14, 0x0

    :goto_247
    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getThreadId()J

    move-result-wide v7

    move-object/from16 v0, v22

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto/16 :goto_a1

    :cond_253
    const-string v7, ","

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_247

    :cond_25c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    if-eqz v14, :cond_26d

    const/4 v14, 0x0

    :goto_265
    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_d5

    :cond_26d
    const-string v7, ","

    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_265

    :cond_273
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    if-eqz v14, :cond_284

    const/4 v14, 0x0

    :goto_27c
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_10c

    :cond_284
    const-string v7, ","

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_27c
.end method

.method private findMissingUserIds(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "looking for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " users"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/katana/service/api/methods/MailboxSync;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "have "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cached users"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/katana/service/api/methods/MailboxSync;->log(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v16

    if-lez v16, :cond_17f

    const-string v4, "uid"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/api/methods/MailboxSync;->whereForPropertyWithValues(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    sget-object v4, Lcom/facebook/katana/provider/MailboxProvider;->USERS_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/facebook/katana/service/api/methods/MailboxSync$UsersQuery;->USERS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_bd

    :cond_73
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v7, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v4, 0x1

    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x2

    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x3

    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x4

    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_73

    :cond_bd
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v5

    sub-int v5, v16, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " users in the users table"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/katana/service/api/methods/MailboxSync;->log(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v16

    if-lez v16, :cond_17f

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "user_id"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/api/methods/MailboxSync;->whereForPropertyWithValues(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/facebook/katana/service/api/methods/MailboxSync$FriendsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    move-object v11, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_144

    :cond_106
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    new-instance v7, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x3

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_106

    :cond_144
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    sget-boolean v4, Lcom/facebook/katana/service/api/methods/MailboxSync;->$assertionsDisabled:Z

    if-nez v4, :cond_15d

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v5

    sub-int v5, v5, v16

    if-eq v4, v5, :cond_15d

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_15d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " users in the friends table"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/katana/service/api/methods/MailboxSync;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/facebook/katana/service/api/methods/MailboxSync;->insertUsers(Ljava/util/Collection;)V

    :cond_17f
    return-void
.end method

.method private handleFetchResults(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Collection;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookMailboxThread;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mSync:Z

    if-eqz v0, :cond_48

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    :goto_14
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    monitor-enter p0

    move-object v0, p0

    move-object v1, p1

    :try_start_21
    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/MailboxSync;->buildThreadChangeSets(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    invoke-direct {p0, v5, v6, p3}, Lcom/facebook/katana/service/api/methods/MailboxSync;->findMissingUserIds(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V

    if-nez p4, :cond_36

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_36

    const-string v0, "MailboxSync"

    const-string v1, "still missing users after fetching users!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    if-nez p4, :cond_3b

    invoke-direct {p0, p2}, Lcom/facebook/katana/service/api/methods/MailboxSync;->saveNewUsers(Ljava/util/Map;)V

    :cond_3b
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_43

    if-nez p4, :cond_46

    :cond_43
    invoke-direct {p0, v2, v3, v4, p3}, Lcom/facebook/katana/service/api/methods/MailboxSync;->commitChanges(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    :cond_46
    monitor-exit p0

    return-object v6

    :cond_48
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_14

    :catchall_4b
    move-exception v0

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_21 .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method private insertUsers(Ljava/util/Collection;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_36

    iget-object v6, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v5, v1, [Landroid/content/ContentValues;

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_37

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "adding "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " users to the users table"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/katana/service/api/methods/MailboxSync;->log(Ljava/lang/String;)V

    sget-object v6, Lcom/facebook/katana/provider/MailboxProvider;->USERS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_36
    return-void

    :cond_37
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/service/api/FacebookUser;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    const-string v7, "uid"

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "first_name"

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getFirstName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "last_name"

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getLastName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "display_name"

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "user_image_url"

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/facebook/katana/service/api/methods/MailboxSync;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "MailboxSync"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private saveNewUsers(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/katana/service/api/methods/MailboxSync;->whereForPropertyWithValues(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/katana/provider/MailboxProvider;->USERS_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/service/api/methods/MailboxSync$UsersQuery;->USERS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_25
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_37
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/katana/service/api/methods/MailboxSync;->insertUsers(Ljava/util/Collection;)V

    return-void
.end method

.method private whereForPropertyWithValues(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_25

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    :goto_2e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_15

    :cond_32
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2e
.end method


# virtual methods
.method public start()V
    .registers 9

    new-instance v7, Lcom/facebook/katana/service/api/methods/MailboxSync$1;

    invoke-direct {v7, p0}, Lcom/facebook/katana/service/api/methods/MailboxSync$1;-><init>(Lcom/facebook/katana/service/api/methods/MailboxSync;)V

    new-instance v0, Lcom/facebook/katana/service/api/methods/MailboxGetThreads;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mReqIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mSessionKey:Ljava/lang/String;

    iget v4, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mFolder:I

    iget v5, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mStart:I

    iget v6, p0, Lcom/facebook/katana/service/api/methods/MailboxSync;->mLimit:I

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/api/methods/MailboxGetThreads;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IIILcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/MailboxGetThreads;->start()V

    return-void
.end method
