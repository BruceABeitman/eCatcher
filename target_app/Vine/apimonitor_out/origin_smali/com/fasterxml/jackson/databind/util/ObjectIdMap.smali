.class public Lcom/fasterxml/jackson/databind/util/ObjectIdMap;
.super Ljava/util/IdentityHashMap;
.source "ObjectIdMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method public findId(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/ObjectIdMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public insertId(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/ObjectIdMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
