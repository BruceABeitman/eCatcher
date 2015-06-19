.class final Lcom/mato/sdk/proxy/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mato/sdk/b/d;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/mato/sdk/utils/g;->p()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Crash\u65e5\u5fd7\u4e0a\u62a5\u6210\u529f"

    invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->a(Ljava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    const-string/jumbo v0, "Crash log report suceess"

    invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->a(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
