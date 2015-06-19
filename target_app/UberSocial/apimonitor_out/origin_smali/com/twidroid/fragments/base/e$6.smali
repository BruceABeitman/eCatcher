.class Lcom/twidroid/fragments/base/e$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/base/e;->d(Z)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/base/e;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/base/e;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/e$6;->a:Lcom/twidroid/fragments/base/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/base/e$6;->a:Lcom/twidroid/fragments/base/e;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/e;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V

    return-void
.end method
