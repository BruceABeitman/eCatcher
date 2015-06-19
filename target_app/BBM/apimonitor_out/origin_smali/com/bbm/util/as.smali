.class final Lcom/bbm/util/as;
.super Ljava/lang/Object;
.source "ChannelUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)I
    .registers 3

    const-string v0, "dayOfWeek"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x7

    :cond_a
    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bbm/util/as;->a(Lorg/json/JSONObject;)I

    move-result v0

    invoke-static {p2}, Lcom/bbm/util/as;->a(Lorg/json/JSONObject;)I

    move-result v1

    if-ge v0, v1, :cond_10

    const/4 v0, -0x1

    :goto_f
    return v0

    :cond_10
    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    goto :goto_f

    :cond_14
    const/4 v0, 0x1

    goto :goto_f
.end method
