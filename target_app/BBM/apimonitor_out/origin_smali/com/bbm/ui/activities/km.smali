.class final Lcom/bbm/ui/activities/km;
.super Ljava/lang/Object;
.source "GlympseViewerActivity.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GlympseViewerActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GlympseViewerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/km;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 6

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v3, "listChunk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/bbm/ui/activities/km;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;

    const-string v2, "elements"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bbm/ui/activities/GlympseViewerActivity;->a(Lcom/bbm/ui/activities/GlympseViewerActivity;Lorg/json/JSONArray;)V

    const-string v1, "last"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/bbm/ui/activities/km;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->b(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    :cond_3a
    return-void
.end method
