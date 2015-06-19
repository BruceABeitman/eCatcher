.class public Lcom/umeng/common/net/m;
.super Lcom/umeng/common/net/r;
.source "ReportClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/common/net/m$a;,
        Lcom/umeng/common/net/m$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/umeng/common/net/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/common/net/r;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Lcom/umeng/common/net/n;)Lcom/umeng/common/net/o$a;
    .registers 3

    const-class v0, Lcom/umeng/common/net/o;

    invoke-virtual {p0, p1, v0}, Lcom/umeng/common/net/m;->execute(Lcom/umeng/common/net/s;Ljava/lang/Class;)Lcom/umeng/common/net/t;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/o;

    if-nez v0, :cond_d

    sget-object v0, Lcom/umeng/common/net/o$a;->b:Lcom/umeng/common/net/o$a;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, v0, Lcom/umeng/common/net/o;->a:Lcom/umeng/common/net/o$a;

    goto :goto_c
.end method

.method public sendAsync(Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V
    .registers 6

    :try_start_0
    new-instance v0, Lcom/umeng/common/net/m$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/common/net/m$b;-><init>(Lcom/umeng/common/net/m;Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/m$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    sget-object v1, Lcom/umeng/common/net/m;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz p2, :cond_b

    sget-object v0, Lcom/umeng/common/net/o$a;->b:Lcom/umeng/common/net/o$a;

    invoke-interface {p2, v0}, Lcom/umeng/common/net/m$a;->a(Lcom/umeng/common/net/o$a;)V

    goto :goto_b
.end method
