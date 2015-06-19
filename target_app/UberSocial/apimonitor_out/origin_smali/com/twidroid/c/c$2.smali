.class Lcom/twidroid/c/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/c;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/c;


# direct methods
.method constructor <init>(Lcom/twidroid/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/c$2;->a:Lcom/twidroid/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v1, p0, Lcom/twidroid/c/c$2;->a:Lcom/twidroid/c/c;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twidroid/c/c;->a(I)V

    return-void
.end method
