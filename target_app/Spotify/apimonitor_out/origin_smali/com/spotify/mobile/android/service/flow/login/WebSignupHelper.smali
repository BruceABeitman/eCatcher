.class public final Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/util/be;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/spotify/mobile/android/service/flow/login/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/flow/login/ac;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0f0451

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->a:Lcom/spotify/mobile/android/util/be;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v1, "key"

    const-string v2, "142b583129b2df829de3656f9eb484e6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->c:Lcom/spotify/mobile/android/service/flow/login/ac;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;)Lcom/spotify/mobile/android/service/flow/login/ac;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->c:Lcom/spotify/mobile/android/service/flow/login/ac;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;Lorg/json/JSONObject;)V
    .registers 7

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "errors"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_2f
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->c:Lcom/spotify/mobile/android/service/flow/login/ac;

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/ac;->a(ILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v1, "iagree"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v1, "gender"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v1, "creation_flow"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v1, "creation_point"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Calendar;)V
    .registers 7

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v4, "birth_day"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v3, "birth_month"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v1, "birth_year"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->a:Lcom/spotify/mobile/android/util/be;

    const-string v1, ""

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    new-instance v3, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$1;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/be;->b(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bh;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v1, "password_repeat"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v1, "postal_code"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b:Ljava/util/HashMap;

    const-string v1, "anonymous_user"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
