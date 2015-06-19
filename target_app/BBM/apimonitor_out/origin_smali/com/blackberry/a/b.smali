.class public final enum Lcom/blackberry/a/b;
.super Ljava/lang/Enum;
.source "Ecosystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/blackberry/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/blackberry/a/b;

.field public static final enum b:Lcom/blackberry/a/b;

.field public static final enum c:Lcom/blackberry/a/b;

.field public static final enum d:Lcom/blackberry/a/b;

.field private static final synthetic e:[Lcom/blackberry/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/blackberry/a/b;

    const-string v1, "DEV"

    invoke-direct {v0, v1, v2}, Lcom/blackberry/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blackberry/a/b;->a:Lcom/blackberry/a/b;

    new-instance v0, Lcom/blackberry/a/b;

    const-string v1, "STR"

    invoke-direct {v0, v1, v3}, Lcom/blackberry/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blackberry/a/b;->b:Lcom/blackberry/a/b;

    new-instance v0, Lcom/blackberry/a/b;

    const-string v1, "STAGING"

    invoke-direct {v0, v1, v4}, Lcom/blackberry/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blackberry/a/b;->c:Lcom/blackberry/a/b;

    new-instance v0, Lcom/blackberry/a/b;

    const-string v1, "PRODUCTION"

    invoke-direct {v0, v1, v5}, Lcom/blackberry/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blackberry/a/b;->d:Lcom/blackberry/a/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/blackberry/a/b;

    sget-object v1, Lcom/blackberry/a/b;->a:Lcom/blackberry/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/blackberry/a/b;->b:Lcom/blackberry/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/blackberry/a/b;->c:Lcom/blackberry/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/blackberry/a/b;->d:Lcom/blackberry/a/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/blackberry/a/b;->e:[Lcom/blackberry/a/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/blackberry/a/b;
    .registers 2

    const-class v0, Lcom/blackberry/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blackberry/a/b;

    return-object v0
.end method

.method public static values()[Lcom/blackberry/a/b;
    .registers 1

    sget-object v0, Lcom/blackberry/a/b;->e:[Lcom/blackberry/a/b;

    invoke-virtual {v0}, [Lcom/blackberry/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blackberry/a/b;

    return-object v0
.end method
