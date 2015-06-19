.class Lcom/glympse/android/lib/fm;
.super Lcom/glympse/android/lib/json/JsonHandlerBasic;
.source "LinkedAccountParser.java"


# instance fields
.field private hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

.field private he:Ljava/lang/String;

.field private mQ:I

.field private pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;ILcom/glympse/android/lib/GLinkedAccountPrivate;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonHandlerBasic;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/fm;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iput p2, p0, Lcom/glympse/android/lib/fm;->mQ:I

    iput-object p3, p0, Lcom/glympse/android/lib/fm;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    return-void
.end method


# virtual methods
.method public endObject(I)Z
    .registers 3

    iget v0, p0, Lcom/glympse/android/lib/fm;->mQ:I

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Lcom/glympse/android/lib/fm;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
    .registers 7

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/glympse/android/lib/fm;->mQ:I

    if-ne v0, p1, :cond_1d

    iget-object v0, p0, Lcom/glympse/android/lib/fm;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/glympse/android/lib/fm;->he:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/glympse/android/lib/fm;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setType(Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return v2

    :cond_1e
    iget-object v0, p0, Lcom/glympse/android/lib/fm;->he:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/glympse/android/lib/fm;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setId(Ljava/lang/String;)V

    goto :goto_1d

    :cond_32
    iget-object v0, p0, Lcom/glympse/android/lib/fm;->he:Ljava/lang/String;

    const-string v1, "username"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/glympse/android/lib/fm;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setUserName(Ljava/lang/String;)V

    goto :goto_1d

    :cond_46
    iget-object v0, p0, Lcom/glympse/android/lib/fm;->he:Ljava/lang/String;

    const-string v1, "displayname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/glympse/android/lib/fm;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setDisplayName(Ljava/lang/String;)V

    goto :goto_1d

    :cond_5a
    iget-object v0, p0, Lcom/glympse/android/lib/fm;->he:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    iget-object v0, p0, Lcom/glympse/android/lib/fm;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setStatus(I)V

    goto :goto_1d

    :cond_76
    const-string v1, "refresh_required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/glympse/android/lib/fm;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setStatus(I)V

    goto :goto_1d

    :cond_84
    iget-object v0, p0, Lcom/glympse/android/lib/fm;->he:Ljava/lang/String;

    const-string v1, "auth_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getBool()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/glympse/android/lib/fm;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setLogin(I)V

    goto :goto_1d

    :cond_9a
    iget-object v0, p0, Lcom/glympse/android/lib/fm;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setLogin(I)V

    goto/16 :goto_1d
.end method

.method public startObject(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public startPair(ILjava/lang/String;)Z
    .registers 4

    iput-object p2, p0, Lcom/glympse/android/lib/fm;->he:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method
