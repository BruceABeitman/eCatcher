.class final Lcom/lenovo/invitesdk/InviteManager$1;
.super Ljava/lang/Object;
.source "InviteManager.java"

# interfaces
.implements Lcom/lenovo/anyshare/sdk/internal/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/invitesdk/InviteManager;->startZeroTraffic(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;

.field private e:Lcom/lenovo/httpserver/HttpServer;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;)V
    .registers 7

    iput-object p1, p0, Lcom/lenovo/invitesdk/InviteManager$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/invitesdk/InviteManager$1;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/lenovo/invitesdk/InviteManager$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/invitesdk/InviteManager$1;->d:Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/httpserver/HttpServer;

    iget-object v1, p0, Lcom/lenovo/invitesdk/InviteManager$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/httpserver/HttpServer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/invitesdk/InviteManager$1;->e:Lcom/lenovo/httpserver/HttpServer;

    return-void
.end method

.method private a()V
    .registers 5

    iget-object v1, p0, Lcom/lenovo/invitesdk/InviteManager$1;->e:Lcom/lenovo/httpserver/HttpServer;

    const/16 v2, 0xbb7

    invoke-virtual {v1, v2}, Lcom/lenovo/httpserver/HttpServer;->start(I)I

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/by;

    iget-object v1, p0, Lcom/lenovo/invitesdk/InviteManager$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/invitesdk/InviteManager$1;->b:Ljava/io/File;

    iget-object v3, p0, Lcom/lenovo/invitesdk/InviteManager$1;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/by;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/invitesdk/InviteManager$1;->e:Lcom/lenovo/httpserver/HttpServer;

    invoke-virtual {v1, v0}, Lcom/lenovo/httpserver/HttpServer;->addServlet(Lcom/lenovo/httpserver/HttpServlet;)V

    iget-object v1, p0, Lcom/lenovo/invitesdk/InviteManager$1;->d:Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;

    invoke-interface {v1}, Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;->serverStarted()V

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/lenovo/invitesdk/InviteManager$1;->e:Lcom/lenovo/httpserver/HttpServer;

    invoke-virtual {v0}, Lcom/lenovo/httpserver/HttpServer;->stop()V

    iget-object v0, p0, Lcom/lenovo/invitesdk/InviteManager$1;->d:Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;

    invoke-interface {v0}, Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;->serverStopped()V

    return-void
.end method


# virtual methods
.method public onNetworkStatusChanged(Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
    .registers 5

    sget-object v0, Lcom/lenovo/invitesdk/InviteManager$3;->a:[I

    invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cd;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    :goto_b
    return-void

    :pswitch_c
    if-eqz p2, :cond_12

    invoke-direct {p0}, Lcom/lenovo/invitesdk/InviteManager$1;->a()V

    goto :goto_b

    :cond_12
    invoke-direct {p0}, Lcom/lenovo/invitesdk/InviteManager$1;->b()V

    goto :goto_b

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method
