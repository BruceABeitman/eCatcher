.class public final enum Lcom/bbm/util/k;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/util/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/util/k;

.field public static final enum b:Lcom/bbm/util/k;

.field public static final enum c:Lcom/bbm/util/k;

.field private static final synthetic d:[Lcom/bbm/util/k;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bbm/util/k;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/bbm/util/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/util/k;->a:Lcom/bbm/util/k;

    new-instance v0, Lcom/bbm/util/k;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/bbm/util/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/util/k;->b:Lcom/bbm/util/k;

    new-instance v0, Lcom/bbm/util/k;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/bbm/util/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/util/k;->c:Lcom/bbm/util/k;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bbm/util/k;

    sget-object v1, Lcom/bbm/util/k;->a:Lcom/bbm/util/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bbm/util/k;->b:Lcom/bbm/util/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/util/k;->c:Lcom/bbm/util/k;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bbm/util/k;->d:[Lcom/bbm/util/k;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/util/k;
    .registers 2

    const-class v0, Lcom/bbm/util/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/k;

    return-object v0
.end method

.method public static values()[Lcom/bbm/util/k;
    .registers 1

    sget-object v0, Lcom/bbm/util/k;->d:[Lcom/bbm/util/k;

    invoke-virtual {v0}, [Lcom/bbm/util/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/util/k;

    return-object v0
.end method
