.class Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubermedia/net/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;


# direct methods
.method constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$2;->a:Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)V
    .registers 2

    check-cast p1, Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$2;->a(Lcom/twidroid/net/oauth/RequestTokenActivity;)V

    return-void
.end method

.method public a(Lcom/twidroid/net/oauth/RequestTokenActivity;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    return-void
.end method
