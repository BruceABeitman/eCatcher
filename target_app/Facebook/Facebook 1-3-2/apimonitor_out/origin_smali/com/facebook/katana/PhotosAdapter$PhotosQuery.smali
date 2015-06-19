.class public interface abstract Lcom/facebook/katana/PhotosAdapter$PhotosQuery;
.super Ljava/lang/Object;
.source "PhotosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/PhotosAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotosQuery"
.end annotation


# static fields
.field public static final INDEX_PHOTO_ID:I = 0x1

.field public static final INDEX_SRC:I = 0x2

.field public static final INDEX_THUMBNAIL:I = 0x3

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "src"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/PhotosAdapter$PhotosQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
