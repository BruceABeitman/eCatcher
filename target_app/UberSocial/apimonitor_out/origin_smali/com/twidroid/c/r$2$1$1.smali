.class Lcom/twidroid/c/r$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/r$2$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/r$2$1;


# direct methods
.method constructor <init>(Lcom/twidroid/c/r$2$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/r$2$1$1;->a:Lcom/twidroid/c/r$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/c/r$2$1$1;->a:Lcom/twidroid/c/r$2$1;

    iget-object v0, v0, Lcom/twidroid/c/r$2$1;->b:Lcom/twidroid/c/r$2;

    iget-object v0, v0, Lcom/twidroid/c/r$2;->c:Landroid/app/Activity;

    const-string v1, "Thanks for providing your e-mail address."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
