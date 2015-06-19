.class final Lcom/bbm/ui/activities/zz;
.super Ljava/lang/Object;
.source "OpenInBbmActivity.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/bbm/ui/activities/OpenInBbmActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/OpenInBbmActivity;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/activities/zz;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/zz;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/ui/activities/zz;->b:Landroid/os/Handler;

    iput-object p4, p0, Lcom/bbm/ui/activities/zz;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 6

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "listAdd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "cookie"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    :try_start_14
    const-string v1, "cookie"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/zz;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lcom/bbm/d/fn;

    invoke-direct {v1}, Lcom/bbm/d/fn;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/fn;->a(Lorg/json/JSONObject;)V

    iget-object v0, v1, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    sget-object v2, Lcom/bbm/d/fp;->b:Lcom/bbm/d/fp;

    if-ne v0, v2, :cond_5f

    iget-object v0, p0, Lcom/bbm/ui/activities/zz;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    iget-object v1, v1, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_42
    iget-object v0, p0, Lcom/bbm/ui/activities/zz;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->finish()V
    :try_end_47
    .catchall {:try_start_14 .. :try_end_47} :catchall_9a
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_47} :catch_7b

    :cond_47
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/zz;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/activities/zz;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/zz;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->b(Lcom/bbm/ui/activities/OpenInBbmActivity;)Lcom/bbm/f/ac;

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    :try_start_5f
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/bbm/ui/activities/zz;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    iget-boolean v0, v1, Lcom/bbm/d/fn;->d:Z

    if-eqz v0, :cond_97

    const-class v0, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    :goto_69
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, v1, Lcom/bbm/d/fn;->d:Z

    const-string v0, "pending_contact_id"

    iget-object v1, v1, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/activities/zz;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/OpenInBbmActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_7a
    .catchall {:try_start_5f .. :try_end_7a} :catchall_9a
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_7a} :catch_7b

    goto :goto_42

    :catch_7b
    move-exception v0

    :try_start_7c
    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_9a

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/zz;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/activities/zz;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/zz;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->b(Lcom/bbm/ui/activities/OpenInBbmActivity;)Lcom/bbm/f/ac;

    goto :goto_5e

    :cond_97
    :try_start_97
    const-class v0, Lcom/bbm/ui/activities/SentPendingInviteActivity;
    :try_end_99
    .catchall {:try_start_97 .. :try_end_99} :catchall_9a
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_99} :catch_7b

    goto :goto_69

    :catchall_9a
    move-exception v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v1, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/zz;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bbm/ui/activities/zz;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/zz;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->b(Lcom/bbm/ui/activities/OpenInBbmActivity;)Lcom/bbm/f/ac;

    throw v0
.end method
