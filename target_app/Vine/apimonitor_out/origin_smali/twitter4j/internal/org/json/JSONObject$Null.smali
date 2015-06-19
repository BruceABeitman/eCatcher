.class final Ltwitter4j/internal/org/json/JSONObject$Null;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/internal/org/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Null"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltwitter4j/internal/org/json/JSONObject$1;)V
    .registers 2

    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONObject$Null;-><init>()V

    return-void
.end method


# virtual methods
.method protected final clone()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_4

    if-ne p1, p0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "null"

    return-object v0
.end method
