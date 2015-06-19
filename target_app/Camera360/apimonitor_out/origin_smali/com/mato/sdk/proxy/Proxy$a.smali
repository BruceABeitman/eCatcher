.class final Lcom/mato/sdk/proxy/Proxy$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mato/sdk/proxy/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/mato/sdk/proxy/Proxy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x1

    :try_start_1
    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "network state changed"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "network change"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->a()Z

    move-result v0

    if-eqz v0, :cond_126

    const-string/jumbo v0, "MAA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "network change"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/utils/h;->e()Lcom/mato/sdk/utils/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mato/sdk/utils/h$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/utils/h;->e()Lcom/mato/sdk/utils/h$b;

    move-result-object v0

    invoke-static {p1}, Lcom/mato/sdk/utils/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->stop()V

    :cond_51
    :goto_51
    return-void

    :cond_52
    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->b()Lcom/mato/sdk/utils/h$b;

    move-result-object v1

    if-eq v0, v1, :cond_51

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->c()Z

    move-result v1

    if-eqz v1, :cond_75

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    if-eqz v1, :cond_75

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    invoke-virtual {v2}, Lcom/mato/sdk/proxy/Address;->getHost()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    invoke-virtual {v3}, Lcom/mato/sdk/proxy/Address;->getPort()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/mato/sdk/proxy/h;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_75
    const-string/jumbo v1, "MAA"

    const-string/jumbo v2, "resettunnel"

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->a(Lcom/mato/sdk/utils/h$b;)V

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mato/sdk/proxy/i;->a()V

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mato/sdk/proxy/i;->b()V

    invoke-static {}, Lcom/mato/sdk/a/b$a;->a()I

    move-result v0

    if-ne v0, v4, :cond_ea

    invoke-static {}, Lcom/mato/sdk/a/b$b;->b()Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-static {}, Lcom/mato/sdk/a/b;->a()Lcom/mato/sdk/a/b$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->a()Z

    move-result v0

    const-string/jumbo v1, "MAA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "is AlwaysBackSource="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "MAA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the isviaproxy is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_110

    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "setbypass true"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mato/sdk/proxy/i;->a(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mato/sdk/a/b$e;->a(Z)V

    :cond_ea
    :goto_ea
    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/mato/sdk/a/b;->r()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_fa

    invoke-static {}, Lcom/mato/sdk/a/b;->r()Ljava/lang/String;

    move-result-object v1

    :cond_fa
    invoke-static {}, Lcom/mato/sdk/a/b;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_104

    invoke-static {}, Lcom/mato/sdk/a/b;->o()Ljava/lang/String;

    move-result-object v0

    :cond_104
    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/mato/sdk/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51

    :catch_10d
    move-exception v0

    goto/16 :goto_51

    :cond_110
    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "setbypass false"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mato/sdk/proxy/i;->a(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mato/sdk/a/b$e;->a(Z)V

    goto :goto_ea

    :cond_126
    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->e()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {p1}, Lcom/mato/sdk/utils/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->b()Lcom/mato/sdk/utils/h$b;

    move-result-object v0

    sget-object v1, Lcom/mato/sdk/utils/h$b;->a:Lcom/mato/sdk/utils/h$b;

    if-ne v0, v1, :cond_51

    invoke-static {p1}, Lcom/mato/sdk/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "networkchange from nonetwork to network"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->a(Z)I
    :try_end_14d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14d} :catch_10d

    goto/16 :goto_51
.end method
