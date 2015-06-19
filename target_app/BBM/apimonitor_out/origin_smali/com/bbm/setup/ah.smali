.class public final enum Lcom/bbm/setup/ah;
.super Ljava/lang/Enum;
.source "SetupScreen.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/setup/ah;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/setup/ah;

.field public static final enum b:Lcom/bbm/setup/ah;

.field public static final enum c:Lcom/bbm/setup/ah;

.field public static final enum d:Lcom/bbm/setup/ah;

.field public static final enum e:Lcom/bbm/setup/ah;

.field public static final enum f:Lcom/bbm/setup/ah;

.field public static final enum g:Lcom/bbm/setup/ah;

.field public static final enum h:Lcom/bbm/setup/ah;

.field public static final enum i:Lcom/bbm/setup/ah;

.field public static final enum j:Lcom/bbm/setup/ah;

.field public static final enum k:Lcom/bbm/setup/ah;

.field public static final enum l:Lcom/bbm/setup/ah;

.field public static final enum m:Lcom/bbm/setup/ah;

.field private static final synthetic o:[Lcom/bbm/setup/ah;


# instance fields
.field n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_LOADING"

    const-string v2, "com.bbm.setup.LoadingActivity"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->a:Lcom/bbm/setup/ah;

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_PENDING"

    const-string v2, "com.bbm.setup.LoadingActivity"

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->b:Lcom/bbm/setup/ah;

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_UPGRADE"

    const-string v2, "com.bbm.setup.UpgradeActivity"

    invoke-direct {v0, v1, v6, v2}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->c:Lcom/bbm/setup/ah;

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_DEVICE_SWITCH"

    const-string v2, "com.bbm.setup.DeviceSwitchActivity"

    invoke-direct {v0, v1, v7, v2}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->d:Lcom/bbm/setup/ah;

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_PYK_ADD_FRIENDS"

    const-string v2, "com.bbm.setup.PykAddFriendsActivity"

    invoke-direct {v0, v1, v8, v2}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->e:Lcom/bbm/setup/ah;

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_PYK_INVITE"

    const/4 v2, 0x5

    const-string v3, "com.bbm.setup.PykInviteFriendsActivity"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->f:Lcom/bbm/setup/ah;

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_CONTACT_LIST_ACCESS_PROMPT"

    const/4 v2, 0x6

    const-string v3, "com.bbm.setup.ContactListAccessPromptActivity"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->g:Lcom/bbm/setup/ah;

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_WHATS_NEW"

    const/4 v2, 0x7

    const-string v3, "com.bbm.setup.WhatsNewActivity"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->h:Lcom/bbm/setup/ah;

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_BBID_ERROR"

    const/16 v2, 0x8

    const-string v3, "com.bbm.setup.SetupBbidErrorActivity"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->i:Lcom/bbm/setup/ah;

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_ERROR"

    const/16 v2, 0x9

    const-string v3, "com.bbm.setup.SetupErrorActivity"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->j:Lcom/bbm/setup/ah;

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_MAIN_UI"

    invoke-direct {v0, v1}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->k:Lcom/bbm/setup/ah;

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_BBID_REGISTRATION"

    const/16 v2, 0xb

    const-string v3, "com.bbm.setup.LoginWrapperActivity"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->l:Lcom/bbm/setup/ah;

    new-instance v0, Lcom/bbm/setup/ah;

    const-string v1, "STATE_INAPP_UPGRADE"

    const/16 v2, 0xc

    const-string v3, "com.bbm.ui.activities.InAppUpgradeActivity"

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/setup/ah;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/setup/ah;->m:Lcom/bbm/setup/ah;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/bbm/setup/ah;

    sget-object v1, Lcom/bbm/setup/ah;->a:Lcom/bbm/setup/ah;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/setup/ah;->b:Lcom/bbm/setup/ah;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/setup/ah;->c:Lcom/bbm/setup/ah;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bbm/setup/ah;->d:Lcom/bbm/setup/ah;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bbm/setup/ah;->e:Lcom/bbm/setup/ah;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bbm/setup/ah;->f:Lcom/bbm/setup/ah;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bbm/setup/ah;->g:Lcom/bbm/setup/ah;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bbm/setup/ah;->h:Lcom/bbm/setup/ah;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bbm/setup/ah;->i:Lcom/bbm/setup/ah;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bbm/setup/ah;->j:Lcom/bbm/setup/ah;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bbm/setup/ah;->k:Lcom/bbm/setup/ah;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bbm/setup/ah;->l:Lcom/bbm/setup/ah;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/bbm/setup/ah;->m:Lcom/bbm/setup/ah;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/setup/ah;->o:[Lcom/bbm/setup/ah;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/setup/ah;->n:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bbm/setup/ah;->n:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/setup/ah;
    .registers 2

    const-class v0, Lcom/bbm/setup/ah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/setup/ah;

    return-object v0
.end method

.method public static values()[Lcom/bbm/setup/ah;
    .registers 1

    sget-object v0, Lcom/bbm/setup/ah;->o:[Lcom/bbm/setup/ah;

    invoke-virtual {v0}, [Lcom/bbm/setup/ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/setup/ah;

    return-object v0
.end method
