.class Lcom/twidroid/service/RetweetService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/service/RetweetService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twidroid/service/RetweetService;


# direct methods
.method constructor <init>(Lcom/twidroid/service/RetweetService;I)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/service/RetweetService$2;->b:Lcom/twidroid/service/RetweetService;

    iput p2, p0, Lcom/twidroid/service/RetweetService$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/service/RetweetService$2;->b:Lcom/twidroid/service/RetweetService;

    invoke-virtual {v0}, Lcom/twidroid/service/RetweetService;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/service/RetweetService$2;->b:Lcom/twidroid/service/RetweetService;

    iget v2, p0, Lcom/twidroid/service/RetweetService$2;->a:I

    invoke-virtual {v1, v2}, Lcom/twidroid/service/RetweetService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
