.class Lcom/glympse/android/lib/gn;
.super Lcom/glympse/android/lib/an;
.source "PersonAvatarProvider.java"


# instance fields
.field private qP:Lcom/glympse/android/hal/GContactsProvider;


# direct methods
.method public constructor <init>(Lcom/glympse/android/hal/GContactsProvider;)V
    .registers 3

    invoke-direct {p0}, Lcom/glympse/android/lib/an;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/gn;->qP:Lcom/glympse/android/hal/GContactsProvider;

    invoke-static {}, Lcom/glympse/android/lib/go;->personSchema()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/gn;->m(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public load(Lcom/glympse/android/lib/GUri;)Lcom/glympse/android/core/GCommon;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/glympse/android/lib/go;->personIdFromUri(Lcom/glympse/android/lib/GUri;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v3, v1

    if-nez v3, :cond_c

    :goto_b
    return-object v0

    :cond_c
    iget-object v3, p0, Lcom/glympse/android/lib/gn;->qP:Lcom/glympse/android/hal/GContactsProvider;

    invoke-interface {v3, v1, v2}, Lcom/glympse/android/hal/GContactsProvider;->loadAvatar(J)Lcom/glympse/android/core/GDrawable;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_b

    :catch_13
    move-exception v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_b
.end method
