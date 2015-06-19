.class final Lnet/hockeyapp/android/d/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/d/i;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/d/i;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/d/i;)V
    .registers 2

    iput-object p1, p0, Lnet/hockeyapp/android/d/i$1;->a:Lnet/hockeyapp/android/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_10

    move-result v1

    if-le v0, v1, :cond_f

    :cond_f
    :goto_f
    return v2

    :catch_10
    move-exception v0

    goto :goto_f

    :catch_12
    move-exception v0

    goto :goto_f
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lnet/hockeyapp/android/d/i$1;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method
