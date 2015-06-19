.class Lcom/twidroid/TwidroidClient$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient$3;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient$3;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient$3;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$3$1;->a:Lcom/twidroid/TwidroidClient$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$3$1;->a:Lcom/twidroid/TwidroidClient$3;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient$3;->a:Lcom/twidroid/ui/c/i;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/i;->m()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/twidroid/TwidroidClient$3$1$1;

    invoke-direct {v2, p0}, Lcom/twidroid/TwidroidClient$3$1$1;-><init>(Lcom/twidroid/TwidroidClient$3$1;)V

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/k;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/net/l;)V

    return-void
.end method
