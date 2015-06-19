.class Lcom/umeng/analytics/a/j;
.super Lorg/json/JSONObject;
.source "LogBody.java"


# instance fields
.field final synthetic a:Lcom/umeng/analytics/a/i;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/a/i;Lcom/umeng/analytics/a/g;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/umeng/analytics/a/j;->a:Lcom/umeng/analytics/a/i;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p2, p0}, Lcom/umeng/analytics/a/g;->b(Lorg/json/JSONObject;)V

    return-void
.end method
