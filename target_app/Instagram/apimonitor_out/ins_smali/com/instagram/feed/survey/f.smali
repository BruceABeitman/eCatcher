.class public final Lcom/instagram/feed/survey/f;
.super Ljava/lang/Object;
.source "SurveyFactory.java"
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/survey/b;
.registers 6
new-instance v0, Lcom/instagram/feed/survey/b;
invoke-direct {v0}, Lcom/instagram/feed/survey/b;-><init>()V
:goto_5
:cond_5
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_e9
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v1
const-string v2, "possible_answers"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6b
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:goto_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v2, v3, :cond_67
new-instance v2, Lcom/instagram/feed/survey/c;
invoke-direct {v2}, Lcom/instagram/feed/survey/c;-><init>()V
:goto_2b
:cond_2b
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v3
sget-object v4, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v3, v4, :cond_63
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v3
const-string v4, "value"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_4a
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/instagram/feed/survey/c;->a(Ljava/lang/String;)V
goto :goto_2b
:cond_4a
const-string v4, "title"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_5d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/instagram/feed/survey/c;->b(Ljava/lang/String;)V
goto :goto_2b
:cond_5d
if-eqz v3, :cond_2b
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_2b
:cond_63
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1e
:cond_67
invoke-virtual {v0, v1}, Lcom/instagram/feed/survey/b;->a(Ljava/util/List;)V
goto :goto_5
:cond_6b
const-string v2, "subtitle"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_7e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/survey/b;->d(Ljava/lang/String;)V
goto :goto_5
:cond_7e
const-string v2, "title"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_92
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/survey/b;->c(Ljava/lang/String;)V
goto/16 :goto_5
:cond_92
const-string v2, "survey_type"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_a6
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/survey/b;->b(Ljava/lang/String;)V
goto/16 :goto_5
:cond_a6
const-string v2, "survey_id"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_ba
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/survey/b;->a(Ljava/lang/String;)V
goto/16 :goto_5
:cond_ba
const-string v2, "tracking_token"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_ce
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/survey/b;->e(Ljava/lang/String;)V
goto/16 :goto_5
:cond_ce
const-string v2, "show_primer"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_e2
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/survey/b;->a(Z)V
goto/16 :goto_5
:cond_e2
if-eqz v1, :cond_5
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto/16 :goto_5
:cond_e9
return-object v0
.end method