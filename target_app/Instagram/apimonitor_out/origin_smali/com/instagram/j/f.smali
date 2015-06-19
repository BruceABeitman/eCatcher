.class public final enum Lcom/instagram/j/f;
.super Ljava/lang/Enum;
.source "AppStartPerformanceTracer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/j/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/j/f;

.field public static final enum b:Lcom/instagram/j/f;

.field private static final synthetic e:[Lcom/instagram/j/f;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/instagram/j/f;

    const-string v1, "ColdStart"

    const-string v2, "ColdStartPerformanceTracer"

    const-string v3, "launch_usable"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/instagram/j/f;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/j/f;->a:Lcom/instagram/j/f;

    new-instance v0, Lcom/instagram/j/f;

    const-string v1, "WarmStart"

    const-string v2, "WarmStartPerformanceTracer"

    const-string v3, "foreground_usable"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/instagram/j/f;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/j/f;->b:Lcom/instagram/j/f;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/j/f;

    sget-object v1, Lcom/instagram/j/f;->a:Lcom/instagram/j/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/j/f;->b:Lcom/instagram/j/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instagram/j/f;->e:[Lcom/instagram/j/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/instagram/j/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/instagram/j/f;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/instagram/j/f;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/j/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/j/f;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/j/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/j/f;
    .registers 2

    const-class v0, Lcom/instagram/j/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/f;

    return-object v0
.end method

.method public static values()[Lcom/instagram/j/f;
    .registers 1

    sget-object v0, Lcom/instagram/j/f;->e:[Lcom/instagram/j/f;

    invoke-virtual {v0}, [Lcom/instagram/j/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/j/f;

    return-object v0
.end method
