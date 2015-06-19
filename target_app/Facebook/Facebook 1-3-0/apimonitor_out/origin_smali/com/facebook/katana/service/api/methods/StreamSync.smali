.class public Lcom/facebook/katana/service/api/methods/StreamSync;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "StreamSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;,
        Lcom/facebook/katana/service/api/methods/StreamSync$GetCoversListener;
    }
.end annotation


# static fields
.field private static final SIMULATE_SESSION_KEY_ERROR:Z


# instance fields
.field private mAlbums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatchOperation:Lcom/facebook/katana/service/api/methods/BatchRun;

.field private final mContext:Landroid/content/Context;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionKey:Ljava/lang/String;

.field private final mSimulateSessionKeyError:Z

.field private final mStreamGetOperation:Lcom/facebook/katana/service/api/methods/StreamGet;

.field private final mUsersGetInfoOperation:Lcom/facebook/katana/service/api/methods/UsersGetInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[JJJILjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 35

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v10, p13

    invoke-direct/range {v5 .. v10}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/methods/StreamSync;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/methods/StreamSync;->mSessionKey:Ljava/lang/String;

    new-instance v5, Lcom/facebook/katana/service/api/methods/StreamGet;

    new-instance v18, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;-><init>(Lcom/facebook/katana/service/api/methods/StreamSync;Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;)V

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    move/from16 v16, p11

    move-object/from16 v17, p12

    invoke-direct/range {v5 .. v18}, Lcom/facebook/katana/service/api/methods/StreamGet;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[JJJILjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/methods/StreamSync;->mStreamGetOperation:Lcom/facebook/katana/service/api/methods/StreamGet;

    if-eqz p6, :cond_bb

    const-string v5, "app_value"

    const/4 v6, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    if-nez v20, :cond_b4

    new-instance v5, Lcom/facebook/katana/service/api/methods/UsersGetInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-wide v7, p6, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "uid,name,pic_square,status"

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v5 .. v10}, Lcom/facebook/katana/service/api/methods/UsersGetInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/methods/StreamSync;->mUsersGetInfoOperation:Lcom/facebook/katana/service/api/methods/UsersGetInfo;

    :goto_6f
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamSync;->mStreamGetOperation:Lcom/facebook/katana/service/api/methods/StreamGet;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamSync;->mUsersGetInfoOperation:Lcom/facebook/katana/service/api/methods/UsersGetInfo;

    move-object v5, v0

    if-eqz v5, :cond_91

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/StreamSync;->mUsersGetInfoOperation:Lcom/facebook/katana/service/api/methods/UsersGetInfo;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_91
    new-instance v5, Lcom/facebook/katana/service/api/methods/BatchRun;

    new-instance v6, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;-><init>(Lcom/facebook/katana/service/api/methods/StreamSync;Lcom/facebook/katana/service/api/methods/StreamSync$BatchListener;)V

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/BatchRun;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/methods/StreamSync;->mBatchOperation:Lcom/facebook/katana/service/api/methods/BatchRun;

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/facebook/katana/service/api/methods/StreamSync;->mSimulateSessionKeyError:Z

    return-void

    :cond_b4
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/methods/StreamSync;->mUsersGetInfoOperation:Lcom/facebook/katana/service/api/methods/UsersGetInfo;

    goto :goto_6f

    :cond_bb
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/methods/StreamSync;->mUsersGetInfoOperation:Lcom/facebook/katana/service/api/methods/UsersGetInfo;

    goto :goto_6f
.end method

.method static synthetic access$0(Lcom/facebook/katana/service/api/methods/StreamSync;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/katana/service/api/methods/StreamSync;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/katana/service/api/methods/StreamSync;)Lcom/facebook/katana/service/api/methods/StreamGet;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync;->mStreamGetOperation:Lcom/facebook/katana/service/api/methods/StreamGet;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/katana/service/api/methods/StreamSync;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/StreamSync;->mPosts:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4(Lcom/facebook/katana/service/api/methods/StreamSync;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/StreamSync;->mAlbums:Ljava/util/List;

    return-void
.end method

.method static synthetic access$5(Lcom/facebook/katana/service/api/methods/StreamSync;)Lcom/facebook/katana/service/api/methods/UsersGetInfo;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync;->mUsersGetInfoOperation:Lcom/facebook/katana/service/api/methods/UsersGetInfo;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/katana/service/api/methods/StreamSync;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/StreamSync;->mInfos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$7(Lcom/facebook/katana/service/api/methods/StreamSync;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync;->mAlbums:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lcom/facebook/katana/service/api/methods/StreamSync;)Lcom/facebook/katana/util/Factory;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/StreamSync;->localAlbumsCursorFactory()Lcom/facebook/katana/util/Factory;

    move-result-object v0

    return-object v0
.end method

.method private localAlbumsCursorFactory()Lcom/facebook/katana/util/Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/util/Factory",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/katana/service/api/methods/StreamSync$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/service/api/methods/StreamSync$1;-><init>(Lcom/facebook/katana/service/api/methods/StreamSync;)V

    return-object v0
.end method


# virtual methods
.method public getInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync;->mInfos:Ljava/util/List;

    return-object v0
.end method

.method public getPosts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync;->mPosts:Ljava/util/List;

    return-object v0
.end method

.method protected simulateSessionKeyError()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync;->mSimulateSessionKeyError:Z

    return v0
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/StreamSync;->mBatchOperation:Lcom/facebook/katana/service/api/methods/BatchRun;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/BatchRun;->start()V

    return-void
.end method
