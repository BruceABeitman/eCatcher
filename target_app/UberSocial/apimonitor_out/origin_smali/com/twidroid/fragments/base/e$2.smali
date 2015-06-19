.class Lcom/twidroid/fragments/base/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/base/e;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/base/e;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/base/e;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/e$2;->a:Lcom/twidroid/fragments/base/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/base/e$2;->a:Lcom/twidroid/fragments/base/e;

    iget-object v0, v0, Lcom/twidroid/fragments/base/e;->c:Lcom/twidroid/UberSocialApplication;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "broadcast.show.streaming.hint"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialApplication;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
