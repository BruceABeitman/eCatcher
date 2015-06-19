.class Lcom/twidroid/activity/UberSocialSettings20$2$1;
.super Lcom/twidroid/net/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialSettings20$2;->a(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialSettings20$2;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialSettings20$2;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialSettings20$2$1;->a:Lcom/twidroid/activity/UberSocialSettings20$2;

    invoke-direct {p0}, Lcom/twidroid/net/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .registers 7

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twidroid/net/a/a/c;

    iget-object v3, p0, Lcom/twidroid/activity/UberSocialSettings20$2$1;->a:Lcom/twidroid/activity/UberSocialSettings20$2;

    iget-object v3, v3, Lcom/twidroid/activity/UberSocialSettings20$2;->a:Lcom/facebook/a/e;

    invoke-direct {v2, v3, v0, v1}, Lcom/twidroid/net/a/a/c;-><init>(Lcom/facebook/a/e;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$2$1;->a:Lcom/twidroid/activity/UberSocialSettings20$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSettings20$2;->b:Lcom/twidroid/activity/UberSocialSettings20;

    invoke-virtual {v2, v0}, Lcom/twidroid/net/a/a/c;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$2$1;->a:Lcom/twidroid/activity/UberSocialSettings20$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSettings20$2;->b:Lcom/twidroid/activity/UberSocialSettings20;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialSettings20$2$1;->a:Lcom/twidroid/activity/UberSocialSettings20$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialSettings20$2;->b:Lcom/twidroid/activity/UberSocialSettings20;

    invoke-static {v1}, Lcom/twidroid/net/a/a/c;->b(Landroid/content/Context;)Lcom/twidroid/net/a/a/c;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/activity/UberSocialSettings20;->f:Lcom/twidroid/net/a/a/c;

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$2$1;->a:Lcom/twidroid/activity/UberSocialSettings20$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSettings20$2;->b:Lcom/twidroid/activity/UberSocialSettings20;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSettings20;->f:Lcom/twidroid/net/a/a/c;

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$2$1;->a:Lcom/twidroid/activity/UberSocialSettings20$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSettings20$2;->b:Lcom/twidroid/activity/UberSocialSettings20;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialSettings20;->g:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3c
    return-void
.end method
