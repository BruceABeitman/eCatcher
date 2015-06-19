.class Lcom/twidroid/activity/UberSocialSplash$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialSplash;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialSplash;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialSplash;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialSplash$10;->a:Lcom/twidroid/activity/UberSocialSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://mobile.twitter.com/signup"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialSplash$10;->a:Lcom/twidroid/activity/UberSocialSplash;

    invoke-virtual {v1, v0}, Lcom/twidroid/activity/UberSocialSplash;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
