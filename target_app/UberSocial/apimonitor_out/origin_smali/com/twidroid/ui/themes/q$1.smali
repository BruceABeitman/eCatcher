.class Lcom/twidroid/ui/themes/q$1;
.super Lcom/ubermedia/net/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/themes/q;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/themes/q;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/themes/q;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    iput-object p1, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ubermedia/net/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    const-string v0, "ThemeAPI"

    const-string v2, "Configuration Download complete"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_11} :catch_f0

    move-result-object v0

    :try_start_12
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v0, "ThemeAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Json Config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_34
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_37} :catch_e4
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_37} :catch_f0

    move-result v3

    if-ge v0, v3, :cond_58

    :try_start_3a
    iget-object v3, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v3, v3, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "key"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_55} :catch_107
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_55} :catch_e4
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_55} :catch_f0

    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_58
    :try_start_58
    const-string v0, "remote_icon"

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/themes/q$1;->b(Ljava/lang/String;)V

    const-string v0, "main_background"

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/themes/q$1;->b(Ljava/lang/String;)V

    const-string v0, "display_icon"

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/themes/q$1;->b(Ljava/lang/String;)V

    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/themes/q$1;->b(Ljava/lang/String;)V
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_6c} :catch_e4
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_6c} :catch_f0

    iget-object v0, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v0, v0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    const-string v2, "theme_name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    iget-object v2, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v0, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v0, v0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    const-string v3, "theme_name"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/twidroid/ui/themes/q;->f:Ljava/lang/String;

    :goto_88
    iget-object v0, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v0, v0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    const-string v2, "theme_description"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v2, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v0, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v0, v0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    const-string v3, "theme_description"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/twidroid/ui/themes/q;->g:Ljava/lang/String;

    :goto_a4
    iget-object v0, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v0, v0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    const-string v2, "remote_icon"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v0, v0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    const-string v1, "remote_icon"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_bc
    iget-object v1, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v1, v1, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    const-string v2, "display_icon"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    iget-object v0, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v0, v0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    const-string v1, "display_icon"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_d4
    iget-object v1, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v2, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v3, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v3, v3, Lcom/twidroid/ui/themes/q;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v4, v4, Lcom/twidroid/ui/themes/q;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twidroid/ui/themes/q;->a(Lcom/twidroid/ui/themes/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e3
    return-void

    :catch_e4
    move-exception v0

    :try_start_e5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v1, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v2, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    invoke-virtual {v1, v2, v0}, Lcom/twidroid/ui/themes/q;->a(Lcom/twidroid/ui/themes/q;Ljava/lang/Exception;)V
    :try_end_ef
    .catch Ljava/io/FileNotFoundException; {:try_start_e5 .. :try_end_ef} :catch_f0

    goto :goto_e3

    :catch_f0
    move-exception v0

    iget-object v1, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v2, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    invoke-virtual {v1, v2, v0}, Lcom/twidroid/ui/themes/q;->a(Lcom/twidroid/ui/themes/q;Ljava/lang/Exception;)V

    goto :goto_e3

    :cond_f9
    iget-object v0, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    const-string v2, "Unknown Theme"

    iput-object v2, v0, Lcom/twidroid/ui/themes/q;->f:Ljava/lang/String;

    goto :goto_88

    :cond_100
    iget-object v0, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    const-string v2, ""

    iput-object v2, v0, Lcom/twidroid/ui/themes/q;->g:Ljava/lang/String;

    goto :goto_a4

    :catch_107
    move-exception v3

    goto/16 :goto_55

    :cond_10a
    move-object v0, v1

    goto :goto_bc
.end method

.method public b(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v0, v0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v0, v0, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/twidroid/ui/themes/q$1$1;

    iget-object v1, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v2, v1, Lcom/twidroid/ui/themes/q;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v1, v1, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Accept"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "application/json"

    aput-object v6, v1, v5

    invoke-static {v1}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twidroid/ui/themes/q$1$1;-><init>(Lcom/twidroid/ui/themes/q$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/twidroid/ui/themes/q$1;->a:Lcom/twidroid/ui/themes/q;

    iget-object v1, v1, Lcom/twidroid/ui/themes/q;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ubermedia/net/f;->start()V

    :try_start_5c
    invoke-virtual {v0}, Lcom/ubermedia/net/f;->join()V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5f} :catch_60

    :cond_5f
    :goto_5f
    return-void

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5f
.end method
