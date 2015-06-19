.class Lcom/tencent/open/TaskGuide$a;
.super Lcom/tencent/open/TaskGuide$g;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/TaskGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/tencent/open/TaskGuide;


# direct methods
.method public constructor <init>(Lcom/tencent/open/TaskGuide;I)V
    .registers 4

    iput-object p1, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/open/TaskGuide$g;-><init>(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$4;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/open/TaskGuide$a;->a:I

    iput p2, p0, Lcom/tencent/open/TaskGuide$a;->a:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Exception;)V
    .registers 7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    iget-object v0, v0, Lcom/tencent/open/TaskGuide;->c:Lcom/tencent/tauth/IUiListener;

    new-instance v1, Lcom/tencent/tauth/UiError;

    const/16 v2, 0x65

    const-string/jumbo v3, "error "

    const-string/jumbo v4, "\u91d1\u5238\u9886\u53d6\u65f6\u51fa\u73b0\u5f02\u5e38"

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    iget-object v0, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    invoke-static {v0}, Lcom/tencent/open/TaskGuide;->x(Lcom/tencent/open/TaskGuide;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    invoke-static {v0}, Lcom/tencent/open/TaskGuide;->x(Lcom/tencent/open/TaskGuide;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/open/TaskGuide$a$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/open/TaskGuide$a$1;-><init>(Lcom/tencent/open/TaskGuide$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2f
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    iget v2, p0, Lcom/tencent/open/TaskGuide$a;->a:I

    sget-object v3, Lcom/tencent/open/TaskGuide$d;->e:Lcom/tencent/open/TaskGuide$d;

    invoke-static {v0, v2, v3}, Lcom/tencent/open/TaskGuide;->a(Lcom/tencent/open/TaskGuide;ILcom/tencent/open/TaskGuide$d;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1f} :catch_43

    :try_start_1f
    const-string/jumbo v0, "result"

    const-string/jumbo v3, "\u91d1\u5238\u9886\u53d6\u6210\u529f"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_28} :catch_3e

    :goto_28
    :try_start_28
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    iget-object v0, v0, Lcom/tencent/open/TaskGuide;->c:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, v2}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_2f} :catch_43

    :goto_2f
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    iget v1, p0, Lcom/tencent/open/TaskGuide$a;->a:I

    invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->c(Lcom/tencent/open/TaskGuide;I)V

    iget-object v0, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->e(Lcom/tencent/open/TaskGuide;I)V

    return-void

    :catch_3e
    move-exception v0

    :try_start_3f
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_28

    :catch_43
    move-exception v0

    iget-object v2, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    iget v3, p0, Lcom/tencent/open/TaskGuide$a;->a:I

    sget-object v4, Lcom/tencent/open/TaskGuide$d;->d:Lcom/tencent/open/TaskGuide$d;

    invoke-static {v2, v3, v4}, Lcom/tencent/open/TaskGuide;->a(Lcom/tencent/open/TaskGuide;ILcom/tencent/open/TaskGuide$d;)V

    iget-object v2, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    invoke-static {v2, v1}, Lcom/tencent/open/TaskGuide;->a(Lcom/tencent/open/TaskGuide;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2f

    :cond_56
    :try_start_56
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    iget v2, p0, Lcom/tencent/open/TaskGuide$a;->a:I

    sget-object v3, Lcom/tencent/open/TaskGuide$d;->d:Lcom/tencent/open/TaskGuide$d;

    invoke-static {v0, v2, v3}, Lcom/tencent/open/TaskGuide;->a(Lcom/tencent/open/TaskGuide;ILcom/tencent/open/TaskGuide$d;)V

    iget-object v0, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->a(Lcom/tencent/open/TaskGuide;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_69} :catch_43

    :try_start_69
    const-string/jumbo v0, "result"

    const-string/jumbo v3, "\u91d1\u5238\u9886\u53d6\u5931\u8d25"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_72} :catch_7a

    :goto_72
    :try_start_72
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$a;->b:Lcom/tencent/open/TaskGuide;

    iget-object v0, v0, Lcom/tencent/open/TaskGuide;->c:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, v2}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_2f

    :catch_7a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_7e} :catch_43

    goto :goto_72
.end method
