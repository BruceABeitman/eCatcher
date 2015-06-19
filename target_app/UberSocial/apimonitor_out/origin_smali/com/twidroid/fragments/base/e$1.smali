.class Lcom/twidroid/fragments/base/e$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/fragments/base/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/base/e;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/base/e;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/e$1;->a:Lcom/twidroid/fragments/base/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "BaseTwetTimelineWithAccountSelection"

    const-string v1, "Stopping streaming when app was shutdown"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/e$1;->a:Lcom/twidroid/fragments/base/e;

    invoke-static {v0}, Lcom/twidroid/fragments/base/e;->a(Lcom/twidroid/fragments/base/e;)V

    return-void
.end method
