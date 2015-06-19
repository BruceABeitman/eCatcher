.class final Lcom/instagram/user/b/c;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "LocalUserSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonSerializer",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    return-void
.end method

.method public static a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/a/h;)V
    .registers 4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    const-string v0, "id"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v0, "biography"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const-string v0, "blocking"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->v()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string v0, "external_url"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    const-string v0, "follower_count"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "following_count"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "follow_status"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "full_name"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_staff"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->h()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    const-string v0, "usertag_review_enabled"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->i()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    if-eqz v0, :cond_80

    const-string v0, "last_follow_status"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    const-string v0, "media_count"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "privacy_status"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "profile_pic_url"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "geo_media_count"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->y()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "usertags_count"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->z()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "is_verified"

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->A()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    return-void
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    check-cast p1, Lcom/instagram/user/c/a;

    invoke-static {p1, p2}, Lcom/instagram/user/b/c;->a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
