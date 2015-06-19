.class public final enum Lcom/userzoom/D;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/userzoom/D;

.field public static final enum b:Lcom/userzoom/D;

.field private static enum d:Lcom/userzoom/D;

.field private static enum e:Lcom/userzoom/D;

.field private static final synthetic f:[Lcom/userzoom/D;


# instance fields
.field protected final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0x7d0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/userzoom/D;

    const-string v1, "READ_IO_BUFFER"

    const/16 v2, 0xfa0

    invoke-direct {v0, v1, v3, v2}, Lcom/userzoom/D;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/userzoom/D;->d:Lcom/userzoom/D;

    new-instance v0, Lcom/userzoom/D;

    const-string v1, "WRITE_ENCODING_BUFFER"

    const/16 v2, 0xfa0

    invoke-direct {v0, v1, v4, v2}, Lcom/userzoom/D;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/userzoom/D;->a:Lcom/userzoom/D;

    new-instance v0, Lcom/userzoom/D;

    const-string v1, "WRITE_CONCAT_BUFFER"

    invoke-direct {v0, v1, v5, v7}, Lcom/userzoom/D;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/userzoom/D;->b:Lcom/userzoom/D;

    new-instance v0, Lcom/userzoom/D;

    const-string v1, "BASE64_CODEC_BUFFER"

    invoke-direct {v0, v1, v6, v7}, Lcom/userzoom/D;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/userzoom/D;->e:Lcom/userzoom/D;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/userzoom/D;

    sget-object v1, Lcom/userzoom/D;->d:Lcom/userzoom/D;

    aput-object v1, v0, v3

    sget-object v1, Lcom/userzoom/D;->a:Lcom/userzoom/D;

    aput-object v1, v0, v4

    sget-object v1, Lcom/userzoom/D;->b:Lcom/userzoom/D;

    aput-object v1, v0, v5

    sget-object v1, Lcom/userzoom/D;->e:Lcom/userzoom/D;

    aput-object v1, v0, v6

    sput-object v0, Lcom/userzoom/D;->f:[Lcom/userzoom/D;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/userzoom/D;->c:I

    return-void
.end method

.method public static a()[Lcom/userzoom/D;
    .registers 1

    sget-object v0, Lcom/userzoom/D;->f:[Lcom/userzoom/D;

    invoke-virtual {v0}, [Lcom/userzoom/D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/userzoom/D;

    return-object v0
.end method
