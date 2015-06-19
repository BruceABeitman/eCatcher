.class Lcom/pinguo/camera360/login/ui/PGSsoActivity$1;
.super Ljava/lang/Object;
.source "PGSsoActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/ui/PGSsoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/ui/PGSsoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$1;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ssoFail()V
    .registers 3

    new-instance v0, Lcom/pinguo/camera360/login/model/SinaLogin;

    iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$1;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/login/model/SinaLogin;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sina"

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/SinaLogin;->startWebViewLogin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/login/ui/PGSsoActivity$1;->this$0:Lcom/pinguo/camera360/login/ui/PGSsoActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/login/ui/PGSsoActivity;->finish()V

    return-void
.end method
