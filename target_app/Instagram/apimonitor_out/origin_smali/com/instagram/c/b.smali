.class final Lcom/instagram/c/b;
.super Ljava/lang/Object;
.source "Appirater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/instagram/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/c/a;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/c/b;->b:Lcom/instagram/c/a;

    iput-object p2, p0, Lcom/instagram/c/b;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "market://details?id=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/c/b;->b:Lcom/instagram/c/a;

    invoke-static {v3}, Lcom/instagram/c/a;->a(Lcom/instagram/c/a;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/c/b;->b:Lcom/instagram/c/a;

    invoke-static {v1}, Lcom/instagram/c/a;->a(Lcom/instagram/c/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/instagram/c/b;->b:Lcom/instagram/c/a;

    invoke-static {v0}, Lcom/instagram/c/a;->b(Lcom/instagram/c/a;)Z

    iget-object v0, p0, Lcom/instagram/c/b;->b:Lcom/instagram/c/a;

    invoke-static {v0}, Lcom/instagram/c/a;->c(Lcom/instagram/c/a;)V

    iget-object v0, p0, Lcom/instagram/c/b;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
