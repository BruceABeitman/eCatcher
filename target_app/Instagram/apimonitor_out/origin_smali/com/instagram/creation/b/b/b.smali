.class public final Lcom/instagram/creation/b/b/b;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "ClipInfoSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/creation/b/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/instagram/creation/b/a/a;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Lcom/instagram/creation/b/a/a;Lcom/fasterxml/jackson/a/h;)V
    .registers 4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    const-string v0, "clipFilePath"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rotation"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    const-string v0, "camera_id"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    const-string v0, "pan"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->e()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;F)V

    const-string v0, "startMS"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    const-string v0, "endMS"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->g()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    const-string v0, "videoWidth"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->k()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    const-string v0, "videoHeight"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->l()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    return-void
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    check-cast p1, Lcom/instagram/creation/b/a/a;

    invoke-static {p1, p2}, Lcom/instagram/creation/b/b/b;->a(Lcom/instagram/creation/b/a/a;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
