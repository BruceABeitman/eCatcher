.class interface abstract Lcom/facebook/katana/binding/StreamPhotosCache$StreamPhotoQuery;
.super Ljava/lang/Object;
.source "StreamPhotosCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/binding/StreamPhotosCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "StreamPhotoQuery"
.end annotation


# static fields
.field public static final INDEX_FILENAME:I = 0x2

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_URL:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "filename"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/binding/StreamPhotosCache$StreamPhotoQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
