.class public final Lcom/spotify/mobile/android/util/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/provider/m;->a:Landroid/net/Uri;

    sput-object v0, Lcom/spotify/mobile/android/util/cj;->a:Landroid/net/Uri;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_image_large_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "length"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_starred"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/util/cj;->b:[Ljava/lang/String;

    return-void
.end method
