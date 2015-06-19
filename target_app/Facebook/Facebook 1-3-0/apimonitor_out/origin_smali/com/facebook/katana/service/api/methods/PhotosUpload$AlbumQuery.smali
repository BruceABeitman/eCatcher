.class interface abstract Lcom/facebook/katana/service/api/methods/PhotosUpload$AlbumQuery;
.super Ljava/lang/Object;
.source "PhotosUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/PhotosUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AlbumQuery"
.end annotation


# static fields
.field public static final ALBUM_PROJECTION:[Ljava/lang/String;

.field public static final INDEX_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/service/api/methods/PhotosUpload$AlbumQuery;->ALBUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method
