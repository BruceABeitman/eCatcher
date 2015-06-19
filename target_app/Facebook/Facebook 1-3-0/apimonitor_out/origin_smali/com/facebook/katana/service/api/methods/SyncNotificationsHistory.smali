.class public Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "SyncNotificationsHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryAppsProfilesListener;,
        Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FqlQueryProfilesListener;,
        Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FriendsQuery;,
        Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;,
        Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsQuery;
    }
.end annotation


# instance fields
.field private final mAllUsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDeletedNotificationIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyUserId:J

.field private final mNeededApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mNeededUsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 13

    const-string v2, "GET"

    const/4 v3, 0x0

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNewNotifications:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mDeletedNotificationIds:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededApps:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mAllUsers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededUsers:Ljava/util/Map;

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mSessionKey:Ljava/lang/String;

    iput-wide p4, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mMyUserId:J

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNotifications:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Z
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->detectSyncChanges()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->checkNeededApps()V

    return-void
.end method

.method static synthetic access$3(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->checkNeededUsers()V

    return-void
.end method

.method static synthetic access$4(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededApps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededUsers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->updateContentProviders()V

    return-void
.end method

.method static synthetic access$7(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mAllUsers:Ljava/util/Map;

    return-object v0
.end method

.method private checkNeededApps()V
    .registers 6

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNewNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNewNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/api/FacebookNotification;

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededApps:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookNotification;->getAppId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method private checkNeededUsers()V
    .registers 14

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNewNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNewNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_96

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededUsers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_8

    new-instance v10, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v10, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "user_id"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " IN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededUsers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_ac

    const-string v1, ")"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FriendsQuery;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_91

    :cond_5f
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededUsers:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mAllUsers:Ljava/util/Map;

    new-instance v1, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5f

    :cond_91
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    :cond_96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/service/api/FacebookNotification;

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededUsers:Ljava/util/Map;

    invoke-virtual {v11}, Lcom/facebook/katana/service/api/FacebookNotification;->getSenderId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_ac
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v8, :cond_b9

    const/4 v8, 0x0

    :goto_b5
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_3a

    :cond_b9
    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b5
.end method

.method private detectSyncChanges()Z
    .registers 12

    const/4 v10, 0x0

    const/4 v3, 0x0

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6a

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/NotificationsProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_47

    :cond_29
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/katana/service/api/FacebookNotification;

    if-nez v7, :cond_3e

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mDeletedNotificationIds:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_29

    :cond_47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7c

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNewNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_88

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mDeletedNotificationIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_88

    move v1, v10

    :goto_69
    return v1

    :cond_6a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/katana/service/api/FacebookNotification;

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookNotification;->getNotificationId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_7c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/katana/service/api/FacebookNotification;

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNewNotifications:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_88
    const/4 v1, 0x1

    goto :goto_69
.end method

.method private updateContentProviders()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNewNotifications:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_35

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNewNotifications:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v10, v13, [Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNewNotifications:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_72

    sget-object v13, Lcom/facebook/katana/provider/NotificationsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v13, v10}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mDeletedNotificationIds:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_71

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v13, 0x100

    invoke-direct {v3, v13}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v13, "notif_id"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, " IN("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mDeletedNotificationIds:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_130

    const/16 v13, 0x29

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v13, Lcom/facebook/katana/provider/NotificationsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v2, v13, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_71
    return-void

    :cond_72
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/katana/service/api/FacebookNotification;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v10, v9

    add-int/lit8 v9, v9, 0x1

    const-string v14, "body"

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookNotification;->getBody()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "created"

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookNotification;->getCreatedTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v14, "href"

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookNotification;->getHRef()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "is_read"

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookNotification;->isRead()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v14, "notif_id"

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookNotification;->getNotificationId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v14, "sender_id"

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookNotification;->getSenderId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mNeededApps:Ljava/util/Map;

    move-object v14, v0

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookNotification;->getAppId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookApp;

    const-string v14, "app_id"

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookApp;->getAppId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mAllUsers:Ljava/util/Map;

    move-object v14, v0

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookNotification;->getSenderId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/service/api/FacebookUser;

    if-eqz v12, :cond_106

    invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    const-string v14, "sender_name"

    invoke-virtual {v5, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_106
    const-string v14, "sender_url"

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookApp;->getImageUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookNotification;->getTitle()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_129

    if-eqz v6, :cond_129

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_129

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    :cond_129
    const-string v14, "title"

    invoke-virtual {v5, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a

    :cond_130
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v4, :cond_13e

    const/4 v4, 0x0

    :goto_139
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_5c

    :cond_13e
    const/16 v14, 0x2c

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_139
.end method


# virtual methods
.method public start()V
    .registers 8

    new-instance v0, Lcom/facebook/katana/service/api/methods/NotificationsGetHistory;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mReqIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mSessionKey:Ljava/lang/String;

    iget-wide v3, p0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;->mMyUserId:J

    new-instance v5, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsListener;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/NotificationsGetHistory;-><init>(Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/NotificationsGetHistory;->start()V

    return-void
.end method
