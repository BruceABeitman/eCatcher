.class Lcom/twidroid/TwidroidClient$38$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient$38;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient$38;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient$38;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$38$2;->a:Lcom/twidroid/TwidroidClient$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$38$2;->a:Lcom/twidroid/TwidroidClient$38;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient$38;->b:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->h(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/a/af;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$38$2;->a:Lcom/twidroid/TwidroidClient$38;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient$38;->b:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->h(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/a/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/af;->notifyDataSetChanged()V

    :cond_15
    return-void
.end method
