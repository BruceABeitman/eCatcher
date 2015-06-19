.class final enum Lcom/bbm/ui/activities/ado;
.super Ljava/lang/Enum;
.source "ReportProblemActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/ui/activities/ado;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/ui/activities/ado;

.field public static final enum b:Lcom/bbm/ui/activities/ado;

.field public static final enum c:Lcom/bbm/ui/activities/ado;

.field public static final enum d:Lcom/bbm/ui/activities/ado;

.field private static final synthetic e:[Lcom/bbm/ui/activities/ado;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bbm/ui/activities/ado;

    const-string v1, "STEP01"

    invoke-direct {v0, v1, v2}, Lcom/bbm/ui/activities/ado;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/activities/ado;->a:Lcom/bbm/ui/activities/ado;

    new-instance v0, Lcom/bbm/ui/activities/ado;

    const-string v1, "STEP02"

    invoke-direct {v0, v1, v3}, Lcom/bbm/ui/activities/ado;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/activities/ado;->b:Lcom/bbm/ui/activities/ado;

    new-instance v0, Lcom/bbm/ui/activities/ado;

    const-string v1, "STEP03"

    invoke-direct {v0, v1, v4}, Lcom/bbm/ui/activities/ado;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/activities/ado;->c:Lcom/bbm/ui/activities/ado;

    new-instance v0, Lcom/bbm/ui/activities/ado;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v5}, Lcom/bbm/ui/activities/ado;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/activities/ado;->d:Lcom/bbm/ui/activities/ado;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bbm/ui/activities/ado;

    sget-object v1, Lcom/bbm/ui/activities/ado;->a:Lcom/bbm/ui/activities/ado;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bbm/ui/activities/ado;->b:Lcom/bbm/ui/activities/ado;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/ui/activities/ado;->c:Lcom/bbm/ui/activities/ado;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/ui/activities/ado;->d:Lcom/bbm/ui/activities/ado;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bbm/ui/activities/ado;->e:[Lcom/bbm/ui/activities/ado;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/activities/ado;
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/ado;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ado;

    return-object v0
.end method

.method public static values()[Lcom/bbm/ui/activities/ado;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/ado;->e:[Lcom/bbm/ui/activities/ado;

    invoke-virtual {v0}, [Lcom/bbm/ui/activities/ado;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/ui/activities/ado;

    return-object v0
.end method
