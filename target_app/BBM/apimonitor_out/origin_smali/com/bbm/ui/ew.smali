.class final Lcom/bbm/ui/ew;
.super Ljava/lang/Object;
.source "QuickShareGlympseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/QuickShareGlympseView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/QuickShareGlympseView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/ew;->a:Lcom/bbm/ui/QuickShareGlympseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    const-string v0, "Upgrading button Clicked"

    const-class v1, Lcom/bbm/ui/QuickShareGlympseView;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    if-eqz p1, :cond_38

    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_38

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :try_start_15
    iget-object v1, p0, Lcom/bbm/ui/ew;->a:Lcom/bbm/ui/QuickShareGlympseView;

    invoke-virtual {v1}, Lcom/bbm/ui/QuickShareGlympseView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "market://details?id=com.google.android.gms&hl="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_38
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_38} :catch_39

    :cond_38
    :goto_38
    return-void

    :catch_39
    move-exception v1

    iget-object v1, p0, Lcom/bbm/ui/ew;->a:Lcom/bbm/ui/QuickShareGlympseView;

    invoke-virtual {v1}, Lcom/bbm/ui/QuickShareGlympseView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://play.google.com/store/apps/details?id=com.google.android.gms&hl="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_38
.end method
