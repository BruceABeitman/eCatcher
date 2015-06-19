.class Lcom/twidroid/c/w$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/w;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/w;


# direct methods
.method constructor <init>(Lcom/twidroid/c/w;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/w$5;->a:Lcom/twidroid/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/c/w$5;->a:Lcom/twidroid/c/w;

    invoke-virtual {v0}, Lcom/twidroid/c/w;->dismiss()V

    iget-object v0, p0, Lcom/twidroid/c/w$5;->a:Lcom/twidroid/c/w;

    invoke-static {v0}, Lcom/twidroid/c/w;->a(Lcom/twidroid/c/w;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/c/w$5;->a:Lcom/twidroid/c/w;

    iget-object v1, v1, Lcom/twidroid/c/w;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twidroid/c/w$5;->a:Lcom/twidroid/c/w;

    iget-object v2, v2, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-object v3, p0, Lcom/twidroid/c/w$5;->a:Lcom/twidroid/c/w;

    iget-object v3, v3, Lcom/twidroid/c/w;->j:Lcom/twidroid/net/c/a/f;

    iget-object v4, p0, Lcom/twidroid/c/w$5;->a:Lcom/twidroid/c/w;

    invoke-static {v4}, Lcom/twidroid/c/w;->b(Lcom/twidroid/c/w;)Lcom/twidroid/ui/a/am;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twidroid/net/c/t;->c(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V

    iget-object v0, p0, Lcom/twidroid/c/w$5;->a:Lcom/twidroid/c/w;

    const/16 v1, 0x3003

    iput v1, v0, Lcom/twidroid/c/w;->e:I

    return-void
.end method
