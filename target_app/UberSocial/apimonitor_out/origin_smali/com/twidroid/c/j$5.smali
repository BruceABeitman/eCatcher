.class Lcom/twidroid/c/j$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/j;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/j;


# direct methods
.method constructor <init>(Lcom/twidroid/c/j;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/j$5;->a:Lcom/twidroid/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/c/j$5;->a:Lcom/twidroid/c/j;

    invoke-virtual {v0}, Lcom/twidroid/c/j;->dismiss()V

    return-void
.end method
