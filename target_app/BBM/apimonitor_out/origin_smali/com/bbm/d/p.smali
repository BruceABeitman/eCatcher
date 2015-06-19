.class final Lcom/bbm/d/p;
.super Lcom/bbm/j/a;
.source "BbmdsModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Lcom/bbm/util/ay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/d/a;


# direct methods
.method constructor <init>(Lcom/bbm/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/p;->a:Lcom/bbm/d/a;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/p;->a:Lcom/bbm/d/a;

    const-string v1, "channelsState"

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/ay;->a(Ljava/lang/String;)Lcom/bbm/util/ay;

    move-result-object v0

    return-object v0
.end method
