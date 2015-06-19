.class Lcom/twidroid/c/k$5;
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

    iput-object p1, p0, Lcom/twidroid/c/k$5;->a:Lcom/twidroid/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/c/k$5;->a:Lcom/twidroid/c/k;

    invoke-virtual {v0}, Lcom/twidroid/c/k;->dismiss()V

    return-void
.end method
