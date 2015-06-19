.class final Lcom/instagram/android/people/c/k;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/people/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/c/k;->a:Lcom/instagram/android/people/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/android/people/c/k;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://help.instagram.com/433611883398929"

    iget-object v4, p0, Lcom/instagram/android/people/c/k;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v4}, Lcom/instagram/android/people/c/a;->f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
