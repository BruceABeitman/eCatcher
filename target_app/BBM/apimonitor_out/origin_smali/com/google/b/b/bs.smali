.class public abstract enum Lcom/google/b/b/bs;
.super Ljava/lang/Enum;
.source "RemovalCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/b/b/bs;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/b/b/bs;

.field public static final enum b:Lcom/google/b/b/bs;

.field public static final enum c:Lcom/google/b/b/bs;

.field public static final enum d:Lcom/google/b/b/bs;

.field public static final enum e:Lcom/google/b/b/bs;

.field private static final synthetic f:[Lcom/google/b/b/bs;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/b/b/bt;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1}, Lcom/google/b/b/bt;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/b/bs;->a:Lcom/google/b/b/bs;

    new-instance v0, Lcom/google/b/b/bu;

    const-string v1, "REPLACED"

    invoke-direct {v0, v1}, Lcom/google/b/b/bu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/b/bs;->b:Lcom/google/b/b/bs;

    new-instance v0, Lcom/google/b/b/bv;

    const-string v1, "COLLECTED"

    invoke-direct {v0, v1}, Lcom/google/b/b/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/b/bs;->c:Lcom/google/b/b/bs;

    new-instance v0, Lcom/google/b/b/bw;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1}, Lcom/google/b/b/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/b/bs;->d:Lcom/google/b/b/bs;

    new-instance v0, Lcom/google/b/b/bx;

    const-string v1, "SIZE"

    invoke-direct {v0, v1}, Lcom/google/b/b/bx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/b/bs;->e:Lcom/google/b/b/bs;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/b/b/bs;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/b/b/bs;->a:Lcom/google/b/b/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/b/b/bs;->b:Lcom/google/b/b/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/b/b/bs;->c:Lcom/google/b/b/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/b/b/bs;->d:Lcom/google/b/b/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/b/b/bs;->e:Lcom/google/b/b/bs;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/b/b/bs;->f:[Lcom/google/b/b/bs;

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

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/b/b/bs;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/b/b/bs;
    .registers 2

    const-class v0, Lcom/google/b/b/bs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/bs;

    return-object v0
.end method

.method public static values()[Lcom/google/b/b/bs;
    .registers 1

    sget-object v0, Lcom/google/b/b/bs;->f:[Lcom/google/b/b/bs;

    invoke-virtual {v0}, [Lcom/google/b/b/bs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/b/b/bs;

    return-object v0
.end method


# virtual methods
.method abstract a()Z
.end method
