.class public Lcom/umeng/fb/a/d;
.super Lcom/umeng/common/net/t;
.source "FbResponse.java"


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/common/net/t;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/umeng/fb/a/d;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/umeng/fb/a/d;->a:Lorg/json/JSONObject;

    return-object v0
.end method
