.class public Lcom/facebook/katana/service/api/methods/SyncAlbums;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "SyncAlbums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;,
        Lcom/facebook/katana/service/api/methods/SyncAlbums$GetCoversListener;
    }
.end annotation


# static fields
.field private static final SIMULATE_FAILURE:Z


# instance fields
.field private final mAlbumIds:Ljava/lang/String;

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

.field private final mContext:Landroid/content/Context;

.field private final mSessionKey:Ljava/lang/String;

.field private final mUserId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J[Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 14

    const/4 v3, 0x0

    const-string v2, "GET"

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p2

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mSessionKey:Ljava/lang/String;

    iput-wide p4, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mUserId:J

    if-eqz p6, :cond_22

    array-length v0, p6

    if-lez v0, :cond_22

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->listToCommaString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mAlbumIds:Ljava/lang/String;

    :goto_21
    return-void

    :cond_22
    iput-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mAlbumIds:Ljava/lang/String;

    goto :goto_21
.end method

.method static synthetic access$0(Lcom/facebook/katana/service/api/methods/SyncAlbums;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mAlbums:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mAlbums:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Lcom/facebook/katana/util/Factory;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->localAlbumsCursorFactory()Lcom/facebook/katana/util/Factory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Z
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->performAdds()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Z
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->performDeletes()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/facebook/katana/service/api/methods/SyncAlbums;)J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mUserId:J

    return-wide v0
.end method

.method static synthetic access$7(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/facebook/katana/service/api/methods/SyncAlbums;)Z
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->updatingSpecificAlbums()Z

    move-result v0

    return v0
.end method

.method private static listToCommaString(Ljava/util/List;Z)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v6, "\'"

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_36

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_24
    if-eqz p1, :cond_38

    const-string v4, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_36
    const/4 v0, 0x0

    goto :goto_24

    :cond_38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_e
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

    new-instance v0, Lcom/facebook/katana/service/api/methods/SyncAlbums$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/service/api/methods/SyncAlbums$1;-><init>(Lcom/facebook/katana/service/api/methods/SyncAlbums;)V

    return-object v0
.end method

.method private performAdds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method private performDeletes()Z
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/SyncAlbums;->updatingSpecificAlbums()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private updatingSpecificAlbums()Z
    .registers 5

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mUserId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public start()V
    .registers 9

    new-instance v0, Lcom/facebook/katana/service/api/methods/PhotosGetAlbums;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mReqIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mSessionKey:Ljava/lang/String;

    iget-wide v3, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mUserId:J

    iget-object v5, p0, Lcom/facebook/katana/service/api/methods/SyncAlbums;->mAlbumIds:Ljava/lang/String;

    new-instance v6, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncAlbums;Lcom/facebook/katana/service/api/methods/SyncAlbums$GetAlbumsListener;)V

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/methods/PhotosGetAlbums;-><init>(Landroid/content/Intent;Ljava/lang/String;JLjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/PhotosGetAlbums;->start()V

    return-void
.end method
