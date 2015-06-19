.class Lcom/twidroid/net/oauth/RequestTokenActivity$2$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/oauth/RequestTokenActivity$2;->a(Lcom/twidroid/net/oauth/RequestTokenActivity;)Landroid/app/ProgressDialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/oauth/RequestTokenActivity;

.field final synthetic b:Lcom/twidroid/net/oauth/RequestTokenActivity$2;


# direct methods
.method constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity$2;Lcom/twidroid/net/oauth/RequestTokenActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2$6;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$2;

    iput-object p2, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2$6;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2$6;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    return-void
.end method
