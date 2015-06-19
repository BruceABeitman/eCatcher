.class Lcom/twidroid/c/k$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/k;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/k;


# direct methods
.method constructor <init>(Lcom/twidroid/c/k;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/k$4;->a:Lcom/twidroid/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/twidroid/c/k$4$1;

    invoke-direct {v0, p0}, Lcom/twidroid/c/k$4$1;-><init>(Lcom/twidroid/c/k$4;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/c/k$4$1;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method
