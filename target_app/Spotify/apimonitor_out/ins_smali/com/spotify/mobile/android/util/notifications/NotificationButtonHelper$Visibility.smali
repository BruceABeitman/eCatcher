.class public final enum Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
.field public static final enum b:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
.field public static final enum c:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
.field private static final synthetic d:[Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
const-string v1, "NORMAL"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->a:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
const-string v1, "DISABLED"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->b:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
new-instance v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
const-string v1, "SELECTED"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->c:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
const/4 v0, 0x3
new-array v0, v0, [Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
sget-object v1, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->a:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->b:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->c:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
aput-object v1, v0, v4
sput-object v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->d:[Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
.registers 2
const-class v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->d:[Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
return-object v0
.end method