.class public interface abstract Lcom/facebook/katana/DropdownFriendsAdapter$FriendsQuery;
.super Ljava/lang/Object;
.source "DropdownFriendsAdapter.java"
.field public static final INDEX_USER_DISPLAY_NAME:I = 0x4
.field public static final INDEX_USER_FIRST_NAME:I = 0x2
.field public static final INDEX_USER_ID:I = 0x1
.field public static final INDEX_USER_IMAGE_URL:I = 0x5
.field public static final INDEX_USER_LAST_NAME:I = 0x3
.field public static final PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "user_id"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "first_name"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "last_name"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "display_name"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "user_image_url"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/DropdownFriendsAdapter$FriendsQuery;->PROJECTION:[Ljava/lang/String;
return-void
.end method