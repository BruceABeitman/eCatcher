.class public final Lcom/bbm/l/b/a;
.super Ljava/lang/Object;
.source "EnabledCarrierInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Z

.field private b:Lcom/bbm/l/b/b;


# direct methods
.method private constructor <init>(ZLcom/bbm/l/b/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bbm/l/b/a;->a:Z

    iput-object p2, p0, Lcom/bbm/l/b/a;->b:Lcom/bbm/l/b/b;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bbm/l/b/a;
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    const-string v0, "store"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/l/b/b;->a(Ljava/lang/String;)Lcom/bbm/l/b/b;

    move-result-object v3

    const-string v0, "subenabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    move v1, v0

    :goto_1f
    new-instance v0, Lcom/bbm/l/b/a;

    invoke-direct {v0, v1, v3}, Lcom/bbm/l/b/a;-><init>(ZLcom/bbm/l/b/b;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_24} :catch_27

    :goto_24
    return-object v0

    :cond_25
    move v1, v2

    goto :goto_1f

    :catch_27
    move-exception v0

    const-string v0, "Parsing EnabledCarrierInfo failed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_24
.end method
