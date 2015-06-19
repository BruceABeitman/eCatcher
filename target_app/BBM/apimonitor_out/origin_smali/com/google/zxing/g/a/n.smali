.class public final enum Lcom/google/zxing/g/a/n;
.super Ljava/lang/Enum;
.source "ErrorCorrectionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/g/a/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/g/a/n;

.field public static final enum b:Lcom/google/zxing/g/a/n;

.field public static final enum c:Lcom/google/zxing/g/a/n;

.field public static final enum d:Lcom/google/zxing/g/a/n;

.field private static final f:[Lcom/google/zxing/g/a/n;

.field private static final synthetic g:[Lcom/google/zxing/g/a/n;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/zxing/g/a/n;

    const-string v1, "L"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/g/a/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/g/a/n;->a:Lcom/google/zxing/g/a/n;

    new-instance v0, Lcom/google/zxing/g/a/n;

    const-string v1, "M"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/zxing/g/a/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/g/a/n;->b:Lcom/google/zxing/g/a/n;

    new-instance v0, Lcom/google/zxing/g/a/n;

    const-string v1, "Q"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/zxing/g/a/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/g/a/n;->c:Lcom/google/zxing/g/a/n;

    new-instance v0, Lcom/google/zxing/g/a/n;

    const-string v1, "H"

    invoke-direct {v0, v1, v5, v4}, Lcom/google/zxing/g/a/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/g/a/n;->d:Lcom/google/zxing/g/a/n;

    new-array v0, v6, [Lcom/google/zxing/g/a/n;

    sget-object v1, Lcom/google/zxing/g/a/n;->a:Lcom/google/zxing/g/a/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/g/a/n;->b:Lcom/google/zxing/g/a/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/g/a/n;->c:Lcom/google/zxing/g/a/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/g/a/n;->d:Lcom/google/zxing/g/a/n;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/g/a/n;->g:[Lcom/google/zxing/g/a/n;

    new-array v0, v6, [Lcom/google/zxing/g/a/n;

    sget-object v1, Lcom/google/zxing/g/a/n;->b:Lcom/google/zxing/g/a/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/g/a/n;->a:Lcom/google/zxing/g/a/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/g/a/n;->d:Lcom/google/zxing/g/a/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/g/a/n;->c:Lcom/google/zxing/g/a/n;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/g/a/n;->f:[Lcom/google/zxing/g/a/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/zxing/g/a/n;->e:I

    return-void
.end method

.method public static a(I)Lcom/google/zxing/g/a/n;
    .registers 2

    if-ltz p0, :cond_7

    sget-object v0, Lcom/google/zxing/g/a/n;->f:[Lcom/google/zxing/g/a/n;

    array-length v0, v0

    if-lt p0, v0, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    sget-object v0, Lcom/google/zxing/g/a/n;->f:[Lcom/google/zxing/g/a/n;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/g/a/n;
    .registers 2

    const-class v0, Lcom/google/zxing/g/a/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/g/a/n;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/g/a/n;
    .registers 1

    sget-object v0, Lcom/google/zxing/g/a/n;->g:[Lcom/google/zxing/g/a/n;

    invoke-virtual {v0}, [Lcom/google/zxing/g/a/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/g/a/n;

    return-object v0
.end method
