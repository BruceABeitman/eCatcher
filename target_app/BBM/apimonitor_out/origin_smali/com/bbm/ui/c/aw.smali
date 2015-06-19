.class final Lcom/bbm/ui/c/aw;
.super Ljava/lang/Object;
.source "ChatsFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/at;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/at;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/aw;->a:Lcom/bbm/ui/c/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupExpand(I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bbm/ui/c/aw;->a:Lcom/bbm/ui/c/at;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/at;->a(Lcom/bbm/ui/c/at;Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/aw;->a:Lcom/bbm/ui/c/at;

    invoke-static {v0}, Lcom/bbm/ui/c/at;->g(Lcom/bbm/ui/c/at;)Lcom/bbm/ui/e/cd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bbm/ui/e/cd;->getChildrenCount(I)I

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/bbm/ui/c/aw;->a:Lcom/bbm/ui/c/at;

    invoke-static {v0}, Lcom/bbm/ui/c/at;->g(Lcom/bbm/ui/c/at;)Lcom/bbm/ui/e/cd;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/bbm/ui/e/cd;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gl;

    iget-object v1, p0, Lcom/bbm/ui/c/aw;->a:Lcom/bbm/ui/c/at;

    invoke-static {v1}, Lcom/bbm/ui/c/at;->b(Lcom/bbm/ui/c/at;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/bbm/d/gl;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bbm/ui/b/ai;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    iget-boolean v1, v0, Lcom/bbm/d/gl;->c:Z

    if-nez v1, :cond_59

    const/4 v1, 0x1

    :try_start_2f
    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    iget-object v0, v0, Lcom/bbm/d/gl;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "read"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/b/c/p;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    const-string v2, "systemMessage"

    invoke-static {v0, v2}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_59} :catch_5a

    :cond_59
    :goto_59
    return-void

    :catch_5a
    move-exception v0

    goto :goto_59
.end method
