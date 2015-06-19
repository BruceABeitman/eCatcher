.class public final enum Lcom/bbm/c/k;
.super Ljava/lang/Enum;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/c/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/c/k;

.field public static final enum b:Lcom/bbm/c/k;

.field private static final synthetic d:[Lcom/bbm/c/k;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/bbm/c/k;

    const-string v1, "Sender"

    const-string v2, "Sender"

    invoke-direct {v0, v1, v3, v2}, Lcom/bbm/c/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/c/k;->a:Lcom/bbm/c/k;

    new-instance v0, Lcom/bbm/c/k;

    const-string v1, "Receiver"

    const-string v2, "Receiver"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/c/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/c/k;->b:Lcom/bbm/c/k;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bbm/c/k;

    sget-object v1, Lcom/bbm/c/k;->a:Lcom/bbm/c/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/c/k;->b:Lcom/bbm/c/k;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bbm/c/k;->d:[Lcom/bbm/c/k;

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

    iput-object p3, p0, Lcom/bbm/c/k;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/c/k;
    .registers 2

    const-class v0, Lcom/bbm/c/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/c/k;

    return-object v0
.end method

.method public static values()[Lcom/bbm/c/k;
    .registers 1

    sget-object v0, Lcom/bbm/c/k;->d:[Lcom/bbm/c/k;

    invoke-virtual {v0}, [Lcom/bbm/c/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/c/k;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/c/k;->c:Ljava/lang/String;

    return-object v0
.end method
