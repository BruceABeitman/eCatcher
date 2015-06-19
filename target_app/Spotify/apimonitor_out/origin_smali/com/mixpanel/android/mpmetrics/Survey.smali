.class public final Lcom/mixpanel/android/mpmetrics/Survey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:I

.field private final c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mixpanel/android/mpmetrics/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_4
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/Survey;->a:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mixpanel/android/mpmetrics/Survey;->b:I

    const-string v1, "collections"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mixpanel/android/mpmetrics/Survey;->c:I

    const-string v1, "questions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3e

    new-instance v0, Lcom/mixpanel/android/mpmetrics/Survey$BadSurveyException;

    const-string v1, "Survey has no questions."

    invoke-direct {v0, v1}, Lcom/mixpanel/android/mpmetrics/Survey$BadSurveyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_35} :catch_35

    :catch_35
    move-exception v0

    new-instance v1, Lcom/mixpanel/android/mpmetrics/Survey$BadSurveyException;

    const-string v2, "Survey JSON was unexpected or bad"

    invoke-direct {v1, v2, v0}, Lcom/mixpanel/android/mpmetrics/Survey$BadSurveyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3e
    :try_start_3e
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_47
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5d

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/mixpanel/android/mpmetrics/w;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v3, v5}, Lcom/mixpanel/android/mpmetrics/w;-><init>(Lcom/mixpanel/android/mpmetrics/Survey;Lorg/json/JSONObject;B)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_5d
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/Survey;->d:Ljava/util/List;
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_63} :catch_35

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Survey;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/mixpanel/android/mpmetrics/Survey;->b:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/mixpanel/android/mpmetrics/Survey;->c:I

    return v0
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mixpanel/android/mpmetrics/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Survey;->d:Ljava/util/List;

    return-object v0
.end method
