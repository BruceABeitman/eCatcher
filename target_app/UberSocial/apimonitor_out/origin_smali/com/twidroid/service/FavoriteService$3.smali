.class Lcom/twidroid/service/FavoriteService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/service/FavoriteService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/service/FavoriteService;


# direct methods
.method constructor <init>(Lcom/twidroid/service/FavoriteService;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/service/FavoriteService$3;->a:Lcom/twidroid/service/FavoriteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/service/FavoriteService$3;->a:Lcom/twidroid/service/FavoriteService;

    invoke-virtual {v0}, Lcom/twidroid/service/FavoriteService;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/service/FavoriteService$3;->a:Lcom/twidroid/service/FavoriteService;

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Lcom/twidroid/service/FavoriteService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
