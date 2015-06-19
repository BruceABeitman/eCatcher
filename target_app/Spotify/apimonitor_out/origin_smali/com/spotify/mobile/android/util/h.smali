.class public final Lcom/spotify/mobile/android/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Various"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Various Artists"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Various Artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Various Artists."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Various Artistes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/util/h;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    sget-object v2, Lcom/spotify/mobile/android/util/h;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v0, 0x1

    :cond_10
    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method
