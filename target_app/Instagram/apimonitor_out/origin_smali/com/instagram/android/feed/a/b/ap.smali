.class final Lcom/instagram/android/feed/a/b/ap;
.super Ljava/lang/Object;
.source "UserHeaderRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/user/c/a;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/instagram/user/c/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/ap;->a:Lcom/instagram/user/c/a;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/ap;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ap;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_14
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ap;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ap;->b:Landroid/content/Context;

    sget v1, Lcom/facebook/az;->web_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_19
.end method
