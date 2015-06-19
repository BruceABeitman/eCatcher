.class interface abstract Lcom/facebook/katana/service/api/FacebookAlbum$AlbumQuery;
.super Ljava/lang/Object;
.source "FacebookAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/FacebookAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AlbumQuery"
.end annotation


# static fields
.field public static final ALBUM_PROJECTION:[Ljava/lang/String; = null

.field public static final INDEX_ALBUM_ID:I = 0x0

.field public static final INDEX_COVER_PHOTO_ID:I = 0x2

.field public static final INDEX_COVER_PHOTO_URL:I = 0x3

.field public static final INDEX_COVER_THUMBNAIL:I = 0x4

.field public static final INDEX_CREATED:I = 0x5

.field public static final INDEX_DESCRIPTION:I = 0x8

.field public static final INDEX_LOCATION:I = 0x9

.field public static final INDEX_MODIFIED:I = 0x6

.field public static final INDEX_NAME:I = 0x7

.field public static final INDEX_OWNER:I = 0x1

.field public static final INDEX_SIZE:I = 0xa

.field public static final INDEX_TYPE:I = 0xc

.field public static final INDEX_VISIBILITY:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "owner"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cover_pid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cover_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "modified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/service/api/FacebookAlbum$AlbumQuery;->ALBUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method
