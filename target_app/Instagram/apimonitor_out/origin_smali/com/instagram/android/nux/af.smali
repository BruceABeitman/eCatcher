.class public final Lcom/instagram/android/nux/af;
.super Ljava/lang/Object;
.source "LoginUtil.java"


# direct methods
.method public static a(Lcom/instagram/api/j/j;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "help_url"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "help_url"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    invoke-static {}, Lcom/instagram/o/b;->a()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/instagram/user/c/a;)V
    .registers 5

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/instagram/share/b/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instagram/user/c/h;->a(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/service/a/a;->d(Lcom/instagram/user/c/a;)V

    invoke-static {}, Lcom/instagram/common/q/b/i;->a()Lcom/instagram/common/q/b/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/q/b/h;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/instagram/service/c/a;->a()V

    return-void
.end method
