.class public final Lcom/bbm/util/a/j;
.super Ljava/lang/Object;
.source "GlympseUtil.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "bbmpim://conversation"

    sput-object v0, Lcom/bbm/util/a/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/bbm/d/gm;)Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/bbm/d/gm;->d:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;

    sget-object v2, Lcom/bbm/d/gn;->e:Lcom/bbm/d/gn;

    if-ne v0, v2, :cond_2b

    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bbm/d/gm;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_15} :catch_2a

    :goto_15
    const-string v1, "Provider"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Glympse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_29
    return-object v0

    :catch_2a
    move-exception v0

    :cond_2b
    move-object v0, v1

    goto :goto_15

    :cond_2d
    const-string v0, ""

    goto :goto_29
.end method

.method public static a(Lcom/bbm/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Provider"

    const-string v2, "Glympse"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/bbm/d/do;->b:Lcom/bbm/d/do;

    invoke-static {p2, p1, v1}, Lcom/bbm/d/z;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/d/do;)Lcom/bbm/d/dn;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/dn;->a(Ljava/lang/String;)Lcom/bbm/d/dn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/dn;->b(Lorg/json/JSONObject;)Lcom/bbm/d/dn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_28} :catch_29

    :goto_28
    return-void

    :catch_29
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/o;->b:Lcom/bbm/util/a/a;

    invoke-virtual {v0, p0}, Lcom/bbm/util/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0, p0}, Lcom/bbm/util/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v0, v1}, Lcom/bbm/util/a/a;->c(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-interface {v2}, Lcom/glympse/android/api/GTicket;->expire()Z

    if-eqz p0, :cond_23

    if-nez v1, :cond_24

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v2, v0, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v2, p0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    if-eqz v2, :cond_23

    const-string v3, "outgoing"

    invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-interface {v3}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "outgoing"

    invoke-static {v1}, Lcom/glympse/android/core/CoreFactory;->createString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V

    const-string v1, "incoming"

    invoke-static {v1}, Lcom/glympse/android/core/CoreFactory;->createString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, v0, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v1, p0}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V

    :cond_60
    iget-object v1, v0, Lcom/bbm/util/a/a;->b:Lcom/glympse/android/core/GStorageUnit;

    iget-object v0, v0, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v1, v0}, Lcom/glympse/android/core/GStorageUnit;->save(Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_23
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bbm/util/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
