.class Lcom/twidroid/activity/PremiumThemeFoundActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/PremiumThemeFoundActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/PremiumThemeFoundActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/PremiumThemeFoundActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/PremiumThemeFoundActivity$3;->a:Lcom/twidroid/activity/PremiumThemeFoundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/activity/PremiumThemeFoundActivity$3;->a:Lcom/twidroid/activity/PremiumThemeFoundActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/activity/PremiumThemeFoundActivity$3;->a:Lcom/twidroid/activity/PremiumThemeFoundActivity;

    const-class v3, Lcom/twidroid/activity/ThemeSelectorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/PremiumThemeFoundActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twidroid/activity/PremiumThemeFoundActivity$3;->a:Lcom/twidroid/activity/PremiumThemeFoundActivity;

    invoke-virtual {v0}, Lcom/twidroid/activity/PremiumThemeFoundActivity;->finish()V

    return-void
.end method
