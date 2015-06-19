.class public final Lcom/bbm/b/q;
.super Lcom/bbm/b/w;
.source "AdsModel.java"


# static fields
.field public static a:Lcom/bbm/b/s;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/b/a;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/b/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/b/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bbm/f/a;Landroid/content/Context;Lcom/bbm/d/a/i;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/bbm/b/w;-><init>(Lcom/bbm/f/a;Lcom/bbm/d/a/i;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/b/q;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/b/q;->c:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/b/q;->d:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/bbm/b/q;->a:Lcom/bbm/b/s;

    if-nez v0, :cond_30

    new-instance v1, Lcom/bbm/b/s;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v1, p0, p2, v2, v0}, Lcom/bbm/b/s;-><init>(Lcom/bbm/b/q;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/telephony/TelephonyManager;)V

    sput-object v1, Lcom/bbm/b/q;->a:Lcom/bbm/b/s;

    :cond_30
    return-void
.end method


# virtual methods
.method public final a()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/b/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/b/q;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/w;

    if-nez v0, :cond_27

    new-instance v0, Lcom/bbm/b/d;

    invoke-direct {v0}, Lcom/bbm/b/d;-><init>()V

    sget-object v1, Lcom/bbm/b/c;->a:Lcom/bbm/b/c;

    invoke-virtual {v0, v1}, Lcom/bbm/b/d;->a(Lcom/bbm/b/c;)Lcom/bbm/b/d;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/b/d;->a(Ljava/lang/Boolean;)Lcom/bbm/b/d;

    invoke-super {p0, v0}, Lcom/bbm/b/w;->a(Lcom/bbm/b/d;)Lcom/bbm/j/w;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bbm/b/q;->d:Ljava/lang/ref/WeakReference;

    :cond_27
    return-object v0
.end method

.method public final bridge synthetic a(Lcom/bbm/b/d;)Lcom/bbm/j/w;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/b/w;->a(Lcom/bbm/b/d;)Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Lcom/bbm/util/bl;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/b/w;->a(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/bbm/b/ak;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/bbm/b/w;->a(Lcom/bbm/b/ak;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "global"

    invoke-static {v0, v1}, Lcom/bbm/b/v;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/b/ae;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bbm/b/w;->a(Lcom/bbm/b/ak;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    new-instance v1, Lcom/bbm/f/z;

    invoke-direct {v1, v0}, Lcom/bbm/f/z;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requesting list change for SponsoredPost "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": orderingIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :try_start_1f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "orderingIndex"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "ad"

    invoke-static {v1, v0}, Lcom/bbm/b/v;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/b/ae;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bbm/b/w;->a(Lcom/bbm/b/ak;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting list change for SponsoredPost "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_49
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Lcom/bbm/b/a;
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/b/w;->b(Ljava/lang/String;)Lcom/bbm/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/bbm/j/w;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/b/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/b/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/w;

    if-nez v0, :cond_27

    new-instance v0, Lcom/bbm/b/d;

    invoke-direct {v0}, Lcom/bbm/b/d;-><init>()V

    sget-object v1, Lcom/bbm/b/c;->b:Lcom/bbm/b/c;

    invoke-virtual {v0, v1}, Lcom/bbm/b/d;->a(Lcom/bbm/b/c;)Lcom/bbm/b/d;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/b/d;->a(Ljava/lang/Boolean;)Lcom/bbm/b/d;

    invoke-super {p0, v0}, Lcom/bbm/b/w;->a(Lcom/bbm/b/d;)Lcom/bbm/j/w;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bbm/b/q;->c:Ljava/lang/ref/WeakReference;

    :cond_27
    return-object v0
.end method

.method public final c()Lcom/bbm/j/r;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/b/a;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/b/q;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/r;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/bbm/b/r;

    invoke-virtual {p0}, Lcom/bbm/b/q;->b()Lcom/bbm/j/w;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbm/b/r;-><init>(Lcom/bbm/b/q;Lcom/bbm/j/r;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bbm/b/q;->b:Ljava/lang/ref/WeakReference;

    :cond_1a
    return-object v0
.end method
