.class Lcom/google/android/gms/tagmanager/ac;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final US:Ljava/lang/String;

.field private static final UT:Ljava/lang/String;

.field private static final UU:Ljava/lang/String;

.field private static final UV:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/a;->aj:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ac;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/b;->bt:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ac;->US:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/b;->dt:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ac;->UT:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/b;->cS:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ac;->UU:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/b;->dB:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ac;->UV:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    sget-object v0, Lcom/google/android/gms/tagmanager/ac;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/ac;->US:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public iy()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public u(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Lcom/google/android/gms/internal/d$a;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/ac;->US:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/google/android/gms/tagmanager/di;->ku()Lcom/google/android/gms/internal/d$a;

    move-result-object v1

    if-ne v0, v1, :cond_15

    :cond_10
    invoke-static {}, Lcom/google/android/gms/tagmanager/di;->ku()Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/tagmanager/ac;->UU:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_67

    const-string v0, "text"

    move-object v1, v0

    :goto_26
    sget-object v0, Lcom/google/android/gms/tagmanager/ac;->UV:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_6d

    const-string v0, "base16"

    move-object v2, v0

    :goto_33
    const/4 v3, 0x2

    sget-object v0, Lcom/google/android/gms/tagmanager/ac;->UT:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_4a

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->n(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x3

    move v3, v0

    :cond_4a
    :try_start_4a
    const-string v0, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
    :try_end_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_55} :catch_b4

    move-result-object v0

    :goto_56
    const-string v1, "base16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/j;->d([B)Ljava/lang/String;

    move-result-object v0

    :goto_62
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    goto :goto_14

    :cond_67
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_26

    :cond_6d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_33

    :cond_73
    :try_start_73
    const-string v0, "base16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/j;->aX(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_56

    :cond_80
    const-string v0, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_56

    :cond_8d
    const-string v0, "base64url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    or-int/lit8 v0, v3, 0x8

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_56

    :cond_9c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Encode: unknown input format: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/di;->ku()Lcom/google/android/gms/internal/d$a;
    :try_end_b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_73 .. :try_end_b1} :catch_b4

    move-result-object v0

    goto/16 :goto_14

    :catch_b4
    move-exception v0

    const-string v0, "Encode: invalid input:"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/di;->ku()Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    goto/16 :goto_14

    :cond_c0
    const-string v1, "base64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_cd
    const-string v1, "base64url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    or-int/lit8 v1, v3, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_dc
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encode: unknown output format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/di;->ku()Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    goto/16 :goto_14
.end method
