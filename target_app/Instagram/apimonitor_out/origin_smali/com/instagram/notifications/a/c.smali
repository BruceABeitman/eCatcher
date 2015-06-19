.class public final Lcom/instagram/notifications/a/c;
.super Ljava/lang/Object;
.source "IgNotification__JsonHelper.java"


# direct methods
.method private static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/notifications/a/b;
    .registers 4

    new-instance v0, Lcom/instagram/notifications/a/b;

    invoke-direct {v0}, Lcom/instagram/notifications/a/b;-><init>()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_12

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    const/4 v0, 0x0

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {v0, v1, p0}, Lcom/instagram/notifications/a/c;->a(Lcom/instagram/notifications/a/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_12
.end method

.method public static final a(Ljava/lang/String;)Lcom/instagram/notifications/a/b;
    .registers 2

    sget-object v0, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {v0}, Lcom/instagram/notifications/a/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/notifications/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lcom/instagram/notifications/a/b;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    sget-object v1, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/instagram/notifications/a/c;->a(Lcom/fasterxml/jackson/a/h;Lcom/instagram/notifications/a/b;)V

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->close()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/fasterxml/jackson/a/h;Lcom/instagram/notifications/a/b;)V
    .registers 4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    iget-object v0, p1, Lcom/instagram/notifications/a/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "pi"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_19

    const-string v0, "collapse_key"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_24

    const-string v0, "tt"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2f

    const-string v0, "m"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_3a

    const-string v0, "t"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_45

    const-string v0, "igo"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_50

    const-string v0, "ig"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_5b

    const-string v0, "a"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->j:Ljava/lang/String;

    if-eqz v0, :cond_66

    const-string v0, "u"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_71

    const-string v0, "sound"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_7c

    const-string v0, "i"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    return-void
.end method

.method private static a(Lcom/instagram/notifications/a/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "pi"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_16

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_16
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->i:Ljava/lang/String;

    move v0, v1

    :goto_19
    return v0

    :cond_1a
    const-string v2, "collapse_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_2e

    :goto_2a
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->e:Ljava/lang/String;

    move v0, v1

    goto :goto_19

    :cond_2e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_33
    const-string v2, "tt"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_47

    :goto_43
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->c:Ljava/lang/String;

    move v0, v1

    goto :goto_19

    :cond_47
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_4c
    const-string v2, "m"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_60

    :goto_5c
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->b:Ljava/lang/String;

    move v0, v1

    goto :goto_19

    :cond_60
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_5c

    :cond_65
    const-string v2, "t"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_79

    :goto_75
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->a:Ljava/lang/String;

    move v0, v1

    goto :goto_19

    :cond_79
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    :cond_7e
    const-string v2, "igo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_92

    :goto_8e
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->k:Ljava/lang/String;

    move v0, v1

    goto :goto_19

    :cond_92
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_8e

    :cond_97
    const-string v2, "ig"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_ac

    :goto_a7
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->d:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_19

    :cond_ac
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_a7

    :cond_b1
    const-string v2, "a"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_c6

    :goto_c1
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->g:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_19

    :cond_c6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_c1

    :cond_cb
    const-string v2, "u"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_e0

    :goto_db
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->j:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_19

    :cond_e0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_db

    :cond_e5
    const-string v2, "sound"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_fa

    :goto_f5
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->h:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_19

    :cond_fa
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_f5

    :cond_ff
    const-string v2, "i"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_119

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_114

    :goto_10f
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->f:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_19

    :cond_114
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_10f

    :cond_119
    const/4 v0, 0x0

    goto/16 :goto_19
.end method
