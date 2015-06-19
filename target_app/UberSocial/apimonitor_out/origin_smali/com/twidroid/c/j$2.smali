.class Lcom/twidroid/c/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/j;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/d;

.field final synthetic b:Lcom/twidroid/c/j;


# direct methods
.method constructor <init>(Lcom/twidroid/c/j;Lcom/twidroid/ui/a/d;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/c/j$2;->b:Lcom/twidroid/c/j;

    iput-object p2, p0, Lcom/twidroid/c/j$2;->a:Lcom/twidroid/ui/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v0, p0, Lcom/twidroid/c/j$2;->a:Lcom/twidroid/ui/a/d;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twidroid/c/j$2;->a:Lcom/twidroid/ui/a/d;

    invoke-virtual {v0, p3}, Lcom/twidroid/ui/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v1, p0, Lcom/twidroid/c/j$2;->b:Lcom/twidroid/c/j;

    iget-object v0, p0, Lcom/twidroid/c/j$2;->a:Lcom/twidroid/ui/a/d;

    invoke-virtual {v0, p3}, Lcom/twidroid/ui/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twidroid/c/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/c/j$2;->b:Lcom/twidroid/c/j;

    invoke-virtual {v0}, Lcom/twidroid/c/j;->dismiss()V

    goto :goto_c
.end method
