.class public abstract enum Lcom/google/b/c/bc;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/b/c/bc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/b/c/bc;

.field public static final enum b:Lcom/google/b/c/bc;

.field public static final enum c:Lcom/google/b/c/bc;

.field private static final synthetic d:[Lcom/google/b/c/bc;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/b/c/bd;

    const-string v1, "STRONG"

    invoke-direct {v0, v1}, Lcom/google/b/c/bd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/c/bc;->a:Lcom/google/b/c/bc;

    new-instance v0, Lcom/google/b/c/be;

    const-string v1, "SOFT"

    invoke-direct {v0, v1}, Lcom/google/b/c/be;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/c/bc;->b:Lcom/google/b/c/bc;

    new-instance v0, Lcom/google/b/c/bf;

    const-string v1, "WEAK"

    invoke-direct {v0, v1}, Lcom/google/b/c/bf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/c/bc;->c:Lcom/google/b/c/bc;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/b/c/bc;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/b/c/bc;->a:Lcom/google/b/c/bc;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/b/c/bc;->b:Lcom/google/b/c/bc;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/b/c/bc;->c:Lcom/google/b/c/bc;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/b/c/bc;->d:[Lcom/google/b/c/bc;

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

    invoke-direct {p0, p1, p2}, Lcom/google/b/c/bc;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/b/c/bc;
    .registers 2

    const-class v0, Lcom/google/b/c/bc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/b/c/bc;

    return-object v0
.end method

.method public static values()[Lcom/google/b/c/bc;
    .registers 1

    sget-object v0, Lcom/google/b/c/bc;->d:[Lcom/google/b/c/bc;

    invoke-virtual {v0}, [Lcom/google/b/c/bc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/b/c/bc;

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/google/b/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/a/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(Lcom/google/b/c/ba;Lcom/google/b/c/az;Ljava/lang/Object;)Lcom/google/b/c/bm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/c/ba",
            "<TK;TV;>;",
            "Lcom/google/b/c/az",
            "<TK;TV;>;TV;)",
            "Lcom/google/b/c/bm",
            "<TK;TV;>;"
        }
    .end annotation
.end method
