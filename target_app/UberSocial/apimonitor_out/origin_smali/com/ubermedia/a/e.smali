.class public final enum Lcom/ubermedia/a/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/ubermedia/a/e;

.field public static final enum b:Lcom/ubermedia/a/e;

.field public static final enum c:Lcom/ubermedia/a/e;

.field private static final synthetic d:[Lcom/ubermedia/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ubermedia/a/e;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/ubermedia/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubermedia/a/e;->a:Lcom/ubermedia/a/e;

    new-instance v0, Lcom/ubermedia/a/e;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/ubermedia/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubermedia/a/e;->b:Lcom/ubermedia/a/e;

    new-instance v0, Lcom/ubermedia/a/e;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/ubermedia/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ubermedia/a/e;

    sget-object v1, Lcom/ubermedia/a/e;->a:Lcom/ubermedia/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ubermedia/a/e;->b:Lcom/ubermedia/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ubermedia/a/e;->d:[Lcom/ubermedia/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ubermedia/a/e;
    .registers 2

    const-class v0, Lcom/ubermedia/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ubermedia/a/e;

    return-object v0
.end method

.method public static values()[Lcom/ubermedia/a/e;
    .registers 1

    sget-object v0, Lcom/ubermedia/a/e;->d:[Lcom/ubermedia/a/e;

    invoke-virtual {v0}, [Lcom/ubermedia/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubermedia/a/e;

    return-object v0
.end method
