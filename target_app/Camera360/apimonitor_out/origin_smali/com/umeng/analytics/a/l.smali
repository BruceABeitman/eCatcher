.class public Lcom/umeng/analytics/a/l;
.super Lcom/umeng/analytics/a/n;
.source "Session.java"


# static fields
.field public static final f:Ljava/lang/String; = "session_id"


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/analytics/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/analytics/a/l;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/umeng/analytics/a/n;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "session_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/l;->e:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .registers 3

    iget-object v0, p0, Lcom/umeng/analytics/a/l;->e:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "Session id is not initialized"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0}, Lcom/umeng/analytics/a/n;->a()Z

    move-result v0

    goto :goto_e
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/umeng/analytics/a/n;->b(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "session_id"

    iget-object v1, p0, Lcom/umeng/analytics/a/l;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
