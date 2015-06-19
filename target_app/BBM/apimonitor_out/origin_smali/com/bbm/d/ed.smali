.class public final enum Lcom/bbm/d/ed;
.super Ljava/lang/Enum;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/d/ed;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/d/ed;

.field public static final enum b:Lcom/bbm/d/ed;

.field public static final enum c:Lcom/bbm/d/ed;

.field public static final enum d:Lcom/bbm/d/ed;

.field public static final enum e:Lcom/bbm/d/ed;

.field public static final enum f:Lcom/bbm/d/ed;

.field private static final synthetic h:[Lcom/bbm/d/ed;


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/bbm/d/ed;

    const-string v1, "NetworkFailure"

    const-string v2, "NetworkFailure"

    invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/ed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ed;->a:Lcom/bbm/d/ed;

    new-instance v0, Lcom/bbm/d/ed;

    const-string v1, "ContentTooLarge"

    const-string v2, "ContentTooLarge"

    invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/ed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ed;->b:Lcom/bbm/d/ed;

    new-instance v0, Lcom/bbm/d/ed;

    const-string v1, "ImageTooLarge"

    const-string v2, "ImageTooLarge"

    invoke-direct {v0, v1, v6, v2}, Lcom/bbm/d/ed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ed;->c:Lcom/bbm/d/ed;

    new-instance v0, Lcom/bbm/d/ed;

    const-string v1, "ImageInvalidPath"

    const-string v2, "ImageInvalidPath"

    invoke-direct {v0, v1, v7, v2}, Lcom/bbm/d/ed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ed;->d:Lcom/bbm/d/ed;

    new-instance v0, Lcom/bbm/d/ed;

    const-string v1, "Timeout"

    const-string v2, "Timeout"

    invoke-direct {v0, v1, v8, v2}, Lcom/bbm/d/ed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ed;->e:Lcom/bbm/d/ed;

    new-instance v0, Lcom/bbm/d/ed;

    const-string v1, "Unspecified"

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/ed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bbm/d/ed;->f:Lcom/bbm/d/ed;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bbm/d/ed;

    sget-object v1, Lcom/bbm/d/ed;->a:Lcom/bbm/d/ed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/d/ed;->b:Lcom/bbm/d/ed;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bbm/d/ed;->c:Lcom/bbm/d/ed;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bbm/d/ed;->d:Lcom/bbm/d/ed;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bbm/d/ed;->e:Lcom/bbm/d/ed;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bbm/d/ed;->f:Lcom/bbm/d/ed;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/d/ed;->h:[Lcom/bbm/d/ed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bbm/d/ed;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bbm/d/ed;
    .registers 2

    const-string v0, "NetworkFailure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bbm/d/ed;->a:Lcom/bbm/d/ed;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "ContentTooLarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/bbm/d/ed;->b:Lcom/bbm/d/ed;

    goto :goto_a

    :cond_16
    const-string v0, "ImageTooLarge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/bbm/d/ed;->c:Lcom/bbm/d/ed;

    goto :goto_a

    :cond_21
    const-string v0, "ImageInvalidPath"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/bbm/d/ed;->d:Lcom/bbm/d/ed;

    goto :goto_a

    :cond_2c
    const-string v0, "Timeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/bbm/d/ed;->e:Lcom/bbm/d/ed;

    goto :goto_a

    :cond_37
    sget-object v0, Lcom/bbm/d/ed;->f:Lcom/bbm/d/ed;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/ed;
    .registers 2

    const-class v0, Lcom/bbm/d/ed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ed;

    return-object v0
.end method

.method public static values()[Lcom/bbm/d/ed;
    .registers 1

    sget-object v0, Lcom/bbm/d/ed;->h:[Lcom/bbm/d/ed;

    invoke-virtual {v0}, [Lcom/bbm/d/ed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/d/ed;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/ed;->g:Ljava/lang/String;

    return-object v0
.end method
