.class interface abstract Lcom/facebook/katana/service/api/FacebookPhoto$PhotoQuery;
.super Ljava/lang/Object;
.source "FacebookPhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/FacebookPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PhotoQuery"
.end annotation


# static fields
.field public static final INDEX_ALBUM_ID:I = 0x0

.field public static final INDEX_CAPTION:I = 0x4

.field public static final INDEX_CREATED:I = 0x3

.field public static final INDEX_OWNER:I = 0x2

.field public static final INDEX_PHOTO_ID:I = 0x1

.field public static final INDEX_SRC:I = 0x5

.field public static final INDEX_SRC_BIG:I = 0x6

.field public static final INDEX_SRC_SMALL:I = 0x7

.field public static final INDEX_THUMBNAIL:I = 0x8

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "owner"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "caption"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "src"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "src_big"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "src_small"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/service/api/FacebookPhoto$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
