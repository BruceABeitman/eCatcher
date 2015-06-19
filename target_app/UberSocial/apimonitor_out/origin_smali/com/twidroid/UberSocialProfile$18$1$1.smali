.class Lcom/twidroid/UberSocialProfile$18$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile$18$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile$18$1;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile$18$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$18$1$1;->a:Lcom/twidroid/UberSocialProfile$18$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/twidroid/UberSocialProfile$18$1$1;->a:Lcom/twidroid/UberSocialProfile$18$1;

    iget-object v2, v2, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;

    iget-object v2, v2, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v2, v2, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_normal"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_reasonably_small"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-48-"

    const-string v4, "-96-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.browser.application_id"

    iget-object v2, p0, Lcom/twidroid/UberSocialProfile$18$1$1;->a:Lcom/twidroid/UberSocialProfile$18$1;

    iget-object v2, v2, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;

    iget-object v2, v2, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$18$1$1;->a:Lcom/twidroid/UberSocialProfile$18$1;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;

    invoke-virtual {v1, v0}, Lcom/twidroid/UberSocialProfile;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
