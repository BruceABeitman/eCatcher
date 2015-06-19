.class final enum Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

.field public static final enum b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

.field public static final enum c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

.field public static final enum d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

.field public static final enum e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

.field public static final enum f:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

.field public static final enum g:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

.field public static final enum h:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

.field public static final enum i:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

.field public static final enum j:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

.field public static final enum k:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

.field private static final synthetic l:[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    const-string v1, "CHECK_BOX"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    const-string v1, "SPINNER"

    invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    const-string v1, "NOP"

    invoke-direct {v0, v1, v6}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    const-string v1, "LASTFM"

    invoke-direct {v0, v1, v7}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    const-string v1, "CROSSFADE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->f:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    const-string v1, "AUDIO_EFFECTS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->g:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    const-string v1, "BROADCAST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->h:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    const-string v1, "NOTIFICATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->i:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    const-string v1, "REVOKE_GOOGLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->j:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    const-string v1, "DEBUG"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->k:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->f:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->g:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->h:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->i:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->j:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->k:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->l:[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->l:[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;

    return-object v0
.end method
