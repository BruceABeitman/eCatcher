.class public final enum Lcom/facebook/i/c;
.super Ljava/lang/Enum;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/i/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/i/c;

.field public static final enum b:Lcom/facebook/i/c;

.field public static final enum c:Lcom/facebook/i/c;

.field public static final enum d:Lcom/facebook/i/c;

.field public static final enum e:Lcom/facebook/i/c;

.field private static final synthetic f:[Lcom/facebook/i/c;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/i/c;

    const-string v1, "INVALID_COUNTRY_CODE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/i/c;->a:Lcom/facebook/i/c;

    new-instance v0, Lcom/facebook/i/c;

    const-string v1, "NOT_A_NUMBER"

    invoke-direct {v0, v1, v3}, Lcom/facebook/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/i/c;->b:Lcom/facebook/i/c;

    new-instance v0, Lcom/facebook/i/c;

    const-string v1, "TOO_SHORT_AFTER_IDD"

    invoke-direct {v0, v1, v4}, Lcom/facebook/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/i/c;->c:Lcom/facebook/i/c;

    new-instance v0, Lcom/facebook/i/c;

    const-string v1, "TOO_SHORT_NSN"

    invoke-direct {v0, v1, v5}, Lcom/facebook/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/i/c;->d:Lcom/facebook/i/c;

    new-instance v0, Lcom/facebook/i/c;

    const-string v1, "TOO_LONG"

    invoke-direct {v0, v1, v6}, Lcom/facebook/i/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/i/c;->e:Lcom/facebook/i/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/i/c;

    sget-object v1, Lcom/facebook/i/c;->a:Lcom/facebook/i/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/i/c;->b:Lcom/facebook/i/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/i/c;->c:Lcom/facebook/i/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/i/c;->d:Lcom/facebook/i/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/i/c;->e:Lcom/facebook/i/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/i/c;->f:[Lcom/facebook/i/c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/i/c;
    .registers 2

    const-class v0, Lcom/facebook/i/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/i/c;

    return-object v0
.end method

.method public static values()[Lcom/facebook/i/c;
    .registers 1

    sget-object v0, Lcom/facebook/i/c;->f:[Lcom/facebook/i/c;

    invoke-virtual {v0}, [Lcom/facebook/i/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/i/c;

    return-object v0
.end method
