.class Lcom/twidroid/fragments/d/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/d/a;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/d/a;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/d/a$1;->a:Lcom/twidroid/fragments/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/twidroid/fragments/d/a$1;->a:Lcom/twidroid/fragments/d/a;

    iget-object v2, v2, Lcom/twidroid/fragments/d/a;->I:Lcom/twidroid/model/twitter/User;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/User;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.browser.application_id"

    iget-object v2, p0, Lcom/twidroid/fragments/d/a$1;->a:Lcom/twidroid/fragments/d/a;

    invoke-virtual {v2}, Lcom/twidroid/fragments/d/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/fragments/d/a$1;->a:Lcom/twidroid/fragments/d/a;

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/d/a;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
