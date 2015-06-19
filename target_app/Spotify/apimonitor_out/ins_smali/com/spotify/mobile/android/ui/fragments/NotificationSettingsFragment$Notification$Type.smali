.class public final enum Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
.field public static final enum b:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
.field private static final synthetic c:[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
const-string v1, "PUSH"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
const-string v1, "MARKETING"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->b:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
const/4 v0, 0x2
new-array v0, v0, [Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->b:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
aput-object v1, v0, v3
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->c:[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
.registers 2
const-class v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->c:[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
return-object v0
.end method