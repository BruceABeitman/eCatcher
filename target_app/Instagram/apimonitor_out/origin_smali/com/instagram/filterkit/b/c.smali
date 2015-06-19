.class public final enum Lcom/instagram/filterkit/b/c;
.super Ljava/lang/Enum;
.source "IgGLProgram.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/filterkit/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/filterkit/b/c;

.field public static final enum b:Lcom/instagram/filterkit/b/c;

.field private static final synthetic d:[Lcom/instagram/filterkit/b/c;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/instagram/filterkit/b/c;

    const-string v1, "NEAREST"

    const/16 v2, 0x2600

    invoke-direct {v0, v1, v3, v2}, Lcom/instagram/filterkit/b/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    new-instance v0, Lcom/instagram/filterkit/b/c;

    const-string v1, "LINEAR"

    const/16 v2, 0x2601

    invoke-direct {v0, v1, v4, v2}, Lcom/instagram/filterkit/b/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/filterkit/b/c;->b:Lcom/instagram/filterkit/b/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/filterkit/b/c;

    sget-object v1, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/filterkit/b/c;->b:Lcom/instagram/filterkit/b/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/filterkit/b/c;->d:[Lcom/instagram/filterkit/b/c;

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

    iput p3, p0, Lcom/instagram/filterkit/b/c;->c:I

    return-void
.end method

.method static synthetic a(Lcom/instagram/filterkit/b/c;)I
    .registers 2

    iget v0, p0, Lcom/instagram/filterkit/b/c;->c:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/filterkit/b/c;
    .registers 2

    const-class v0, Lcom/instagram/filterkit/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/b/c;

    return-object v0
.end method

.method public static values()[Lcom/instagram/filterkit/b/c;
    .registers 1

    sget-object v0, Lcom/instagram/filterkit/b/c;->d:[Lcom/instagram/filterkit/b/c;

    invoke-virtual {v0}, [Lcom/instagram/filterkit/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/filterkit/b/c;

    return-object v0
.end method
