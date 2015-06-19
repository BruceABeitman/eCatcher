.class Lcom/twidroid/c/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/n;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/n;


# direct methods
.method constructor <init>(Lcom/twidroid/c/n;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/n$1;->a:Lcom/twidroid/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/c/n$1;->a:Lcom/twidroid/c/n;

    invoke-virtual {v0}, Lcom/twidroid/c/n;->dismiss()V

    return-void
.end method
