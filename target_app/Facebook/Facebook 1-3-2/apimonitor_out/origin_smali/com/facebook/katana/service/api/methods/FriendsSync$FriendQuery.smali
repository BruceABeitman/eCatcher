.class interface abstract Lcom/facebook/katana/service/api/methods/FriendsSync$FriendQuery;
.super Ljava/lang/Object;
.source "FriendsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/FriendsSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FriendQuery"
.end annotation


# static fields
.field public static final FRIENDS_PROJECTION:[Ljava/lang/String; = null

.field public static final INDEX_HASH:I = 0x1

.field public static final INDEX_USER_ID:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hash"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/service/api/methods/FriendsSync$FriendQuery;->FRIENDS_PROJECTION:[Ljava/lang/String;

    return-void
.end method
