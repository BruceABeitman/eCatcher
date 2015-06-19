.class public final enum Lcom/bbm/h/ap;
.super Ljava/lang/Enum;
.source "Invite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/h/ap;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/h/ap;

.field public static final enum b:Lcom/bbm/h/ap;

.field public static final enum c:Lcom/bbm/h/ap;

.field public static final enum d:Lcom/bbm/h/ap;

.field private static final synthetic e:[Lcom/bbm/h/ap;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bbm/h/ap;

    const-string v1, "CONTACT"

    invoke-direct {v0, v1, v2}, Lcom/bbm/h/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/h/ap;->a:Lcom/bbm/h/ap;

    new-instance v0, Lcom/bbm/h/ap;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v3}, Lcom/bbm/h/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/h/ap;->b:Lcom/bbm/h/ap;

    new-instance v0, Lcom/bbm/h/ap;

    const-string v1, "GROUP_SENT"

    invoke-direct {v0, v1, v4}, Lcom/bbm/h/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/h/ap;->c:Lcom/bbm/h/ap;

    new-instance v0, Lcom/bbm/h/ap;

    const-string v1, "SPONSORED_INVITE"

    invoke-direct {v0, v1, v5}, Lcom/bbm/h/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/h/ap;->d:Lcom/bbm/h/ap;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bbm/h/ap;

    sget-object v1, Lcom/bbm/h/ap;->a:Lcom/bbm/h/ap;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bbm/h/ap;->b:Lcom/bbm/h/ap;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/h/ap;->c:Lcom/bbm/h/ap;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/h/ap;->d:Lcom/bbm/h/ap;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bbm/h/ap;->e:[Lcom/bbm/h/ap;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/h/ap;
    .registers 2

    const-class v0, Lcom/bbm/h/ap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/h/ap;

    return-object v0
.end method

.method public static values()[Lcom/bbm/h/ap;
    .registers 1

    sget-object v0, Lcom/bbm/h/ap;->e:[Lcom/bbm/h/ap;

    invoke-virtual {v0}, [Lcom/bbm/h/ap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/h/ap;

    return-object v0
.end method
