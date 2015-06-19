.class public Lcom/spotify/mobile/android/service/flow/logic/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# static fields
.field private static final b:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/spotify/mobile/android/util/cx;

.field private g:Lcom/spotify/mobile/android/ui/actions/a;

.field private h:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "anonymous_test"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/flow/logic/c;->b:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "anonymous_username"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/flow/logic/c;->c:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "anonymous_hashed_username"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/flow/logic/c;->d:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "anonymous_test_exited"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/flow/logic/c;->e:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "anonymous_login_enabled"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/flow/logic/c;->f:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/actions/a;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->a:Lcom/spotify/mobile/android/util/cx;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->g:Lcom/spotify/mobile/android/ui/actions/a;

    :try_start_e
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->h:Ljava/security/MessageDigest;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    const-string v1, "Exception occurred when SHA-256 hashing: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method

.method private a(Lcom/spotify/mobile/android/util/ClientEvent;)V
    .registers 4

    const-string v0, "anonymous_hashed_username"

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v0, "anonymous_test_group"

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/c;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->g:Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->bh:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v0, v1, p1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

.method private j()Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->a:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/c;->e:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v0

    return v0
.end method

.method private k()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->a:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/c;->e:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->a:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/c;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;I)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 10

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->a:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/c;->c:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->h:Ljava/security/MessageDigest;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->h:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->a:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/service/flow/logic/c;->d:Lcom/spotify/mobile/android/util/cz;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->h:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_33
    array-length v5, v3

    if-ge v0, v5, :cond_50

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4a

    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_50
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    :cond_5b
    return-void
.end method

.method public final a()Z
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->a:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/c;->c:Lcom/spotify/mobile/android/util/cz;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->a:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/c;->d:Lcom/spotify/mobile/android/util/cz;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->a:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/c;->b:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;I)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->a:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/c;->f:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->a:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/c;->f:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/c;->a:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/c;->c:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/c;->d:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/flow/logic/c;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    return-void
.end method

.method public final g()V
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ax:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->a(Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

.method public final h()V
    .registers 4

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/logic/c;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ay:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->a(Lcom/spotify/mobile/android/util/ClientEvent;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/logic/c;->k()V

    goto :goto_6
.end method

.method public final i()V
    .registers 4

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/logic/c;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->az:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->a(Lcom/spotify/mobile/android/util/ClientEvent;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/logic/c;->k()V

    goto :goto_6
.end method
