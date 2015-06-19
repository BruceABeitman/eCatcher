.class final Lcom/instagram/service/b/b;
.super Lcom/instagram/service/b/d;
.source "CustomObjectMapper.java"


# instance fields
.field final synthetic a:Lcom/instagram/service/b/a;


# direct methods
.method public constructor <init>(Lcom/instagram/service/b/a;Lcom/instagram/service/b/a;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/service/b/b;->a:Lcom/instagram/service/b/a;

    invoke-direct {p0, p3, p2}, Lcom/instagram/service/b/d;-><init>(Ljava/lang/Class;Lcom/instagram/service/b/a;)V

    return-void
.end method


# virtual methods
.method public final createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-static {p2}, Lcom/instagram/venue/a/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/venue/model/Venue;

    move-result-object v0

    return-object v0
.end method
