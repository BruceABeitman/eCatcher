.class public Lcom/umeng/fb/a/c;
.super Lcom/umeng/common/net/s;
.source "FbRequest.java"


# instance fields
.field public a:Ljava/lang/String;

.field public e:Lorg/json/JSONObject;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/common/net/s;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/umeng/fb/a/c;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/umeng/common/net/s;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/umeng/fb/a/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/umeng/fb/a/c;->e:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/umeng/fb/a/c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/umeng/fb/a/c;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/fb/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/umeng/fb/a/c;->b:Ljava/lang/String;

    return-object v0
.end method