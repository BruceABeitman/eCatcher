.class public final enum Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
.field public static final enum b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
.field public static final enum c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
.field public static final enum d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
.field public static final enum e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
.field private static final synthetic f:[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
const-string v1, "EVER"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
const-string v1, "DEBUG_MENU_ENABLED"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
const-string v1, "CONNECT_ICON_ENABLED"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
const-string v1, "AUDIO_EFFECTS_CONTROL_AVAILABLE"
invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
const-string v1, "GOOGLE_REVOKE_ENABLED"
invoke-direct {v0, v1, v6}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
const/4 v0, 0x5
new-array v0, v0, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
aput-object v1, v0, v6
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->f:[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
.registers 2
const-class v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->f:[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
return-object v0
.end method