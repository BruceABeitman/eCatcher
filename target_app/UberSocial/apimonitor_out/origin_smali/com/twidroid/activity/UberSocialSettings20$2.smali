.class Lcom/twidroid/activity/UberSocialSettings20$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialSettings20;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/e;

.field final synthetic b:Lcom/twidroid/activity/UberSocialSettings20;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialSettings20;Lcom/facebook/a/e;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialSettings20$2;->b:Lcom/twidroid/activity/UberSocialSettings20;

    iput-object p2, p0, Lcom/twidroid/activity/UberSocialSettings20$2;->a:Lcom/facebook/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$2;->b:Lcom/twidroid/activity/UberSocialSettings20;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSettings20;->g:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 6

    new-instance v0, Lcom/facebook/a/a;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialSettings20$2;->a:Lcom/facebook/a/e;

    invoke-direct {v0, v1}, Lcom/facebook/a/a;-><init>(Lcom/facebook/a/e;)V

    const-string v1, "/me"

    new-instance v2, Lcom/twidroid/activity/UberSocialSettings20$2$1;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialSettings20$2$1;-><init>(Lcom/twidroid/activity/UberSocialSettings20$2;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/a/a;->a(Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/facebook/a/d;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$2;->b:Lcom/twidroid/activity/UberSocialSettings20;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSettings20;->g:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method public a(Lcom/facebook/a/k;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$2;->b:Lcom/twidroid/activity/UberSocialSettings20;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSettings20;->g:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
