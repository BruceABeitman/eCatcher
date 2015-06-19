.class public final enum Lcom/userzoom/E;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/userzoom/E;

.field private static enum c:Lcom/userzoom/E;

.field private static enum d:Lcom/userzoom/E;

.field private static enum e:Lcom/userzoom/E;

.field private static final synthetic f:[Lcom/userzoom/E;


# instance fields
.field protected final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0xc8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/userzoom/E;

    const-string v1, "TOKEN_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v3, v2}, Lcom/userzoom/E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/userzoom/E;->c:Lcom/userzoom/E;

    new-instance v0, Lcom/userzoom/E;

    const-string v1, "CONCAT_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v4, v2}, Lcom/userzoom/E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/userzoom/E;->a:Lcom/userzoom/E;

    new-instance v0, Lcom/userzoom/E;

    const-string v1, "TEXT_BUFFER"

    invoke-direct {v0, v1, v5, v7}, Lcom/userzoom/E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/userzoom/E;->d:Lcom/userzoom/E;

    new-instance v0, Lcom/userzoom/E;

    const-string v1, "NAME_COPY_BUFFER"

    invoke-direct {v0, v1, v6, v7}, Lcom/userzoom/E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/userzoom/E;->e:Lcom/userzoom/E;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/userzoom/E;

    sget-object v1, Lcom/userzoom/E;->c:Lcom/userzoom/E;

    aput-object v1, v0, v3

    sget-object v1, Lcom/userzoom/E;->a:Lcom/userzoom/E;

    aput-object v1, v0, v4

    sget-object v1, Lcom/userzoom/E;->d:Lcom/userzoom/E;

    aput-object v1, v0, v5

    sget-object v1, Lcom/userzoom/E;->e:Lcom/userzoom/E;

    aput-object v1, v0, v6

    sput-object v0, Lcom/userzoom/E;->f:[Lcom/userzoom/E;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/userzoom/E;->b:I

    return-void
.end method

.method public static a()[Lcom/userzoom/E;
    .registers 1

    sget-object v0, Lcom/userzoom/E;->f:[Lcom/userzoom/E;

    invoke-virtual {v0}, [Lcom/userzoom/E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/userzoom/E;

    return-object v0
.end method
