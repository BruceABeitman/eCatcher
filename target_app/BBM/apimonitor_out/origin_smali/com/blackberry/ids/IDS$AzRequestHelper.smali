.class interface abstract Lcom/blackberry/ids/IDS$AzRequestHelper;
.super Ljava/lang/Object;
.source "IDS.java"


# virtual methods
.method public abstract addParams(Lcom/blackberry/ids/PostBody;)Lcom/blackberry/ids/PostBody;
.end method

.method public abstract buildUri(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
.end method

.method public abstract failure(IILjava/lang/String;I)V
.end method

.method public abstract success(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
