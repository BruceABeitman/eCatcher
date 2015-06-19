.class public Lcom/umeng/fb/a/a;
.super Lcom/umeng/common/net/s;
.source "DevReplyRequest.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/common/net/s;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/umeng/fb/a/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/fb/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/umeng/fb/a/a;->c:Ljava/lang/String;

    return-object v0
.end method
