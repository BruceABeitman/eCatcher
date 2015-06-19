.class public Lcom/lenovo/anyshare/sdk/internal/d;
.super Ljava/lang/Object;
.source "DefaultChannel.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field private b:Lcom/lenovo/anyshare/sdk/internal/m;

.field private final c:Lcom/lenovo/httpserver/HttpServer;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/d;->a:Landroid/content/Context;

    new-instance v0, Lcom/lenovo/httpserver/HttpServer;

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/httpserver/HttpServer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/d;->c:Lcom/lenovo/httpserver/HttpServer;

    const/16 v0, 0xbb7

    iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/d;->d:I

    const v0, 0xd7f3

    iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/d;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/d;->e:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/d;->d:I

    return-void
.end method

.method public final a(Lcom/lenovo/anyshare/sdk/internal/m;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/d;->b:Lcom/lenovo/anyshare/sdk/internal/m;

    return-void
.end method

.method public final a(Lcom/lenovo/httpserver/HttpServlet;)V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/d;->c:Lcom/lenovo/httpserver/HttpServer;

    invoke-virtual {v0, p1}, Lcom/lenovo/httpserver/HttpServer;->addServlet(Lcom/lenovo/httpserver/HttpServlet;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/d;->b:Lcom/lenovo/anyshare/sdk/internal/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/d;->b:Lcom/lenovo/anyshare/sdk/internal/m;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Ljava/lang/String;Z)V

    :cond_9
    return-void
.end method

.method public final b()Lcom/lenovo/anyshare/sdk/internal/m$a;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/d;->b:Lcom/lenovo/anyshare/sdk/internal/m;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/d;->b:Lcom/lenovo/anyshare/sdk/internal/m;

    invoke-interface {v0}, Lcom/lenovo/anyshare/sdk/internal/m;->c()Lcom/lenovo/anyshare/sdk/internal/m$a;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/d;->e:I

    return-void
.end method

.method public final c()Lcom/lenovo/anyshare/sdk/internal/m;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/d;->b:Lcom/lenovo/anyshare/sdk/internal/m;

    return-object v0
.end method

.method public final d()V
    .registers 5

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/d;->b:Lcom/lenovo/anyshare/sdk/internal/m;

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/d;->c:Lcom/lenovo/httpserver/HttpServer;

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/d;->b:Lcom/lenovo/anyshare/sdk/internal/m;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/d;->c:Lcom/lenovo/httpserver/HttpServer;

    iget v3, p0, Lcom/lenovo/anyshare/sdk/internal/d;->d:I

    invoke-virtual {v2, v3}, Lcom/lenovo/httpserver/HttpServer;->start(I)I

    move-result v1

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/i;->b(I)V

    new-instance v2, Lcom/lenovo/anyshare/sdk/internal/d$1;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/anyshare/sdk/internal/d$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/d;Lcom/lenovo/anyshare/sdk/internal/m;)V

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/be;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/d;->c:Lcom/lenovo/httpserver/HttpServer;

    invoke-virtual {v1}, Lcom/lenovo/httpserver/HttpServer;->stop()V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/d;->c:Lcom/lenovo/httpserver/HttpServer;

    invoke-virtual {v1}, Lcom/lenovo/httpserver/HttpServer;->clearServlets()V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/d;->b:Lcom/lenovo/anyshare/sdk/internal/m;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/d;->b:Lcom/lenovo/anyshare/sdk/internal/m;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/lenovo/anyshare/sdk/internal/m;->b()V

    :cond_14
    return-void
.end method
