.class Lcom/twidroid/c/w$1;
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

    iput-object p1, p0, Lcom/twidroid/c/w$1;->a:Lcom/twidroid/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/c/w$1;->a:Lcom/twidroid/c/w;

    invoke-static {v0}, Lcom/twidroid/c/w;->a(Lcom/twidroid/c/w;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/c/w$1;->a:Lcom/twidroid/c/w;

    iget-object v1, v1, Lcom/twidroid/c/w;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twidroid/c/w$1;->a:Lcom/twidroid/c/w;

    iget-object v2, v2, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-object v3, p0, Lcom/twidroid/c/w$1;->a:Lcom/twidroid/c/w;

    iget-object v3, v3, Lcom/twidroid/c/w;->j:Lcom/twidroid/net/c/a/f;

    invoke-static {v0, v1, v2, v3}, Lcom/twidroid/net/c/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V

    iget-object v0, p0, Lcom/twidroid/c/w$1;->a:Lcom/twidroid/c/w;

    invoke-virtual {v0}, Lcom/twidroid/c/w;->dismiss()V

    return-void
.end method
