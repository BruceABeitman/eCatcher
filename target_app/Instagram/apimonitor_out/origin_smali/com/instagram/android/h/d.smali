.class final Lcom/instagram/android/h/d;
.super Lcom/instagram/api/j/b;
.source "Hashtag.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/h/c;


# direct methods
.method public constructor <init>(Lcom/instagram/android/h/c;Landroid/content/Context;Landroid/support/v4/app/an;)V
    .registers 6

    iput-object p1, p0, Lcom/instagram/android/h/d;->a:Lcom/instagram/android/h/c;

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/h/d;->a:Lcom/instagram/android/h/c;

    const-string v2, "media_count"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/instagram/android/h/c;->a(Lcom/instagram/android/h/c;I)I

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/instagram/android/h/d;->a:Lcom/instagram/android/h/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/h/c;->a(Lcom/instagram/android/h/c;Ljava/lang/String;)Ljava/lang/String;

    :cond_2a
    iget-object v0, p0, Lcom/instagram/android/h/d;->a:Lcom/instagram/android/h/c;

    invoke-static {v0}, Lcom/instagram/android/h/c;->a(Lcom/instagram/android/h/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b_()Ljava/lang/String;
    .registers 5

    const-string v0, "tags/%s/info"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/h/d;->a:Lcom/instagram/android/h/c;

    invoke-static {v3}, Lcom/instagram/android/h/c;->a(Lcom/instagram/android/h/c;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
