.class Lcom/twidroid/TwidroidClient$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient;->z()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$34;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/twidroid/TwidroidClient$34;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v2}, Lcom/twidroid/TwidroidClient;->d(Lcom/twidroid/TwidroidClient;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient$34;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v1, v0}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$34;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v0}, Lcom/twidroid/TwidroidClient;->finish()V

    return-void
.end method
