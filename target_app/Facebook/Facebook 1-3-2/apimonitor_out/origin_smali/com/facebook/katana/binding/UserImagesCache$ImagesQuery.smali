.class interface abstract Lcom/facebook/katana/binding/UserImagesCache$ImagesQuery;
.super Ljava/lang/Object;
.source "UserImagesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/binding/UserImagesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ImagesQuery"
.end annotation


# static fields
.field public static final INDEX_USER_IMAGE:I

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_image"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/binding/UserImagesCache$ImagesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
