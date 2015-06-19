.class public final enum Lcom/bbm/c/u;
.super Ljava/lang/Enum;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/c/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/c/u;

.field private static final synthetic c:[Lcom/bbm/c/u;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/bbm/c/u;

    const-string v1, "BBM33329"

    const-string v2, "BBM-33329 Android Account Creation Failure"

    invoke-direct {v0, v1, v2}, Lcom/bbm/c/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bbm/c/u;->a:Lcom/bbm/c/u;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bbm/c/u;

    const/4 v1, 0x0

    sget-object v2, Lcom/bbm/c/u;->a:Lcom/bbm/c/u;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/c/u;->c:[Lcom/bbm/c/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/bbm/c/u;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/c/u;
    .registers 2

    const-class v0, Lcom/bbm/c/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/c/u;

    return-object v0
.end method

.method public static values()[Lcom/bbm/c/u;
    .registers 1

    sget-object v0, Lcom/bbm/c/u;->c:[Lcom/bbm/c/u;

    invoke-virtual {v0}, [Lcom/bbm/c/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/c/u;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/c/u;->b:Ljava/lang/String;

    return-object v0
.end method
