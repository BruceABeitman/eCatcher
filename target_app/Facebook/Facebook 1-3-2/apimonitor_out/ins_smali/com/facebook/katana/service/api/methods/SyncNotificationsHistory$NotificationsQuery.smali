.class interface abstract Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsQuery;
.super Ljava/lang/Object;
.source "SyncNotificationsHistory.java"
.field public static final INDEX_NOTIFICATION_ID:I
.field public static final PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "notif_id"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/service/api/methods/SyncNotificationsHistory$NotificationsQuery;->PROJECTION:[Ljava/lang/String;
return-void
.end method