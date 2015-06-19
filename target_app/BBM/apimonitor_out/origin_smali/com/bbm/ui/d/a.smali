.class public abstract Lcom/bbm/ui/d/a;
.super Ljava/lang/Object;
.source "ChannelDeleteListener.java"

# interfaces
.implements Lcom/bbm/ui/d/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "listRemove"

    iput-object v0, p0, Lcom/bbm/ui/d/a;->a:Ljava/lang/String;

    const-string v0, "listChange"

    iput-object v0, p0, Lcom/bbm/ui/d/a;->b:Ljava/lang/String;

    const-string v0, "mostRecentError"

    iput-object v0, p0, Lcom/bbm/ui/d/a;->c:Ljava/lang/String;

    const-string v0, "GeneralFailure"

    iput-object v0, p0, Lcom/bbm/ui/d/a;->d:Ljava/lang/String;

    const-string v0, "AlreadyDeleted"

    iput-object v0, p0, Lcom/bbm/ui/d/a;->e:Ljava/lang/String;

    const-string v0, "ChannelListChanging"

    iput-object v0, p0, Lcom/bbm/ui/d/a;->f:Ljava/lang/String;

    const-string v0, "AuthorizationFailure"

    iput-object v0, p0, Lcom/bbm/ui/d/a;->g:Ljava/lang/String;

    const-string v0, "NetworkFailure"

    iput-object v0, p0, Lcom/bbm/ui/d/a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 4

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v1, "listRemove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/bbm/ui/d/a;->a()V

    :cond_d
    :goto_d
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;

    iget-object v1, p0, Lcom/bbm/ui/d/a;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/bbm/ui/d/d;->a(Ljava/lang/Object;Lcom/bbm/ui/d/c;)V

    return-void

    :cond_19
    const-string v1, "listChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :try_start_21
    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mostRecentError"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_33} :catch_43

    move-result-object v0

    :goto_34
    const-string v1, "AlreadyDeleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    const v0, 0x7f0e0190

    :goto_3f
    invoke-virtual {p0, v0}, Lcom/bbm/ui/d/a;->a(I)V

    goto :goto_d

    :catch_43
    move-exception v0

    const-string v0, ""

    goto :goto_34

    :cond_47
    const-string v1, "NetworkFailure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const v0, 0x7f0e031d

    goto :goto_3f

    :cond_53
    const v0, 0x7f0e0191

    goto :goto_3f
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iput-object p2, p0, Lcom/bbm/ui/d/a;->i:Ljava/lang/Object;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;

    invoke-virtual {v0, p1, p0, p2}, Lcom/bbm/ui/d/d;->a(Ljava/lang/String;Lcom/bbm/ui/d/c;Ljava/lang/Object;)V

    return-void
.end method
