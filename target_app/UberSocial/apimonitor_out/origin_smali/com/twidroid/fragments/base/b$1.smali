.class Lcom/twidroid/fragments/base/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/base/b;->setUserVisibleHint(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/base/b;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/base/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/b$1;->a:Lcom/twidroid/fragments/base/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/base/b$1;->a:Lcom/twidroid/fragments/base/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/b;->c()V

    return-void
.end method
