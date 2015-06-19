.class public final enum Lcom/google/zxing/a/a/c;
.super Ljava/lang/Enum;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/a/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/a/a/c;

.field public static final enum b:Lcom/google/zxing/a/a/c;

.field public static final enum c:Lcom/google/zxing/a/a/c;

.field public static final enum d:Lcom/google/zxing/a/a/c;

.field public static final enum e:Lcom/google/zxing/a/a/c;

.field public static final enum f:Lcom/google/zxing/a/a/c;

.field private static final synthetic g:[Lcom/google/zxing/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/zxing/a/a/c;

    const-string v1, "UPPER"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/a/a/c;->a:Lcom/google/zxing/a/a/c;

    new-instance v0, Lcom/google/zxing/a/a/c;

    const-string v1, "LOWER"

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/a/a/c;->b:Lcom/google/zxing/a/a/c;

    new-instance v0, Lcom/google/zxing/a/a/c;

    const-string v1, "MIXED"

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/a/a/c;->c:Lcom/google/zxing/a/a/c;

    new-instance v0, Lcom/google/zxing/a/a/c;

    const-string v1, "DIGIT"

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/a/a/c;->d:Lcom/google/zxing/a/a/c;

    new-instance v0, Lcom/google/zxing/a/a/c;

    const-string v1, "PUNCT"

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/a/a/c;->e:Lcom/google/zxing/a/a/c;

    new-instance v0, Lcom/google/zxing/a/a/c;

    const-string v1, "BINARY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/a/a/c;->f:Lcom/google/zxing/a/a/c;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/zxing/a/a/c;

    sget-object v1, Lcom/google/zxing/a/a/c;->a:Lcom/google/zxing/a/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/a/a/c;->b:Lcom/google/zxing/a/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/a/a/c;->c:Lcom/google/zxing/a/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/a/a/c;->d:Lcom/google/zxing/a/a/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/a/a/c;->e:Lcom/google/zxing/a/a/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/a/a/c;->f:Lcom/google/zxing/a/a/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/a/a/c;->g:[Lcom/google/zxing/a/a/c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/a/a/c;
    .registers 2

    const-class v0, Lcom/google/zxing/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/a/a/c;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/a/a/c;
    .registers 1

    sget-object v0, Lcom/google/zxing/a/a/c;->g:[Lcom/google/zxing/a/a/c;

    invoke-virtual {v0}, [Lcom/google/zxing/a/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/a/a/c;

    return-object v0
.end method
