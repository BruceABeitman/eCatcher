.class final Lcom/bbm/ui/activities/aef;
.super Ljava/lang/Object;
.source "SelectCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/k;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bbm/ui/activities/aek;


# direct methods
.method constructor <init>(Lcom/bbm/ui/b/k;Landroid/content/Context;Lcom/bbm/ui/activities/aek;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/aef;->a:Lcom/bbm/ui/b/k;

    iput-object p2, p0, Lcom/bbm/ui/activities/aef;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/bbm/ui/activities/aef;->c:Lcom/bbm/ui/activities/aek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    const-string v0, "addCategoryDialog RightButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/SelectCategoryActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aef;->a:Lcom/bbm/ui/b/k;

    invoke-virtual {v0}, Lcom/bbm/ui/b/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    :goto_17
    return-void

    :cond_18
    invoke-static {v0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v0, p0, Lcom/bbm/ui/activities/aef;->a:Lcom/bbm/ui/b/k;

    iget-object v1, p0, Lcom/bbm/ui/activities/aef;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0261

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->e(Ljava/lang/String;)V

    goto :goto_17

    :cond_31
    invoke-static {}, Lcom/bbm/ui/activities/SelectCategoryActivity;->b()J

    move-result-wide v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :try_start_3f
    const-string v5, "name"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "canDelete"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "id"

    invoke-virtual {v3, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a()Lcom/bbm/d/a;

    move-result-object v3

    const-string v5, "category"

    invoke-static {v4, v5}, Lcom/bbm/d/z;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cy;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v3, p0, Lcom/bbm/ui/activities/aef;->c:Lcom/bbm/ui/activities/aek;

    if-eqz v3, :cond_6b

    iget-object v3, p0, Lcom/bbm/ui/activities/aef;->c:Lcom/bbm/ui/activities/aek;

    invoke-interface {v3, v0, v1, v2}, Lcom/bbm/ui/activities/aek;->a(Ljava/lang/String;J)V
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_6b} :catch_71

    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/bbm/ui/activities/aef;->a:Lcom/bbm/ui/b/k;

    invoke-virtual {v0}, Lcom/bbm/ui/b/k;->dismiss()V

    goto :goto_17

    :catch_71
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_6b
.end method
