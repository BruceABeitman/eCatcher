.class Lcom/lenovo/anyshare/sdk/internal/y$1;
.super Ljava/lang/Object;
.source "DownloadServlet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/anyshare/sdk/internal/y;->a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;Ljava/io/OutputStream;Ljava/io/InputStream;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/httpserver/HttpRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/lenovo/anyshare/sdk/internal/y;


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/y;Lcom/lenovo/httpserver/HttpRequest;Ljava/lang/String;JJ)V
    .registers 8

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->e:Lcom/lenovo/anyshare/sdk/internal/y;

    iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->a:Lcom/lenovo/httpserver/HttpRequest;

    iput-object p3, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->c:J

    iput-wide p6, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->e:Lcom/lenovo/anyshare/sdk/internal/y;

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->a:Lcom/lenovo/httpserver/HttpRequest;

    iget-object v1, v1, Lcom/lenovo/httpserver/HttpRequest;->remoteIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->c:J

    iget-wide v5, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->d:J

    invoke-static/range {v0 .. v6}, Lcom/lenovo/anyshare/sdk/internal/y;->a(Lcom/lenovo/anyshare/sdk/internal/y;Ljava/lang/String;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->e:Lcom/lenovo/anyshare/sdk/internal/y;

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->a:Lcom/lenovo/httpserver/HttpRequest;

    iget-object v1, v1, Lcom/lenovo/httpserver/HttpRequest;->remoteIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->c:J

    iget-wide v5, p0, Lcom/lenovo/anyshare/sdk/internal/y$1;->d:J

    invoke-static/range {v0 .. v6}, Lcom/lenovo/anyshare/sdk/internal/y;->b(Lcom/lenovo/anyshare/sdk/internal/y;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method
