.class public final Lco/vine/android/provider/VineDatabaseSQL$ChannelsQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineDatabaseSQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelsQuery"
.end annotation


# static fields
.field public static final INDEX_BACKGROUND_COLOR:I = 0x4

.field public static final INDEX_CHANNEL:I = 0x2

.field public static final INDEX_CHANNEL_ID:I = 0x1

.field public static final INDEX_FONT_COLOR:I = 0x5

.field public static final INDEX_ICON_FULL_URL:I = 0x8

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_IS_LAST:I = 0x7

.field public static final INDEX_LAST_USED_TIMESTAMP:I = 0x6

.field public static final INDEX_RETINA_ICON_FULL_URL:I = 0x9

.field public static final INDEX_TIMESTAMP:I = 0x3

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "channel_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "channel"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "background_color"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "font_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "last_used_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_last"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "icon_full_url"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "retina_icon_full_url"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$ChannelsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
