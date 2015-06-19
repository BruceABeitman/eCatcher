.class public final Lcom/c/be;
.super Lcom/c/ba;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/c/ba;-><init>()V

    return-void
.end method


# virtual methods
.method public b()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method protected c()Lcom/c/ba;
    .registers 2

    new-instance v0, Lcom/c/be;

    invoke-direct {v0}, Lcom/c/be;-><init>()V

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/c/be;->c()Lcom/c/ba;

    move-result-object v0

    return-object v0
.end method
