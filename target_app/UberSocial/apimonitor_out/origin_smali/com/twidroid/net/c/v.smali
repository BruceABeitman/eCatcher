.class Lcom/twidroid/net/c/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:Lcom/twidroid/UberSocialApplication;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/twidroid/UberSocialApplication;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/net/c/v;->c:Z

    iput p2, p0, Lcom/twidroid/net/c/v;->a:I

    iput-object p1, p0, Lcom/twidroid/net/c/v;->b:Lcom/twidroid/UberSocialApplication;

    iput-boolean p3, p0, Lcom/twidroid/net/c/v;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/net/c/v;->b:Lcom/twidroid/UberSocialApplication;

    iget-object v1, p0, Lcom/twidroid/net/c/v;->b:Lcom/twidroid/UberSocialApplication;

    iget v2, p0, Lcom/twidroid/net/c/v;->a:I

    invoke-virtual {v1, v2}, Lcom/twidroid/UberSocialApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-boolean v0, p0, Lcom/twidroid/net/c/v;->c:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/twidroid/net/c/v;->b:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/net/c/v;->b:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/themes/r;->i(Landroid/content/Context;)V

    :cond_21
    return-void
.end method
