.class Lcom/twidroid/ui/a/ai$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/ai$1;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twidroid/ui/a/ai$1;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/ai$1;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/ui/a/ai$1$2;->b:Lcom/twidroid/ui/a/ai$1;

    iput-object p2, p0, Lcom/twidroid/ui/a/ai$1$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v12, 0x1

    const/4 v8, 0x0

    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/twidroid/ui/a/ai$1$2;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ThemeAdapter"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "own"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7f

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$1$2;->b:Lcom/twidroid/ui/a/ai$1;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    invoke-static {v0}, Lcom/twidroid/ui/a/ai;->b(Lcom/twidroid/ui/a/ai;)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$1$2;->b:Lcom/twidroid/ui/a/ai$1;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    invoke-static {v0}, Lcom/twidroid/ui/a/ai;->a(Lcom/twidroid/ui/a/ai;)I

    move-result v11

    new-instance v0, Lcom/twidroid/ui/themes/b/c;

    const-string v1, "1"

    iget-object v2, p0, Lcom/twidroid/ui/a/ai$1$2;->b:Lcom/twidroid/ui/a/ai$1;

    iget-object v2, v2, Lcom/twidroid/ui/a/ai$1;->a:Landroid/content/Context;

    const v3, 0x7f0c02e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/twidroid/ui/themes/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v8

    :goto_57
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_7f

    iget-object v1, p0, Lcom/twidroid/ui/a/ai$1$2;->b:Lcom/twidroid/ui/a/ai$1;

    iget-object v1, v1, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    invoke-static {v1}, Lcom/twidroid/ui/a/ai;->b(Lcom/twidroid/ui/a/ai;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/ui/a/ai$1$2;->b:Lcom/twidroid/ui/a/ai$1;

    iget-object v2, v2, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    invoke-static {v2}, Lcom/twidroid/ui/a/ai;->a(Lcom/twidroid/ui/a/ai;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Lcom/twidroid/ui/themes/b/c;

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/twidroid/ui/themes/b/c;-><init>(Lorg/json/JSONObject;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_7f
    iget-object v0, p0, Lcom/twidroid/ui/a/ai$1$2;->b:Lcom/twidroid/ui/a/ai$1;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/twidroid/ui/a/ai;->f:Z
    :try_end_86
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_86} :catch_8e
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_86} :catch_99

    :goto_86
    iget-object v0, p0, Lcom/twidroid/ui/a/ai$1$2;->b:Lcom/twidroid/ui/a/ai$1;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/ai;->notifyDataSetChanged()V

    return-void

    :catch_8e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$1$2;->b:Lcom/twidroid/ui/a/ai$1;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    iput-boolean v12, v0, Lcom/twidroid/ui/a/ai;->g:Z

    goto :goto_86

    :catch_99
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$1$2;->b:Lcom/twidroid/ui/a/ai$1;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    iput-boolean v12, v0, Lcom/twidroid/ui/a/ai;->g:Z

    goto :goto_86
.end method
