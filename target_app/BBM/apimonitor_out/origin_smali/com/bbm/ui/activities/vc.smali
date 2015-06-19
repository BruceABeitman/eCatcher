.class final Lcom/bbm/ui/activities/vc;
.super Ljava/lang/Object;
.source "LegalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/LegalActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/LegalActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/vc;->a:Lcom/bbm/ui/activities/LegalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "mOnClickListener Clicked"

    const-class v1, Lcom/bbm/ui/activities/LegalActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    if-eqz p1, :cond_25

    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_25

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/vc;->a:Lcom/bbm/ui/activities/LegalActivity;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/LegalActivity;->startActivity(Landroid/content/Intent;)V

    :cond_25
    return-void
.end method
