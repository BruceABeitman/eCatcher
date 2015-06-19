.class public final Lcom/instagram/creation/b/b/l;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "PendingRecipientSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/creation/b/a/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/instagram/creation/b/a/f;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Lcom/instagram/creation/b/a/f;Lcom/fasterxml/jackson/a/h;)V
    .registers 4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    const-string v0, "user_id"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "profilepic_url"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    return-void
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    check-cast p1, Lcom/instagram/creation/b/a/f;

    invoke-static {p1, p2}, Lcom/instagram/creation/b/b/l;->a(Lcom/instagram/creation/b/a/f;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
