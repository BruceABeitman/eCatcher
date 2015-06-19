.class public final enum Lcom/squareup/picasso/Picasso$LoadedFrom;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/picasso/Picasso$LoadedFrom;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field public static final enum b:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field public static final enum c:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field private static final synthetic d:[Lcom/squareup/picasso/Picasso$LoadedFrom;


# instance fields
.field final debugColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/squareup/picasso/Picasso$LoadedFrom;

    const-string v1, "MEMORY"

    const v2, -0xff0100

    invoke-direct {v0, v1, v3, v2}, Lcom/squareup/picasso/Picasso$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;

    new-instance v0, Lcom/squareup/picasso/Picasso$LoadedFrom;

    const-string v1, "DISK"

    const/16 v2, -0x100

    invoke-direct {v0, v1, v4, v2}, Lcom/squareup/picasso/Picasso$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    new-instance v0, Lcom/squareup/picasso/Picasso$LoadedFrom;

    const-string v1, "NETWORK"

    const/high16 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/squareup/picasso/Picasso$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->c:Lcom/squareup/picasso/Picasso$LoadedFrom;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/picasso/Picasso$LoadedFrom;

    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->c:Lcom/squareup/picasso/Picasso$LoadedFrom;

    aput-object v1, v0, v5

    sput-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->d:[Lcom/squareup/picasso/Picasso$LoadedFrom;

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

    iput p3, p0, Lcom/squareup/picasso/Picasso$LoadedFrom;->debugColor:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/picasso/Picasso$LoadedFrom;
    .registers 2

    const-class v0, Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method public static values()[Lcom/squareup/picasso/Picasso$LoadedFrom;
    .registers 1

    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->d:[Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {v0}, [Lcom/squareup/picasso/Picasso$LoadedFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method
