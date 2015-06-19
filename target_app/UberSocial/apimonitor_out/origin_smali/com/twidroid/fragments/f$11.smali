.class Lcom/twidroid/fragments/f$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/f;->a(I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/f;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/f;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/f$11;->a:Lcom/twidroid/fragments/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/f$11;->a:Lcom/twidroid/fragments/f;

    invoke-virtual {v0}, Lcom/twidroid/fragments/f;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twidroid/fragments/f$11;->a:Lcom/twidroid/fragments/f;

    invoke-virtual {v0}, Lcom/twidroid/fragments/f;->P()V

    :cond_13
    const/4 v0, 0x1

    return v0
.end method
