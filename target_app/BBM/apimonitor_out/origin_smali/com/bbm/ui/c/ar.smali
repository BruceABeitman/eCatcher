.class public final Lcom/bbm/ui/c/ar;
.super Ljava/lang/Object;
.source "ChannelsNotificationsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/am;

.field private final b:Lcom/bbm/d/ei;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/c/am;Lcom/bbm/d/ei;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/ar;->a:Lcom/bbm/ui/c/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bbm/ui/c/ar;->b:Lcom/bbm/d/ei;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbm/ui/c/ar;->b:Lcom/bbm/d/ei;

    iget-object v1, v1, Lcom/bbm/d/ei;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/ac;->e(Ljava/lang/String;)V

    :try_start_8
    iget-object v1, p0, Lcom/bbm/ui/c/ar;->b:Lcom/bbm/d/ei;

    iget-object v1, v1, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;

    const-string v2, "channelUri"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_11} :catch_2e

    move-result-object v1

    :try_start_12
    iget-object v2, p0, Lcom/bbm/ui/c/ar;->b:Lcom/bbm/d/ei;

    iget-object v2, v2, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;

    const-string v3, "postId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_1b} :catch_40

    move-result-object v0

    :goto_1c
    iget-object v2, p0, Lcom/bbm/ui/c/ar;->b:Lcom/bbm/d/ei;

    iget-object v2, v2, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;

    sget-object v3, Lcom/bbm/d/ej;->a:Lcom/bbm/d/ej;

    if-ne v2, v3, :cond_35

    iget-object v0, p0, Lcom/bbm/ui/c/ar;->a:Lcom/bbm/ui/c/am;

    invoke-static {v0}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2d
    return-void

    :catch_2e
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_31
    invoke-static {v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_1c

    :cond_35
    iget-object v2, p0, Lcom/bbm/ui/c/ar;->a:Lcom/bbm/ui/c/am;

    invoke-static {v2}, Lcom/bbm/ui/c/am;->c(Lcom/bbm/ui/c/am;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2d

    :catch_40
    move-exception v2

    goto :goto_31
.end method
