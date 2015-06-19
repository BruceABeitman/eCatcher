.class final Lcom/bbm/ui/activities/ya;
.super Ljava/lang/Object;
.source "NewChannelActivity.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ya;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/ya;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->d(Lcom/bbm/ui/activities/NewChannelActivity;)Lcom/bbm/d/a;

    move-result-object v0

    const-string v1, "channelOwnerProfile"

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_14

    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/bbm/ui/activities/ya;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->e(Lcom/bbm/ui/activities/NewChannelActivity;)V

    :goto_2f
    const/4 v0, 0x1

    goto :goto_13

    :cond_31
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/ya;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    const-class v2, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ya;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/bbm/ui/activities/NewChannelActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2f
.end method
