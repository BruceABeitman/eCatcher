.class Lcom/twidroid/c/m$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/m;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/m;


# direct methods
.method constructor <init>(Lcom/twidroid/c/m;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    new-instance v0, Lcom/twidroid/c/m$6$1;

    invoke-direct {v0, p0}, Lcom/twidroid/c/m$6$1;-><init>(Lcom/twidroid/c/m$6;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twidroid/model/twitter/DirectMessage;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;

    invoke-static {v3}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/c/m$6$1;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method
