.class Lcom/twidroid/c/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twidroid/c/x;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/twidroid/c/x;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/c/y;->a:Lcom/twidroid/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/c/y;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/c/y;->a:Lcom/twidroid/c/x;

    invoke-virtual {v0}, Lcom/twidroid/c/x;->dismiss()V

    iget-object v0, p0, Lcom/twidroid/c/y;->a:Lcom/twidroid/c/x;

    iget-object v0, v0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/c/y;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "tweetdialog"

    const-string v1, "hashtag"

    iget-object v2, p0, Lcom/twidroid/c/y;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
