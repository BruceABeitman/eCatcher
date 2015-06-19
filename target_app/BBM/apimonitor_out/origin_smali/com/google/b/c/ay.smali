.class final enum Lcom/google/b/c/ay;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/b/c/az;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/b/c/ay;",
        ">;",
        "Lcom/google/b/c/az",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/b/c/ay;

.field private static final synthetic b:[Lcom/google/b/c/ay;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/b/c/ay;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/b/c/ay;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/c/ay;->a:Lcom/google/b/c/ay;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/b/c/ay;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/b/c/ay;->a:Lcom/google/b/c/ay;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/b/c/ay;->b:[Lcom/google/b/c/ay;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/b/c/ay;
    .registers 2

    const-class v0, Lcom/google/b/c/ay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/b/c/ay;

    return-object v0
.end method

.method public static values()[Lcom/google/b/c/ay;
    .registers 1

    sget-object v0, Lcom/google/b/c/ay;->b:[Lcom/google/b/c/ay;

    invoke-virtual {v0}, [Lcom/google/b/c/ay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/b/c/ay;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/b/c/bm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/c/bm",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(J)V
    .registers 3

    return-void
.end method

.method public final a(Lcom/google/b/c/az;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/c/az",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/google/b/c/bm;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/c/bm",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final b()Lcom/google/b/c/az;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/c/az",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lcom/google/b/c/az;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/c/az",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lcom/google/b/c/az;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/c/az",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final d()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Lcom/google/b/c/az;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/c/az",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final e()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final f()Lcom/google/b/c/az;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/c/az",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public final g()Lcom/google/b/c/az;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/c/az",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public final h()Lcom/google/b/c/az;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/c/az",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public final i()Lcom/google/b/c/az;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/c/az",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p0
.end method
