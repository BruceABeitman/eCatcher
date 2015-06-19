.class public final enum Lcom/facebook/b/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/facebook/b/l;

.field public static final enum b:Lcom/facebook/b/l;

.field private static final synthetic c:[Lcom/facebook/b/l;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/b/l;

    const-string v1, "READ"

    invoke-direct {v0, v1, v2}, Lcom/facebook/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/b/l;->a:Lcom/facebook/b/l;

    new-instance v0, Lcom/facebook/b/l;

    const-string v1, "PUBLISH"

    invoke-direct {v0, v1, v3}, Lcom/facebook/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/b/l;

    sget-object v1, Lcom/facebook/b/l;->a:Lcom/facebook/b/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/b/l;->c:[Lcom/facebook/b/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/b/l;
    .registers 2

    const-class v0, Lcom/facebook/b/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/b/l;

    return-object v0
.end method

.method public static values()[Lcom/facebook/b/l;
    .registers 1

    sget-object v0, Lcom/facebook/b/l;->c:[Lcom/facebook/b/l;

    invoke-virtual {v0}, [Lcom/facebook/b/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/b/l;

    return-object v0
.end method
