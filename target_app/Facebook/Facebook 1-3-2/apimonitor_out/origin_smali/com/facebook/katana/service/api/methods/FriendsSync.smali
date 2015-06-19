.class public Lcom/facebook/katana/service/api/methods/FriendsSync;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "FriendsSync.java"

# interfaces
.implements Lcom/facebook/katana/service/api/methods/ApiMethodListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/methods/FriendsSync$FriendQuery;
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private mCanceled:Z

.field private final mContext:Landroid/content/Context;

.field private final mDeletedFriendIds:Ljava/util/List;
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

.field private final mMyUsername:Ljava/lang/String;

.field private final mNeedUserImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookFriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionKey:Ljava/lang/String;

.field private final mUpdatedFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookFriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_operation:Lcom/facebook/katana/service/api/methods/ApiMethod;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 14

    const-string v2, "GET"

    const/4 v3, 0x0

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p2

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mSessionKey:Ljava/lang/String;

    iput-wide p4, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mMyUserId:J

    iput-object p6, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mMyUsername:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNeedUserImageMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNewFriends:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mUpdatedFriends:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mDeletedFriendIds:Ljava/util/List;

    const-string v0, "un"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mAccount:Ljava/lang/String;

    return-void
.end method

.method private detectFriendsChanges(Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookFriendInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/service/api/methods/FriendsSync$FriendQuery;->FRIENDS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_22
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_65

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_99

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNewFriends:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_ab

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mUpdatedFriends:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_ab

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mDeletedFriendIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_ab

    move v6, v11

    :goto_52
    return v6

    :cond_53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/katana/service/api/FacebookFriendInfo;

    invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_65
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/katana/service/api/FacebookFriendInfo;

    if-nez v8, :cond_7e

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mDeletedFriendIds:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_7e
    invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->computeHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mUpdatedFriends:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_95
    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/katana/service/api/FacebookFriendInfo;

    invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNewFriends:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_ab
    move v6, v12

    goto :goto_52
.end method

.method private syncFriends(Ljava/util/List;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookFriendInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mMyUsername:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->isSyncEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mAccount:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNeedUserImageMap:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/platform/PlatformStorage;->syncContacts(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    :cond_45
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mCanceled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4e

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/service/api/methods/FriendsSync;->detectFriendsChanges(Ljava/util/List;)Z

    move-result v22

    if-eqz v22, :cond_4d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mCanceled:Z

    move/from16 v22, v0

    if-nez v22, :cond_4d

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNewFriends:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-gtz v22, :cond_75

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mUpdatedFriends:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_97

    :cond_75
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-class v23, Lcom/facebook/katana/LiveFolderActivity;

    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v22, "com.facebook.katana.livefolder"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v22, 0x1400

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNewFriends:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_e6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNewFriends:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNewFriends:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNewFriends:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_cd
    :goto_cd
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_1a0

    sget-object v22, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v8

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    sget-object v22, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v8

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mUpdatedFriends:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_10c

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mUpdatedFriends:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_106
    :goto_106
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_2d4

    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mDeletedFriendIds:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_4d

    new-instance v10, Ljava/lang/StringBuffer;

    const/16 v22, 0x80

    move-object v0, v10

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v22, "user_id"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, " IN("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mDeletedFriendIds:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_13b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_446

    const-string v22, ")"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v22, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object v0, v8

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v22, 0x80

    move-object v0, v9

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v22, "user_id"

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, " IN("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mDeletedFriendIds:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_17e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_45d

    const-string v22, ")"

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v22, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object v0, v8

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4d

    :cond_1a0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/katana/service/api/FacebookFriendInfo;

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getUserId()J

    move-result-wide v20

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    aput-object v11, v16, v15

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v6, v15

    add-int/lit8 v15, v15, 0x1

    const-string v23, "user_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v23, "cell"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getCellPhone()Ljava/lang/String;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "other"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getOtherPhone()Ljava/lang/String;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "email"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getContactEmail()Ljava/lang/String;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "user_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v23, "first_name"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getFirstName()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "last_name"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getLastName()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "display_name"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "user_image_url"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->hasPhoneNumber()Z

    move-result v23

    if-eqz v23, :cond_277

    sget-object v23, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_UID_CONTENT_URI:Landroid/net/Uri;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v23, "extra_name"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v24

    move-object v0, v7

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v23, "intent"

    invoke-virtual {v7}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_277
    const-string v23, "birthday_month"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getBirthdayMonth()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "birthday_day"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getBirthdayDay()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "birthday_year"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getBirthdayYear()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "hash"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->computeHash()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_cd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNeedUserImageMap:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_cd

    :cond_2d4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/katana/service/api/FacebookFriendInfo;

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_106

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getUserId()J

    move-result-wide v20

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    const-string v23, "cell"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getCellPhone()Ljava/lang/String;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "other"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getOtherPhone()Ljava/lang/String;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "email"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getContactEmail()Ljava/lang/String;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v23, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_UID_CONTENT_URI:Landroid/net/Uri;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v0, v8

    move-object/from16 v1, v18

    move-object v2, v5

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    const-string v23, "first_name"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getFirstName()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "last_name"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getLastName()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "display_name"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "user_image_url"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->hasPhoneNumber()Z

    move-result v23

    if-eqz v23, :cond_438

    sget-object v23, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_UID_CONTENT_URI:Landroid/net/Uri;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v23, "extra_name"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v24

    move-object v0, v7

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v23, "intent"

    invoke-virtual {v7}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b1
    const-string v23, "birthday_month"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getBirthdayMonth()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "birthday_day"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getBirthdayDay()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "birthday_year"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getBirthdayYear()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "hash"

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->computeHash()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v23, Lcom/facebook/katana/provider/FriendsProvider;->FRIEND_UID_CONTENT_URI:Landroid/net/Uri;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v0, v8

    move-object/from16 v1, v18

    move-object v2, v11

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_106

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNeedUserImageMap:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getUserId()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_106

    :cond_438
    const-string v23, "intent"

    const/16 v24, 0x0

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b1

    :cond_446
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    if-eqz v12, :cond_454

    const/4 v12, 0x0

    :goto_44f
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_13b

    :cond_454
    const-string v23, ","

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_44f

    :cond_45d
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    if-eqz v12, :cond_46b

    const/4 v12, 0x0

    :goto_466
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_17e

    :cond_46b
    const-string v23, ","

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_466
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->m_operation:Lcom/facebook/katana/service/api/methods/ApiMethod;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->m_operation:Lcom/facebook/katana/service/api/methods/ApiMethod;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->m_operation:Lcom/facebook/katana/service/api/methods/ApiMethod;

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mCanceled:Z

    return-void
.end method

.method public getUsersWithoutImageMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mNeedUserImageMap:Ljava/util/Map;

    return-object v0
.end method

.method public onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 9

    move-object v0, p4

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/FriendsSync;->simulateSessionKeyError()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v0, Lcom/facebook/katana/service/api/FacebookApiException;

    const/16 v1, 0x66

    const-string v2, "Invalid credentials"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(ILjava/lang/String;)V

    :cond_10
    iget-boolean v1, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mCanceled:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    const/16 v2, 0x190

    const-string v3, "Canceled"

    invoke-interface {v1, p0, v2, v3, v0}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    invoke-interface {v1, p0, p2, p3, v0}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1d
.end method

.method public onOperationProgress(Lcom/facebook/katana/service/api/methods/ApiMethod;JJ)V
    .registers 6

    return-void
.end method

.method public onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 8

    iget-boolean v2, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mCanceled:Z

    if-eqz v2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/facebook/katana/service/api/methods/FqlSyncUsersQuery;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/methods/FqlSyncUsersQuery;->getFriends()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/katana/service/api/methods/FriendsSync;->syncFriends(Ljava/util/List;)V

    goto :goto_4
.end method

.method protected simulateSessionKeyError()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public start()V
    .registers 7

    new-instance v0, Lcom/facebook/katana/service/api/methods/FqlSyncUsersQuery;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mReqIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mSessionKey:Ljava/lang/String;

    iget-wide v3, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->mMyUserId:J

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/FqlSyncUsersQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->m_operation:Lcom/facebook/katana/service/api/methods/ApiMethod;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FriendsSync;->m_operation:Lcom/facebook/katana/service/api/methods/ApiMethod;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->start()V

    return-void
.end method
