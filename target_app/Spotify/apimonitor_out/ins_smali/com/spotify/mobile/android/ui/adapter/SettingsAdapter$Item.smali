.class public final enum Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum f:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum g:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum h:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum i:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum j:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum k:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum l:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum m:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum n:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum o:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum p:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum q:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum r:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum s:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum t:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum u:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field public static final enum v:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field private static final synthetic w:[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.field private final mVisibleFor:Ljava/util/HashSet;
.field private final mVisibleWhen:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
.method static constructor <clinit>()V
.registers 11
const/4 v10, 0x4
const/4 v9, 0x3
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "OFFLINE_MODE"
new-array v2, v7, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
sget-object v3, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
aput-object v3, v2, v6
invoke-direct {v0, v1, v6, v2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "CROSSFADE"
new-array v2, v6, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-direct {v0, v1, v7, v2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "GAPLESS"
new-array v2, v6, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-direct {v0, v1, v8, v2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "SEND_BROADCASTS"
new-array v2, v6, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-direct {v0, v1, v9, v2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "DEVICE_PICKER"
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
new-array v3, v6, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-direct {v0, v1, v10, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "PRIVATE_SESSION"
const/4 v2, 0x5
new-array v3, v6, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->f:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "FACEBOOK"
const/4 v2, 0x6
new-array v3, v6, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->g:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "LASTFM"
const/4 v2, 0x7
new-array v3, v6, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->h:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "STREAM_QUALITY"
const/16 v2, 0x8
new-array v3, v6, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->i:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "DOWNLOAD_QUALITY"
const/16 v2, 0x9
new-array v3, v7, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
sget-object v4, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
aput-object v4, v3, v6
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->j:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "DOWNLOAD_OVER_3G"
const/16 v2, 0xa
new-array v3, v7, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
sget-object v4, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
aput-object v4, v3, v6
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->k:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "AUDIO_EFFECTS"
const/16 v2, 0xb
sget-object v3, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
new-array v4, v6, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->l:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "NOTIFICATIONS"
const/16 v2, 0xc
new-array v3, v6, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->m:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "VERSION"
const/16 v2, 0xd
new-array v3, v7, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
sget-object v4, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
aput-object v4, v3, v6
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->n:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "LICENSES"
const/16 v2, 0xe
new-array v3, v7, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
sget-object v4, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
aput-object v4, v3, v6
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->o:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "TERMS_CONDITIONS"
const/16 v2, 0xf
new-array v3, v7, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
sget-object v4, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
aput-object v4, v3, v6
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->p:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "PRIVACY_POLICY"
const/16 v2, 0x10
new-array v3, v7, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
sget-object v4, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
aput-object v4, v3, v6
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->q:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "MOBILE_TERMS_CONDITIONS"
const/16 v2, 0x11
new-array v3, v7, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
sget-object v4, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
aput-object v4, v3, v6
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->r:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "DELETE_CACHE"
const/16 v2, 0x12
new-array v3, v6, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->s:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "LOGOUT"
const/16 v2, 0x13
new-array v3, v6, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->t:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "REVOKE_GOOGLE"
const/16 v2, 0x14
sget-object v3, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
new-array v4, v7, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
sget-object v5, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
aput-object v5, v4, v6
invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->u:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const-string v1, "DEBUG_TOOLS"
const/16 v2, 0x15
sget-object v3, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
new-array v4, v7, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
sget-object v5, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
aput-object v5, v4, v6
invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->v:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
const/16 v0, 0x16
new-array v0, v0, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v1, v0, v6
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v1, v0, v7
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v1, v0, v8
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v1, v0, v9
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v1, v0, v10
const/4 v1, 0x5
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->f:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->g:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->h:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->i:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0x9
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->j:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0xa
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->k:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0xb
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->l:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0xc
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->m:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0xd
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->n:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0xe
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->o:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0xf
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->p:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0x10
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->q:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0x11
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->r:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0x12
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->s:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0x13
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->t:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0x14
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->u:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
const/16 v1, 0x15
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->v:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->w:[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
return-void
.end method
.method private varargs constructor <init>(Ljava/lang/String;ILcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
.registers 9
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->mVisibleFor:Ljava/util/HashSet;
if-eqz p4, :cond_f
array-length v0, p4
if-nez v0, :cond_19
:cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->mVisibleFor:Ljava/util/HashSet;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
:cond_16
iput-object p3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->mVisibleWhen:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
return-void
:cond_19
array-length v1, p4
const/4 v0, 0x0
:goto_1b
if-ge v0, v1, :cond_16
aget-object v2, p4, v0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->mVisibleFor:Ljava/util/HashSet;
invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_1b
.end method
.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
.registers 5
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
invoke-direct {p0, p1, p2, v0, p3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;-><init>(Ljava/lang/String;ILcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.registers 2
const-class v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->w:[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
return-object v0
.end method
.method public final a()Ljava/util/HashSet;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->mVisibleFor:Ljava/util/HashSet;
return-object v0
.end method
.method public final b()Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->mVisibleWhen:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;
return-object v0
.end method