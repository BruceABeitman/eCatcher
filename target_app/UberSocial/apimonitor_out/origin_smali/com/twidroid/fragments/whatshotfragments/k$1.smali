.class Lcom/twidroid/fragments/whatshotfragments/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/whatshotfragments/k;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/whatshotfragments/k;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/whatshotfragments/k;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/whatshotfragments/k$1;->a:Lcom/twidroid/fragments/whatshotfragments/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://twidroyd.com/factory"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.browser.application_id"

    iget-object v2, p0, Lcom/twidroid/fragments/whatshotfragments/k$1;->a:Lcom/twidroid/fragments/whatshotfragments/k;

    invoke-virtual {v2}, Lcom/twidroid/fragments/whatshotfragments/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/k$1;->a:Lcom/twidroid/fragments/whatshotfragments/k;

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/whatshotfragments/k;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
