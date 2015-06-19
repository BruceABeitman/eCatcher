.class final Lcom/twidroid/c/l$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/l;->a(Lcom/twidroid/TwidroidClient;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/twidroid/TwidroidClient;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/c/l$3;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/twidroid/c/l$3;->b:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/twidroid/c/l$3;->a:Landroid/view/View;

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twidroid/c/l$3;->b:Lcom/twidroid/TwidroidClient;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twidroid/c/l$3;->b:Lcom/twidroid/TwidroidClient;

    const-class v4, Lcom/twidroid/UberSocialProfile;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://twitter.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
