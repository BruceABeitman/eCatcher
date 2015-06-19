.class Lcom/twidroid/c/m$3;
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

    iput-object p1, p0, Lcom/twidroid/c/m$3;->a:Lcom/twidroid/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/c/m$3;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "DirectMessageDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show profile clicked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/c/m$3;->a:Lcom/twidroid/c/m;

    invoke-static {v2}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/twidroid/c/m$3;->a:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->b(Lcom/twidroid/c/m;)Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/c/m$3;->a:Lcom/twidroid/c/m;

    invoke-static {v1}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;

    move-result-object v1

    iget-wide v1, v1, Lcom/twidroid/model/twitter/DirectMessage;->D:J

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->d(J)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    iget-object v1, p0, Lcom/twidroid/c/m$3;->a:Lcom/twidroid/c/m;

    invoke-virtual {v1}, Lcom/twidroid/c/m;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/c/m$3;->a:Lcom/twidroid/c/m;

    invoke-static {v2}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/twidroid/c/m$3;->a:Lcom/twidroid/c/m;

    invoke-virtual {v0}, Lcom/twidroid/c/m;->dismiss()V

    goto :goto_8

    :cond_58
    iget-object v0, p0, Lcom/twidroid/c/m$3;->a:Lcom/twidroid/c/m;

    invoke-virtual {v0}, Lcom/twidroid/c/m;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cant\'t find account"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8
.end method
