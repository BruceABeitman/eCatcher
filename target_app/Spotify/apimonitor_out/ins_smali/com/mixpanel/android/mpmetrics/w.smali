.class public final Lcom/mixpanel/android/mpmetrics/w;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/Survey;
.field private final b:I
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private final e:Ljava/util/List;
.method private constructor <init>(Lcom/mixpanel/android/mpmetrics/Survey;Lorg/json/JSONObject;)V
.registers 7
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/Survey;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "id"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/mixpanel/android/mpmetrics/w;->b:I
const-string v0, "type"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->c:Ljava/lang/String;
const-string v0, "prompt"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->d:Ljava/lang/String;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
const-string v1, "extra_data"
invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_5c
const-string v1, "extra_data"
invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "$choices"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_5c
const-string v0, "$choices"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
new-instance v1, Ljava/util/ArrayList;
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v0
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
:goto_4b
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_5b
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_4b
:cond_5b
move-object v0, v1
:cond_5c
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->e:Ljava/util/List;
invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/w;->d()Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
move-result-object v0
sget-object v1, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->b:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
if-ne v0, v1, :cond_8b
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_8b
new-instance v0, Lcom/mixpanel/android/mpmetrics/Survey$BadSurveyException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Question is multiple choice but has no answers:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/mixpanel/android/mpmetrics/Survey$BadSurveyException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8b
return-void
.end method
.method synthetic constructor <init>(Lcom/mixpanel/android/mpmetrics/Survey;Lorg/json/JSONObject;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/mixpanel/android/mpmetrics/w;-><init>(Lcom/mixpanel/android/mpmetrics/Survey;Lorg/json/JSONObject;)V
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/mixpanel/android/mpmetrics/w;->b:I
return v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->d:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/w;->e:Ljava/util/List;
return-object v0
.end method
.method public final d()Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
.registers 3
sget-object v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->b:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/w;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->b:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
:goto_10
return-object v0
:cond_11
sget-object v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->c:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/w;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
sget-object v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->c:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
goto :goto_10
:cond_22
sget-object v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->a:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
goto :goto_10
.end method