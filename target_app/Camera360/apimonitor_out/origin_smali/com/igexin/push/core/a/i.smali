.class public Lcom/igexin/push/core/a/i;
.super Lcom/igexin/push/core/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/a/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/a/a/d/d;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/igexin/push/c/c/h;

    if-eqz v0, :cond_13

    const-string/jumbo v0, "heartbeatRsp"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/i;->a()Lcom/igexin/push/core/i;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/k;->a:Lcom/igexin/push/core/k;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/i;->a(Lcom/igexin/push/core/k;)V

    :cond_13
    const/4 v0, 0x1

    return v0
.end method
