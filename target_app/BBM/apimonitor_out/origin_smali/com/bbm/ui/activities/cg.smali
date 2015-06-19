.class final Lcom/bbm/ui/activities/cg;
.super Ljava/lang/Object;
.source "ChannelChatListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelChatListActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelChatListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/cg;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "chatEnabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "uri"

    iget-object v2, p0, Lcom/bbm/ui/activities/cg;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ChannelChatListActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/cg;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;

    move-result-object v0

    const-string v2, "channel"

    invoke-static {v1, v2}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2d} :catch_2e

    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2d
.end method
