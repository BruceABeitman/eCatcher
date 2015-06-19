.class public Lcom/tencent/open/d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/open/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/tencent/open/d$a;)V
    .registers 5

    new-instance v0, Lcom/tencent/open/f;

    invoke-direct {v0, p2}, Lcom/tencent/open/f;-><init>(Lcom/tencent/open/d$a;)V

    iput-object v0, p0, Lcom/tencent/open/d;->a:Lcom/tencent/open/f;

    invoke-static {}, Lcom/tencent/map/a/a/a;->a()Lcom/tencent/map/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/d;->a:Lcom/tencent/open/f;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/map/a/a/a;->a(Landroid/content/Context;Lcom/tencent/map/a/a/b;)Z

    return-void
.end method

.method public a()Z
    .registers 4

    invoke-static {}, Lcom/tencent/map/a/a/a;->a()Lcom/tencent/map/a/a/a;

    move-result-object v0

    const-string/jumbo v1, "OpenSdk"

    const-string/jumbo v2, "WQMPF-XMH66-ISQXP-OIGMM-BNL7M"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    invoke-static {}, Lcom/tencent/map/a/a/a;->a()Lcom/tencent/map/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/a/a/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/d;->a:Lcom/tencent/open/f;

    return-void
.end method
