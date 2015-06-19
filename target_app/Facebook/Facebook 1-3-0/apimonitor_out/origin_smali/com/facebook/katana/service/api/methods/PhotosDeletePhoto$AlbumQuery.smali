.class interface abstract Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto$AlbumQuery;
.super Ljava/lang/Object;
.source "PhotosDeletePhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AlbumQuery"
.end annotation


# static fields
.field public static final ALBUM_PROJECTION:[Ljava/lang/String; = null

.field public static final INDEX_COVER_PHOTO_ID:I = 0x1

.field public static final INDEX_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cover_pid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto$AlbumQuery;->ALBUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method
