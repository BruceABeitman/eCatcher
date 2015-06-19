.class final enum Lcom/bbm/ui/activities/afq;
.super Ljava/lang/Enum;
.source "SetChannelAvatarActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/ui/activities/afq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/ui/activities/afq;

.field private static final synthetic b:[Lcom/bbm/ui/activities/afq;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/bbm/ui/activities/afq;

    const-string v1, "PICTURE"

    invoke-direct {v0, v1}, Lcom/bbm/ui/activities/afq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bbm/ui/activities/afq;->a:Lcom/bbm/ui/activities/afq;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bbm/ui/activities/afq;

    const/4 v1, 0x0

    sget-object v2, Lcom/bbm/ui/activities/afq;->a:Lcom/bbm/ui/activities/afq;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/ui/activities/afq;->b:[Lcom/bbm/ui/activities/afq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/activities/afq;
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/afq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/afq;

    return-object v0
.end method

.method public static values()[Lcom/bbm/ui/activities/afq;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/afq;->b:[Lcom/bbm/ui/activities/afq;

    invoke-virtual {v0}, [Lcom/bbm/ui/activities/afq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/ui/activities/afq;

    return-object v0
.end method
