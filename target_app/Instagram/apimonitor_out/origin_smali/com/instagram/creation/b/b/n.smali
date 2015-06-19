.class public final Lcom/instagram/creation/b/b/n;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "PeopleTagPendingMediaSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/model/people/PeopleTag;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/instagram/model/people/PeopleTag;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Lcom/instagram/model/people/PeopleTag;Lcom/fasterxml/jackson/a/h;)V
    .registers 5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    const-string v0, "user_id"

    invoke-virtual {p0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V

    const-string v0, "username"

    invoke-virtual {p0}, Lcom/instagram/model/people/PeopleTag;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/model/people/PeopleTag;->b()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_34

    const-string v1, "position"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(F)V

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(F)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    :cond_34
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    return-void
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    check-cast p1, Lcom/instagram/model/people/PeopleTag;

    invoke-static {p1, p2}, Lcom/instagram/creation/b/b/n;->a(Lcom/instagram/model/people/PeopleTag;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
