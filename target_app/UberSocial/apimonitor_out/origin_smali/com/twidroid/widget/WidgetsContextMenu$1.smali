.class Lcom/twidroid/widget/WidgetsContextMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/widget/WidgetsContextMenu;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/widget/WidgetsContextMenu;


# direct methods
.method constructor <init>(Lcom/twidroid/widget/WidgetsContextMenu;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/widget/WidgetsContextMenu$1;->a:Lcom/twidroid/widget/WidgetsContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/widget/WidgetsContextMenu$1;->a:Lcom/twidroid/widget/WidgetsContextMenu;

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu$1;->a:Lcom/twidroid/widget/WidgetsContextMenu;

    invoke-static {v0}, Lcom/twidroid/widget/WidgetsContextMenu;->a(Lcom/twidroid/widget/WidgetsContextMenu;)Lcom/twidroid/model/twitter/CommunicationEntity;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    new-instance v3, Lcom/twidroid/widget/WidgetsContextMenu$1$1;

    invoke-direct {v3, p0}, Lcom/twidroid/widget/WidgetsContextMenu$1$1;-><init>(Lcom/twidroid/widget/WidgetsContextMenu$1;)V

    invoke-static {v1, v2, v0, v3}, Lcom/twidroid/net/c/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    const-string v1, "WidgetsContextMenu"

    const-string v2, "retweet error: "

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method
