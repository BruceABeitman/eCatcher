.class final Lcom/bbm/ui/activities/aaf;
.super Ljava/lang/Object;
.source "OpenInBbmActivity.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/OpenInBbmActivity;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aaf;->a:Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/activities/OpenInBbmActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/aaf;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 5

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "listAdd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "groupInvitation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "Handle groupInvitation"

    const-class v2, Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v1, v1, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;

    iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v1, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/aaf;->a:Lcom/bbm/ui/activities/OpenInBbmActivity;

    const-string v2, "elements"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Lcom/bbm/ui/activities/OpenInBbmActivity;Lorg/json/JSONArray;)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "groupQRCodeScannedResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlreadyAMember"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v0, v0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    invoke-interface {v0, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aaf;->a:Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->c(Lcom/bbm/ui/activities/OpenInBbmActivity;)V

    goto :goto_39
.end method
