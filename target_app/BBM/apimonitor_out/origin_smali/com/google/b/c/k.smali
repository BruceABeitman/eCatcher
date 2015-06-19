.class final enum Lcom/google/b/c/k;
.super Ljava/lang/Enum;
.source "GenericMapMaker.java"

# interfaces
.implements Lcom/google/b/c/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/b/c/k;",
        ">;",
        "Lcom/google/b/c/y",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/b/c/k;

.field private static final synthetic b:[Lcom/google/b/c/k;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/b/c/k;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/b/c/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/c/k;->a:Lcom/google/b/c/k;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/b/c/k;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/b/c/k;->a:Lcom/google/b/c/k;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/b/c/k;->b:[Lcom/google/b/c/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/b/c/k;
    .registers 2

    const-class v0, Lcom/google/b/c/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/b/c/k;

    return-object v0
.end method

.method public static values()[Lcom/google/b/c/k;
    .registers 1

    sget-object v0, Lcom/google/b/c/k;->b:[Lcom/google/b/c/k;

    invoke-virtual {v0}, [Lcom/google/b/c/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/b/c/k;

    return-object v0
.end method
