.class final Lcom/bbm/ui/c/az;
.super Ljava/lang/Object;
.source "ChatsFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/at;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/at;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/az;->a:Lcom/bbm/ui/c/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 15

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/bbm/ui/c/az;->a:Lcom/bbm/ui/c/at;

    invoke-static {v0}, Lcom/bbm/ui/c/at;->g(Lcom/bbm/ui/c/at;)Lcom/bbm/ui/e/cd;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/bbm/ui/e/cd;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gl;

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/bbm/d/gl;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bbm/ui/b/ai;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-boolean v2, v0, Lcom/bbm/d/gl;->c:Z

    if-nez v2, :cond_46

    const/4 v2, 0x1

    :try_start_1c
    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "id"

    iget-object v6, v0, Lcom/bbm/d/gl;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "read"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/b/c/p;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    const-string v4, "systemMessage"

    invoke-static {v2, v4}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_46} :catch_5f

    :cond_46
    :goto_46
    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v2

    iget-object v0, v0, Lcom/bbm/d/gl;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/bbm/ui/f/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/f/a;->b()V

    new-instance v0, Lcom/bbm/ui/c/ba;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ba;-><init>(Lcom/bbm/ui/c/az;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return v7

    :catch_5f
    move-exception v2

    goto :goto_46
.end method
