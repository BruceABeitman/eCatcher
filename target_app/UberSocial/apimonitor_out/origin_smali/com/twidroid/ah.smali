.class Lcom/twidroid/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/ah;->a:Lcom/twidroid/UberSocialProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/ah;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://twitter.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/ah;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_23
    iget-object v1, p0, Lcom/twidroid/ah;->a:Lcom/twidroid/UberSocialProfile;

    invoke-virtual {v1, v0}, Lcom/twidroid/UberSocialProfile;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_28} :catch_29

    :goto_28
    return-void

    :catch_29
    move-exception v0

    const-string v0, "com.twidroid.activity.UberSocialProfile"

    const-string v1, "No browser found"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method
