.class final Lcom/bbm/d/b;
.super Lcom/bbm/j/a;
.source "BbmdsModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/d/a;


# direct methods
.method constructor <init>(Lcom/bbm/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/b;->a:Lcom/bbm/d/a;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/bbm/d/b;->a:Lcom/bbm/d/a;

    const-string v1, "localUri"

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;

    const-string v1, "value"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
