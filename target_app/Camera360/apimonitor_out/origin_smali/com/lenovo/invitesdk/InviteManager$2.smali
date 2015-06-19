.class final Lcom/lenovo/invitesdk/InviteManager$2;
.super Ljava/lang/Object;
.source "InviteManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/invitesdk/InviteManager;->startZeroTraffic(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;


# direct methods
.method constructor <init>(Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/invitesdk/InviteManager$2;->a:Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lcom/lenovo/invitesdk/InviteManager;->a()Lcom/lenovo/anyshare/sdk/internal/cj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/cj;->d()Lcom/lenovo/network/base/Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xbb7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/invitesdk/InviteManager$2;->a:Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;

    invoke-interface {v3, v1, v2}, Lcom/lenovo/invitesdk/InviteManager$ZeroTrafficListener;->informServerInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
