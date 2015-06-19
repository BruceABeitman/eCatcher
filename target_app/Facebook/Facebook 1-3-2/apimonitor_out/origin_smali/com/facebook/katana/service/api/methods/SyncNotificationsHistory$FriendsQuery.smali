.class interface abstract Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FriendsQuery;
.super Ljava/lang/Object;
.source "SyncNotificationsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FriendsQuery"
.end annotation


# static fields
.field public static final INDEX_USER_DISPLAY_NAME:I = 0x3

.field public static final INDEX_USER_FIRST_NAME:I = 0x1

.field public static final INDEX_USER_ID:I = 0x0

.field public static final INDEX_USER_LAST_NAME:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "first_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$FriendsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
