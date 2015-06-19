.class Lcom/google/android/gms/tagmanager/ce;
.super Ljava/lang/Object;


# static fields
.field private static VS:Lcom/google/android/gms/tagmanager/ce;


# instance fields
.field private volatile TM:Ljava/lang/String;

.field private volatile VT:Lcom/google/android/gms/tagmanager/ce$a;

.field private volatile VU:Ljava/lang/String;

.field private volatile VV:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ce;->clear()V

    return-void
.end method

.method private bt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private g(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gtm_debug=x"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static ju()Lcom/google/android/gms/tagmanager/ce;
    .registers 2

    const-class v1, Lcom/google/android/gms/tagmanager/ce;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/tagmanager/ce;->VS:Lcom/google/android/gms/tagmanager/ce;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/tagmanager/ce;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ce;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/ce;->VS:Lcom/google/android/gms/tagmanager/ce;

    :cond_e
    sget-object v0, Lcom/google/android/gms/tagmanager/ce;->VS:Lcom/google/android/gms/tagmanager/ce;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method clear()V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/tagmanager/ce$a;->VW:Lcom/google/android/gms/tagmanager/ce$a;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ce;->VT:Lcom/google/android/gms/tagmanager/ce$a;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->VU:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->TM:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->VV:Ljava/lang/String;

    return-void
.end method

.method declared-synchronized f(Landroid/net/Uri;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_6a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_c} :catch_62

    move-result-object v2

    :try_start_d
    const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Container preview url: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V

    const-string v1, ".*?&gtm_debug=x$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    sget-object v1, Lcom/google/android/gms/tagmanager/ce$a;->VY:Lcom/google/android/gms/tagmanager/ce$a;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->VT:Lcom/google/android/gms/tagmanager/ce$a;

    :goto_33
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/ce;->g(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->VV:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->VT:Lcom/google/android/gms/tagmanager/ce$a;

    sget-object v2, Lcom/google/android/gms/tagmanager/ce$a;->VX:Lcom/google/android/gms/tagmanager/ce$a;

    if-eq v1, v2, :cond_45

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->VT:Lcom/google/android/gms/tagmanager/ce$a;

    sget-object v2, Lcom/google/android/gms/tagmanager/ce$a;->VY:Lcom/google/android/gms/tagmanager/ce$a;

    if-ne v1, v2, :cond_58

    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/r?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ce;->VV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->VU:Ljava/lang/String;

    :cond_58
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->VV:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/ce;->bt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->TM:Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_d .. :try_end_60} :catchall_6a

    :goto_60
    monitor-exit p0

    return v0

    :catch_62
    move-exception v0

    move v0, v1

    goto :goto_60

    :cond_65
    :try_start_65
    sget-object v1, Lcom/google/android/gms/tagmanager/ce$a;->VX:Lcom/google/android/gms/tagmanager/ce$a;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->VT:Lcom/google/android/gms/tagmanager/ce$a;
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_6a

    goto :goto_33

    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6d
    :try_start_6d
    const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/ce;->bt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/ce;->TM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exit preview mode for container: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ce;->TM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/ce$a;->VW:Lcom/google/android/gms/tagmanager/ce$a;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->VT:Lcom/google/android/gms/tagmanager/ce$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/ce;->VU:Ljava/lang/String;

    goto :goto_60

    :cond_a1
    move v0, v1

    goto :goto_60

    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Invalid preview uri: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_6d .. :try_end_b5} :catchall_6a

    move v0, v1

    goto :goto_60
.end method

.method getContainerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ce;->TM:Ljava/lang/String;

    return-object v0
.end method

.method jv()Lcom/google/android/gms/tagmanager/ce$a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ce;->VT:Lcom/google/android/gms/tagmanager/ce$a;

    return-object v0
.end method

.method jw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ce;->VU:Ljava/lang/String;

    return-object v0
.end method
