.class final synthetic Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->values()[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$5;->a:[I
:try_start_9
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$5;->a:[I
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->b:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$5;->a:[I
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20
return-void
:catch_20
move-exception v0
goto :goto_1f
:catch_22
move-exception v0
goto :goto_14
.end method