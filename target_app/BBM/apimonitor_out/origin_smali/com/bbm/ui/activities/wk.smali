.class final Lcom/bbm/ui/activities/wk;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/d/gl;

.field final synthetic b:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/d/gl;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/wk;->b:Lcom/bbm/ui/activities/MainActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/wk;->a:Lcom/bbm/d/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x1

    const-string v0, "SystemMessagesContextSlideMenu Delete Item Clicked"

    const-class v1, Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x1

    :try_start_9
    new-array v0, v0, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    iget-object v4, p0, Lcom/bbm/ui/activities/wk;->a:Lcom/bbm/d/gl;

    iget-object v4, v4, Lcom/bbm/d/gl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/b/c/p;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    const-string v2, "systemMessage"

    invoke-static {v0, v2}, Lcom/bbm/d/z;->d(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/dc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2e} :catch_38

    :goto_2e
    iget-object v0, p0, Lcom/bbm/ui/activities/wk;->b:Lcom/bbm/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v5}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    return-void

    :catch_38
    move-exception v0

    goto :goto_2e
.end method
