.class interface abstract Lcom/facebook/katana/AlbumsAdapter$AlbumsQuery;
.super Ljava/lang/Object;
.source "AlbumsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/AlbumsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AlbumsQuery"
.end annotation


# static fields
.field public static final INDEX_ALBUM_ID:I = 0x1

.field public static final INDEX_COVER_PHOTO_ID:I = 0x2

.field public static final INDEX_COVER_PHOTO_URL:I = 0x3

.field public static final INDEX_COVER_THUMBNAIL:I = 0x4

.field public static final INDEX_NAME:I = 0x6

.field public static final INDEX_SIZE:I = 0x5

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "aid"

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

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/AlbumsAdapter$AlbumsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
