.class public interface abstract Lcom/facebook/katana/NotificationsAdapter$NotificationsQuery;
.super Ljava/lang/Object;
.source "NotificationsAdapter.java"
.field public static final INDEX_APP_ID:I = 0x2
.field public static final INDEX_BODY:I = 0x7
.field public static final INDEX_CREATED_TIME:I = 0x8
.field public static final INDEX_HREF:I = 0x9
.field public static final INDEX_IS_READ:I = 0xa
.field public static final INDEX_NOTIFICATION_ID:I = 0x1
.field public static final INDEX_SENDER_ID:I = 0x3
.field public static final INDEX_SENDER_IMAGE_URL:I = 0x5
.field public static final INDEX_SENDER_NAME:I = 0x4
.field public static final INDEX_TITLE:I = 0x6
.field public static final PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0xb
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "notif_id"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "app_id"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "sender_id"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "sender_name"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "sender_url"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "title"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "body"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "created"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "href"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "is_read"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/NotificationsAdapter$NotificationsQuery;->PROJECTION:[Ljava/lang/String;
return-void
.end method