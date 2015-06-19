.class public Lcom/tencent/stat/a/k;
.super Lcom/tencent/stat/a/e;


# instance fields
.field private a:Lcom/tencent/stat/common/a;

.field private l:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/a/k;->l:Lorg/json/JSONObject;

    new-instance v0, Lcom/tencent/stat/common/a;

    invoke-direct {v0, p1}, Lcom/tencent/stat/common/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/stat/a/k;->a:Lcom/tencent/stat/common/a;

    iput-object p3, p0, Lcom/tencent/stat/a/k;->l:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/stat/a/f;
    .registers 2

    sget-object v0, Lcom/tencent/stat/a/f;->b:Lcom/tencent/stat/a/f;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 4

    iget-object v0, p0, Lcom/tencent/stat/a/e;->e:Lcom/tencent/stat/DeviceInfo;

    if-eqz v0, :cond_10

    const-string/jumbo v0, "ut"

    iget-object v1, p0, Lcom/tencent/stat/a/e;->e:Lcom/tencent/stat/DeviceInfo;

    invoke-virtual {v1}, Lcom/tencent/stat/DeviceInfo;->getUserType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_10
    iget-object v0, p0, Lcom/tencent/stat/a/k;->l:Lorg/json/JSONObject;

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "cfg"

    iget-object v1, p0, Lcom/tencent/stat/a/k;->l:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c
    iget-object v0, p0, Lcom/tencent/stat/a/k;->a:Lcom/tencent/stat/common/a;

    invoke-virtual {v0, p1}, Lcom/tencent/stat/common/a;->a(Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    return v0
.end method
