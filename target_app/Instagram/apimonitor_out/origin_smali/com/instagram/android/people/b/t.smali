.class final Lcom/instagram/android/people/b/t;
.super Landroid/text/style/ClickableSpan;
.source "PhotosOfYouOptionsFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/people/b/q;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/b/q;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/b/t;->a:Lcom/instagram/android/people/b/q;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/android/people/b/t;->a:Lcom/instagram/android/people/b/q;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://help.instagram.com/433611883398929"

    iget-object v4, p0, Lcom/instagram/android/people/b/t;->a:Lcom/instagram/android/people/b/q;

    invoke-virtual {v4}, Lcom/instagram/android/people/b/q;->l()Landroid/support/v4/app/k;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/b/q;->a(Landroid/content/Intent;)V

    return-void
.end method
