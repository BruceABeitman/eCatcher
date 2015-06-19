.class public final Lcom/spotify/mobile/android/util/ClientEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private final b:Lcom/spotify/mobile/android/util/ClientEvent$Event;

.field private final c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

.field private final d:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/util/ClientEvent;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public constructor <init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    return-void
.end method

.method public constructor <init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ClientEvent;->b:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ClientEvent;->d:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ClientEvent;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
    .registers 2

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/spotify/mobile/android/util/ClientEvent;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/spotify/mobile/android/util/ClientEvent;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "Don\'t pass in a null node!"

    invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v1

    :goto_e
    const-string v3, "Don\'t use NullNode to sneak a null!"

    invoke-static {v0, v3}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->isMissingNode()Z

    move-result v0

    if-nez v0, :cond_2c

    :goto_19
    const-string v0, "Don\'t use MissingNode to sneak a null!"

    invoke-static {v1, v0}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ClientEvent;->d:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    return-object p0

    :cond_2a
    move v0, v2

    goto :goto_e

    :cond_2c
    move v1, v2

    goto :goto_19
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
    .registers 4

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/node/TextNode;->valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ClientEvent;->b:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientEvent$Event;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ClientEvent;->d:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_7
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-string v0, "Could not serialize extra data"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    const-string v0, "{}"

    goto :goto_8
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ClientEvent;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/spotify/mobile/android/util/ClientEvent;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v1, p1, Lcom/spotify/mobile/android/util/ClientEvent;->b:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/ClientEvent;->b:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ClientEvent;->d:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v1, p1, Lcom/spotify/mobile/android/util/ClientEvent;->d:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ClientEvent;->b:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientEvent$Event;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1f
    xor-int/2addr v0, v1

    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ClientEvent;->b:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    if-eq v1, v2, :cond_1a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v1, p0, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ClientEvent;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ClientEvent;->d:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
