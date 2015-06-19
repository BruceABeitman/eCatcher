.class Lcom/tencent/connect/avatar/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/avatar/ImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/avatar/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/connect/avatar/ImageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/connect/avatar/a;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/connect/avatar/a;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->m(Lcom/tencent/connect/avatar/ImageActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    iget-object v0, p0, Lcom/tencent/connect/avatar/a;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->n(Lcom/tencent/connect/avatar/ImageActivity;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Lorg/json/JSONObject;

    const/4 v1, -0x1

    :try_start_3
    const-string/jumbo v0, "ret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v0, "nickname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/connect/avatar/a;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v2}, Lcom/tencent/connect/avatar/ImageActivity;->l(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tencent/connect/avatar/a$1;

    invoke-direct {v3, p0, v0}, Lcom/tencent/connect/avatar/a$1;-><init>(Lcom/tencent/connect/avatar/a;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tencent/connect/avatar/a;->a:Lcom/tencent/connect/avatar/ImageActivity;

    const-string/jumbo v2, "10659"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_2b} :catch_3c

    :goto_2b
    if-eqz v1, :cond_30

    invoke-direct {p0, v1}, Lcom/tencent/connect/avatar/a;->a(I)V

    :cond_30
    return-void

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/tencent/connect/avatar/a;->a:Lcom/tencent/connect/avatar/ImageActivity;

    const-string/jumbo v2, "10661"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_3b} :catch_3c

    goto :goto_2b

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2b
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/connect/avatar/a;->a(I)V

    return-void
.end method
