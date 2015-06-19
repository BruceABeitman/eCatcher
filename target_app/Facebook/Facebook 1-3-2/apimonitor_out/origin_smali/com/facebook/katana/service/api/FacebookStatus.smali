.class public Lcom/facebook/katana/service/api/FacebookStatus;
.super Ljava/lang/Object;
.source "FacebookStatus.java"


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mTime:J

.field private mUser:Lcom/facebook/katana/service/api/FacebookUser;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/service/api/FacebookUser;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookStatus;->mUser:Lcom/facebook/katana/service/api/FacebookUser;

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookStatus;->mMessage:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/katana/service/api/FacebookStatus;->mTime:J

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v13, "null"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v11, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v10

    :goto_13
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v10, v0, :cond_41

    if-eqz v3, :cond_22

    const-string v0, "null"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v3, 0x0

    :cond_22
    if-eqz v4, :cond_2d

    const-string v0, "null"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v4, 0x0

    :cond_2d
    new-instance v0, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookStatus;->mUser:Lcom/facebook/katana/service/api/FacebookUser;

    if-eqz v9, :cond_ec

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ec

    iput-object v9, p0, Lcom/facebook/katana/service/api/FacebookStatus;->mMessage:Ljava/lang/String;

    :goto_3e
    iput-wide v11, p0, Lcom/facebook/katana/service/api/FacebookStatus;->mTime:J

    return-void

    :cond_41
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v10, v0, :cond_88

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    const-string v0, "first_name"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    :cond_55
    :goto_55
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v10

    goto :goto_13

    :cond_5a
    const-string v0, "last_name"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_55

    :cond_67
    const-string v0, "name"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_55

    :cond_74
    const-string v0, "pic_square"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_55

    const/4 v6, 0x0

    goto :goto_55

    :cond_88
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v10, v0, :cond_9d

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    const-string v0, "uid"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v1

    goto :goto_55

    :cond_9d
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v10, v0, :cond_e2

    if-eqz v7, :cond_55

    const-string v0, "status"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    :goto_ab
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v10, v0, :cond_55

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v10, v0, :cond_c8

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    const-string v0, "message"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v9

    :cond_c3
    :goto_c3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v10

    goto :goto_ab

    :cond_c8
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v10, v0, :cond_c3

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    const-string v0, "time"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v11

    goto :goto_c3

    :cond_dd
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V

    goto/16 :goto_55

    :cond_e2
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v10, v0, :cond_55

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_55

    :cond_ec
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookStatus;->mMessage:Ljava/lang/String;

    goto/16 :goto_3e
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookStatus;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookStatus;->mTime:J

    return-wide v0
.end method

.method public getUser()Lcom/facebook/katana/service/api/FacebookUser;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookStatus;->mUser:Lcom/facebook/katana/service/api/FacebookUser;

    return-object v0
.end method

.method public setUser(Lcom/facebook/katana/service/api/FacebookUser;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookStatus;->mUser:Lcom/facebook/katana/service/api/FacebookUser;

    return-void
.end method
