.class Lcom/baidu/location/g;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x0

.field private static b:Z = false

.field private static final byte:I = 0x1

.field private static c:Landroid/os/Handler; = null

.field private static final case:I = 0x2

.field private static char:Z = false

.field private static d:I = 0x0

.field private static do:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static else:Z = false

.field private static f:Ljava/util/ArrayList; = null

.field private static for:Ljava/lang/String; = null

.field private static g:I = 0x0

.field private static goto:I = 0x0

.field private static h:Z = false

.field private static final i:I = 0x4

.field private static if:Landroid/net/Uri; = null

.field private static int:Landroid/os/Handler; = null

.field private static j:Z = false

.field private static k:Ljava/lang/String; = null

.field private static l:Ljava/lang/String; = null

.field private static long:Ljava/lang/String; = null

.field private static m:Landroid/os/Handler; = null

.field public static final n:I = 0x3

.field private static new:Ljava/lang/String;

.field private static try:I

.field private static void:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "baidu_location_service"

    sput-object v0, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const/16 v0, 0x800

    sput v0, Lcom/baidu/location/g;->d:I

    const/4 v0, 0x3

    sput v0, Lcom/baidu/location/g;->void:I

    sput-object v2, Lcom/baidu/location/g;->long:Ljava/lang/String;

    sput-boolean v1, Lcom/baidu/location/g;->j:Z

    sput-boolean v1, Lcom/baidu/location/g;->else:Z

    sput-boolean v1, Lcom/baidu/location/g;->b:Z

    sput-boolean v1, Lcom/baidu/location/g;->char:Z

    sput-boolean v1, Lcom/baidu/location/g;->h:Z

    sput-object v2, Lcom/baidu/location/g;->f:Ljava/util/ArrayList;

    const/16 v0, 0x2ee0

    sput v0, Lcom/baidu/location/g;->a:I

    sput-object v2, Lcom/baidu/location/g;->if:Landroid/net/Uri;

    const/4 v0, 0x4

    sput v0, Lcom/baidu/location/g;->try:I

    const-string/jumbo v0, "10.0.0.172"

    sput-object v0, Lcom/baidu/location/g;->k:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/g;->g:I

    sput v1, Lcom/baidu/location/g;->goto:I

    sput-object v2, Lcom/baidu/location/g;->int:Landroid/os/Handler;

    sput-object v2, Lcom/baidu/location/g;->m:Landroid/os/Handler;

    sput-object v2, Lcom/baidu/location/g;->c:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9c

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9c

    const-string/jumbo v3, "cmwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string/jumbo v3, "uniwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string/jumbo v3, "3gwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    :cond_2f
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    :goto_47
    sput-object v0, Lcom/baidu/location/g;->k:Ljava/lang/String;

    move v0, v1

    :cond_4a
    :goto_4a
    return v0

    :cond_4b
    const-string/jumbo v0, "10.0.0.172"

    goto :goto_47

    :cond_4f
    const-string/jumbo v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    :goto_70
    sput-object v0, Lcom/baidu/location/g;->k:Ljava/lang/String;

    move v0, v1

    goto :goto_4a

    :cond_74
    const-string/jumbo v0, "10.0.0.200"

    goto :goto_70

    :cond_78
    const-string/jumbo v3, "cmnet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string/jumbo v3, "uninet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string/jumbo v3, "ctnet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string/jumbo v3, "3gnet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    :cond_9c
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4a

    const-string/jumbo v3, "10.0.0.172"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    const-string/jumbo v0, "10.0.0.172"

    sput-object v0, Lcom/baidu/location/g;->k:Ljava/lang/String;

    move v0, v1

    goto :goto_4a

    :cond_bc
    const-string/jumbo v3, "10.0.0.200"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string/jumbo v0, "10.0.0.200"

    sput-object v0, Lcom/baidu/location/g;->k:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_4a
.end method

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    sput-object p0, Lcom/baidu/location/g;->m:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/location/g;->for:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/baidu/location/g;->long:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1

    sput-object p0, Lcom/baidu/location/g;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 3

    sget-boolean v0, Lcom/baidu/location/g;->char:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/baidu/location/Jni;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/g;->long:Ljava/lang/String;

    sput-boolean p1, Lcom/baidu/location/g;->h:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/g;->char:Z

    new-instance v0, Lcom/baidu/location/g$4;

    invoke-direct {v0}, Lcom/baidu/location/g$4;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/location/g$4;->start()V

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Lcom/baidu/location/g;->do(Landroid/content/Context;)I

    sget v1, Lcom/baidu/location/g;->try:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Landroid/os/Handler;)Z
    .registers 6

    const/4 v0, 0x1

    sget-boolean v1, Lcom/baidu/location/g;->j:Z

    if-nez v1, :cond_7

    if-nez p0, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    sput-boolean v0, Lcom/baidu/location/g;->j:Z

    sget-object v1, Lcom/baidu/location/g;->new:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bloc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/location/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/baidu/location/Jni;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/g;->l:Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/g;->new:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NUMBER_e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/location/g;->l:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/location/g;->new:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/location/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/baidu/location/g;->int:Landroid/os/Handler;

    sget-object v1, Lcom/baidu/location/g;->do:Ljava/lang/String;

    if-nez v1, :cond_72

    invoke-static {}, Lcom/baidu/location/k;->do()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/g;->do:Ljava/lang/String;

    :cond_72
    new-instance v1, Lcom/baidu/location/g$1;

    invoke-direct {v1}, Lcom/baidu/location/g$1;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/location/g$1;->start()V

    goto :goto_8
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/baidu/location/g;->j:Z

    return p0
.end method

.method static synthetic b()I
    .registers 1

    sget v0, Lcom/baidu/location/g;->a:I

    return v0
.end method

.method static synthetic byte()Z
    .registers 1

    sget-boolean v0, Lcom/baidu/location/g;->h:Z

    return v0
.end method

.method public static c()V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/location/f;->ac:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/config.dat"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v0, Lcom/baidu/location/j;->void:Z

    if-eqz v0, :cond_201

    move v0, v1

    :goto_1d
    sget-boolean v3, Lcom/baidu/location/j;->try:Z

    if-eqz v3, :cond_1fe

    move v3, v1

    :goto_22
    const-string/jumbo v5, "{\"ver\":\"%d\",\"gps\":\"%.1f|%.1f|%.1f|%.1f|%d|%d|%d|%d|%d|%d|%d\",\"up\":\"%.1f|%.1f|%.1f|%.1f\",\"wf\":\"%d|%.1f|%d|%.1f\",\"ab\":\"%.2f|%.2f|%d|%d\",\"gpc\":\"%d|%d|%d|%d|%d|%d\",\"zxd\":\"%.1f|%.1f|%d|%d|%d\"}"

    const/16 v6, 0x23

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/baidu/location/j;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    sget v2, Lcom/baidu/location/j;->am:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    sget v2, Lcom/baidu/location/j;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    sget v2, Lcom/baidu/location/j;->F:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x4

    sget v2, Lcom/baidu/location/j;->U:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x5

    sget v2, Lcom/baidu/location/j;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x6

    sget v2, Lcom/baidu/location/j;->K:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x7

    sget v2, Lcom/baidu/location/j;->X:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x8

    sget v2, Lcom/baidu/location/j;->int:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x9

    sget v2, Lcom/baidu/location/j;->for:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0xa

    sget v2, Lcom/baidu/location/j;->ad:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0xb

    sget v2, Lcom/baidu/location/j;->long:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0xc

    sget v2, Lcom/baidu/location/j;->D:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0xd

    sget v2, Lcom/baidu/location/j;->C:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0xe

    sget v2, Lcom/baidu/location/j;->ai:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0xf

    sget v2, Lcom/baidu/location/j;->Q:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x10

    sget v2, Lcom/baidu/location/j;->Y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x11

    sget v2, Lcom/baidu/location/j;->byte:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x12

    sget v2, Lcom/baidu/location/j;->S:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x13

    sget v2, Lcom/baidu/location/j;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x14

    sget v2, Lcom/baidu/location/j;->u:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x15

    sget v2, Lcom/baidu/location/j;->s:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x16

    sget v2, Lcom/baidu/location/j;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x17

    sget v2, Lcom/baidu/location/j;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/16 v0, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x1a

    sget v1, Lcom/baidu/location/j;->V:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x1b

    sget v1, Lcom/baidu/location/j;->L:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x1c

    sget-wide v1, Lcom/baidu/location/j;->ac:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x1d

    sget v1, Lcom/baidu/location/j;->af:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x1e

    sget v1, Lcom/baidu/location/j;->w:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x1f

    sget v1, Lcom/baidu/location/j;->W:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x20

    sget v1, Lcom/baidu/location/j;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x21

    sget v1, Lcom/baidu/location/j;->ae:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x22

    sget v1, Lcom/baidu/location/j;->goto:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/g;->new:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save2Config : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :try_start_19a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1db

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/baidu/location/f;->ac:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1b5

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1b5
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_1fb

    sget-object v2, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string/jumbo v3, "upload manager create file success"

    invoke-static {v2, v3}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_1db
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v3, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v1, v0

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1fb} :catch_1fc

    :cond_1fb
    :goto_1fb
    return-void

    :catch_1fc
    move-exception v0

    goto :goto_1fb

    :cond_1fe
    move v3, v2

    goto/16 :goto_22

    :cond_201
    move v0, v2

    goto/16 :goto_1d
.end method

.method static synthetic case()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/baidu/location/g;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic char()I
    .registers 1

    sget v0, Lcom/baidu/location/g;->goto:I

    return v0
.end method

.method static synthetic d()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/baidu/location/g;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static do(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/baidu/location/g;->if(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/baidu/location/g;->try:I

    sget v0, Lcom/baidu/location/g;->try:I

    return v0
.end method

.method static synthetic do(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    sput-object p0, Lcom/baidu/location/g;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic do()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/location/g;->long:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic do(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/baidu/location/g;->do:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic do(Z)Z
    .registers 1

    sput-boolean p0, Lcom/baidu/location/g;->b:Z

    return p0
.end method

.method static synthetic e()I
    .registers 1

    sget v0, Lcom/baidu/location/g;->try:I

    return v0
.end method

.method static synthetic else()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/location/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static f()V
    .registers 8

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    sget-boolean v0, Lcom/baidu/location/g;->b:Z

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    sput-boolean v6, Lcom/baidu/location/g;->b:Z

    sget-object v0, Lcom/baidu/location/g;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_39

    sput v1, Lcom/baidu/location/g;->goto:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/g;->f:Ljava/util/ArrayList;

    move v0, v1

    :cond_19
    sget v2, Lcom/baidu/location/g;->goto:I

    if-ge v2, v7, :cond_a1

    invoke-static {}, Lcom/baidu/location/k;->do()Ljava/lang/String;

    move-result-object v2

    :goto_21
    if-nez v2, :cond_64

    sget v4, Lcom/baidu/location/g;->goto:I

    if-eq v4, v6, :cond_64

    sput v7, Lcom/baidu/location/g;->goto:I

    :try_start_29
    sget v4, Lcom/baidu/location/j;->af:I

    if-nez v4, :cond_52

    invoke-static {}, Lcom/baidu/location/f;->new()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_37

    invoke-static {}, Lcom/baidu/location/b;->j()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_36} :catch_61

    move-result-object v2

    :cond_37
    :goto_37
    if-nez v2, :cond_67

    :cond_39
    :goto_39
    sget-object v0, Lcom/baidu/location/g;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_45

    sget-object v0, Lcom/baidu/location/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v6, :cond_8f

    :cond_45
    sput-object v3, Lcom/baidu/location/g;->f:Ljava/util/ArrayList;

    sput-boolean v1, Lcom/baidu/location/g;->b:Z

    sget-object v0, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string/jumbo v1, "No upload data..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_52
    :try_start_52
    sget v4, Lcom/baidu/location/j;->af:I

    if-ne v4, v6, :cond_37

    invoke-static {}, Lcom/baidu/location/b;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_37

    invoke-static {}, Lcom/baidu/location/f;->new()Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5f} :catch_61

    move-result-object v2

    goto :goto_37

    :catch_61
    move-exception v2

    move-object v2, v3

    goto :goto_37

    :cond_64
    sput v6, Lcom/baidu/location/g;->goto:I

    goto :goto_37

    :cond_67
    sget-object v4, Lcom/baidu/location/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Lcom/baidu/location/g;->new:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upload data size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/baidu/location/g;->d:I

    if-lt v0, v2, :cond_19

    goto :goto_39

    :cond_8f
    sget-object v0, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string/jumbo v1, "Beging upload data..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/location/g$3;

    invoke-direct {v0}, Lcom/baidu/location/g$3;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/location/g$3;->start()V

    goto/16 :goto_8

    :cond_a1
    move-object v2, v3

    goto/16 :goto_21
.end method

.method public static for()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_16
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_57

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/f;->ac:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_31
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_8c

    sget-object v0, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string/jumbo v2, "upload manager create file success"

    invoke-static {v0, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_57
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-wide v1, Lcom/baidu/location/j;->if:D

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    sget-wide v1, Lcom/baidu/location/j;->o:D

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    sget-boolean v1, Lcom/baidu/location/j;->ag:Z

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    sget-boolean v1, Lcom/baidu/location/j;->ag:Z

    if-eqz v1, :cond_89

    sget-object v1, Lcom/baidu/location/j;->j:[B

    if-eqz v1, :cond_89

    sget-object v1, Lcom/baidu/location/j;->j:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_89
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_8c} :catch_8d

    :cond_8c
    :goto_8c
    return-void

    :catch_8d
    move-exception v0

    goto :goto_8c
.end method

.method public static for(Landroid/os/Handler;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_16
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7d

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_46

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/baidu/location/g;->if(Ljava/lang/String;)Z

    :cond_46
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_7a

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v1

    sput-wide v1, Lcom/baidu/location/j;->if:D

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v1

    sput-wide v1, Lcom/baidu/location/j;->o:D

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    sput-boolean v1, Lcom/baidu/location/j;->ag:Z

    sget-boolean v1, Lcom/baidu/location/j;->ag:Z

    if-eqz v1, :cond_7a

    const/16 v1, 0x271

    new-array v1, v1, [B

    sput-object v1, Lcom/baidu/location/j;->j:[B

    sget-object v1, Lcom/baidu/location/j;->j:[B

    const/4 v2, 0x0

    const/16 v3, 0x271

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    :cond_7a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "&ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/baidu/location/j;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&usr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/j;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/j;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/g;->new:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/baidu/location/g;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/g;->a(Ljava/lang/String;Z)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_c5} :catch_c6

    :goto_c5
    return-void

    :catch_c6
    move-exception v0

    goto :goto_c5
.end method

.method public static for(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_5

    :goto_4
    return v1

    :cond_5
    invoke-static {p0}, Lcom/baidu/location/g;->do(Landroid/content/Context;)I

    sget v2, Lcom/baidu/location/g;->try:I

    if-ne v2, v0, :cond_e

    :goto_c
    move v1, v0

    goto :goto_4

    :cond_e
    move v0, v1

    goto :goto_c
.end method

.method static synthetic for(Z)Z
    .registers 1

    sput-boolean p0, Lcom/baidu/location/g;->char:Z

    return p0
.end method

.method static synthetic g()I
    .registers 1

    sget v0, Lcom/baidu/location/g;->g:I

    return v0
.end method

.method static synthetic goto()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/location/g;->do:Ljava/lang/String;

    return-object v0
.end method

.method private static if(Landroid/content/Context;)I
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v1, 0x0

    :try_start_3
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    move v0, v6

    :goto_f
    return v0

    :cond_10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_13} :catch_c9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_dd

    move-result-object v8

    if-eqz v8, :cond_1c

    :try_start_16
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1c
    move v0, v6

    goto :goto_f

    :cond_1e
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v7, :cond_26

    const/4 v0, 0x3

    goto :goto_f

    :cond_26
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/g;->if:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/g;->if:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_c1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c1

    const-string/jumbo v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_84

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    :goto_77
    sput-object v0, Lcom/baidu/location/g;->k:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/g;->g:I

    if-eqz v1, :cond_82

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_82
    move v0, v7

    goto :goto_f

    :cond_84
    const-string/jumbo v0, "10.0.0.200"

    goto :goto_77

    :cond_88
    if-eqz v0, :cond_c1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bd

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    :goto_af
    sput-object v0, Lcom/baidu/location/g;->k:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/g;->g:I

    if-eqz v1, :cond_ba

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ba
    move v0, v7

    goto/16 :goto_f

    :cond_bd
    const-string/jumbo v0, "10.0.0.172"

    goto :goto_af

    :cond_c1
    if-eqz v1, :cond_c6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c6
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_c6} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_c6} :catch_dd

    :cond_c6
    const/4 v0, 0x2

    goto/16 :goto_f

    :catch_c9
    move-exception v0

    move-object v0, v1

    :goto_cb
    :try_start_cb
    sget-object v1, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string/jumbo v2, "APN security..."

    invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/baidu/location/g;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d6} :catch_d9

    move-result v0

    goto/16 :goto_f

    :catch_d9
    move-exception v0

    move v0, v6

    goto/16 :goto_f

    :catch_dd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    goto/16 :goto_f

    :catch_e4
    move-exception v0

    move-object v0, v8

    goto :goto_cb
.end method

.method static synthetic if(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    sput-object p0, Lcom/baidu/location/g;->int:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic if()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/location/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static if(Ljava/lang/String;)Z
    .registers 10

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_495

    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "ver"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/baidu/location/j;->g:I

    if-le v3, v4, :cond_495

    sput v3, Lcom/baidu/location/j;->g:I

    const-string/jumbo v3, "gps"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_168

    sget-object v3, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string/jumbo v4, "has gps..."

    invoke-static {v3, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "gps"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/16 v5, 0xa

    if-le v4, v5, :cond_168

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_5b

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/j;->am:F

    :cond_5b
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_75

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/j;->c:F

    :cond_75
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_8f

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/j;->F:F

    :cond_8f
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_a9

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a9

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/j;->U:F

    :cond_a9
    const/4 v4, 0x4

    aget-object v4, v3, v4

    if-eqz v4, :cond_c3

    const/4 v4, 0x4

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c3

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/j;->p:I

    :cond_c3
    const/4 v4, 0x5

    aget-object v4, v3, v4

    if-eqz v4, :cond_dd

    const/4 v4, 0x5

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_dd

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/j;->K:I

    :cond_dd
    const/4 v4, 0x6

    aget-object v4, v3, v4

    if-eqz v4, :cond_f7

    const/4 v4, 0x6

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f7

    const/4 v4, 0x6

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/j;->X:I

    :cond_f7
    const/4 v4, 0x7

    aget-object v4, v3, v4

    if-eqz v4, :cond_111

    const/4 v4, 0x7

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_111

    const/4 v4, 0x7

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/j;->int:I

    :cond_111
    const/16 v4, 0x8

    aget-object v4, v3, v4

    if-eqz v4, :cond_12e

    const/16 v4, 0x8

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12e

    const/16 v4, 0x8

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/j;->for:I

    :cond_12e
    const/16 v4, 0x9

    aget-object v4, v3, v4

    if-eqz v4, :cond_14b

    const/16 v4, 0x9

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14b

    const/16 v4, 0x9

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/j;->ad:I

    :cond_14b
    const/16 v4, 0xa

    aget-object v4, v3, v4

    if-eqz v4, :cond_168

    const/16 v4, 0xa

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_168

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/j;->long:I

    :cond_168
    const-string/jumbo v3, "up"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f2

    sget-object v3, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string/jumbo v4, "has up..."

    invoke-static {v3, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "up"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v6, :cond_1f2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_1a4

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a4

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/j;->D:F

    :cond_1a4
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_1be

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1be

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/j;->C:F

    :cond_1be
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_1d8

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d8

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/j;->ai:F

    :cond_1d8
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_1f2

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f2

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/baidu/location/j;->Q:F

    :cond_1f2
    const-string/jumbo v3, "wf"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27c

    sget-object v3, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string/jumbo v4, "has wf..."

    invoke-static {v3, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "wf"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v6, :cond_27c

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_22e

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22e

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/j;->Y:I

    :cond_22e
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_248

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_248

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/j;->byte:F

    :cond_248
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_262

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_262

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/j;->S:I

    :cond_262
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_27c

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27c

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/baidu/location/j;->a:F

    :cond_27c
    const-string/jumbo v3, "ab"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_306

    sget-object v3, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string/jumbo v4, "has ab..."

    invoke-static {v3, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ab"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v6, :cond_306

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_2b8

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b8

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/j;->u:F

    :cond_2b8
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_2d2

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d2

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/j;->s:F

    :cond_2d2
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_2ec

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2ec

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/j;->r:I

    :cond_2ec
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_306

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_306

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/j;->q:I

    :cond_306
    const-string/jumbo v3, "zxd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a2

    const-string/jumbo v3, "zxd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v8, :cond_3a2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_33a

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33a

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/j;->w:F

    :cond_33a
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_354

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_354

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/j;->W:F

    :cond_354
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_36e

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36e

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/j;->v:I

    :cond_36e
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_388

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_388

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/j;->ae:I

    :cond_388
    const/4 v4, 0x4

    aget-object v4, v3, v4

    if-eqz v4, :cond_3a2

    const/4 v4, 0x4

    aget-object v4, v3, v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a2

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/j;->goto:I

    :cond_3a2
    const-string/jumbo v3, "gpc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_479

    sget-object v3, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string/jumbo v4, "has gpc..."

    invoke-static {v3, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "gpc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x5

    if-le v3, v4, :cond_479

    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-eqz v3, :cond_3e2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_482

    const/4 v3, 0x1

    sput-boolean v3, Lcom/baidu/location/j;->void:Z

    :cond_3e2
    :goto_3e2
    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_3ff

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3ff

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_48a

    const/4 v3, 0x1

    sput-boolean v3, Lcom/baidu/location/j;->try:Z

    :cond_3ff
    :goto_3ff
    const/4 v3, 0x2

    aget-object v3, v2, v3

    if-eqz v3, :cond_419

    const/4 v3, 0x2

    aget-object v3, v2, v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_419

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/j;->V:I

    :cond_419
    const/4 v3, 0x3

    aget-object v3, v2, v3

    if-eqz v3, :cond_433

    const/4 v3, 0x3

    aget-object v3, v2, v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_433

    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/j;->L:I

    :cond_433
    const/4 v3, 0x4

    aget-object v3, v2, v3

    if-eqz v3, :cond_45f

    const/4 v3, 0x4

    aget-object v3, v2, v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45f

    const/4 v3, 0x4

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_48f

    int-to-long v3, v3

    sput-wide v3, Lcom/baidu/location/j;->ac:J

    sget-wide v3, Lcom/baidu/location/j;->ac:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    mul-long/2addr v3, v5

    sput-wide v3, Lcom/baidu/location/j;->M:J

    sget-wide v3, Lcom/baidu/location/j;->M:J

    shr-long/2addr v3, v7

    sput-wide v3, Lcom/baidu/location/j;->al:J

    :cond_45f
    :goto_45f
    const/4 v3, 0x5

    aget-object v3, v2, v3

    if-eqz v3, :cond_479

    const/4 v3, 0x5

    aget-object v3, v2, v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_479

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/baidu/location/j;->af:I
    :try_end_479
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_479} :catch_487

    :cond_479
    :try_start_479
    sget-object v1, Lcom/baidu/location/g;->new:Ljava/lang/String;

    const-string/jumbo v2, "config change true..."

    invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_481
    .catch Ljava/lang/Exception; {:try_start_479 .. :try_end_481} :catch_493

    :goto_481
    return v0

    :cond_482
    const/4 v3, 0x0

    :try_start_483
    sput-boolean v3, Lcom/baidu/location/j;->void:Z

    goto/16 :goto_3e2

    :catch_487
    move-exception v0

    move v0, v1

    goto :goto_481

    :cond_48a
    const/4 v3, 0x0

    sput-boolean v3, Lcom/baidu/location/j;->try:Z

    goto/16 :goto_3ff

    :cond_48f
    const/4 v3, 0x0

    sput-boolean v3, Lcom/baidu/location/j;->G:Z
    :try_end_492
    .catch Ljava/lang/Exception; {:try_start_483 .. :try_end_492} :catch_487

    goto :goto_45f

    :catch_493
    move-exception v1

    goto :goto_481

    :cond_495
    move v0, v1

    goto :goto_481
.end method

.method public static if(Ljava/lang/String;Landroid/os/Handler;)Z
    .registers 6

    const/4 v0, 0x1

    sget-boolean v1, Lcom/baidu/location/g;->else:Z

    if-nez v1, :cond_7

    if-nez p0, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    sput-boolean v0, Lcom/baidu/location/g;->else:Z

    invoke-static {p0}, Lcom/baidu/location/Jni;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/g;->e:Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/g;->new:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bloc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/location/g;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/baidu/location/g;->m:Landroid/os/Handler;

    sget-object v1, Lcom/baidu/location/g;->for:Ljava/lang/String;

    if-nez v1, :cond_38

    invoke-static {}, Lcom/baidu/location/k;->do()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/g;->for:Ljava/lang/String;

    :cond_38
    new-instance v1, Lcom/baidu/location/g$2;

    invoke-direct {v1}, Lcom/baidu/location/g$2;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/location/g$2;->start()V

    goto :goto_8
.end method

.method static synthetic if(Z)Z
    .registers 1

    sput-boolean p0, Lcom/baidu/location/g;->else:Z

    return p0
.end method

.method static synthetic int()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/baidu/location/g;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic long()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/location/g;->new:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic new()I
    .registers 1

    sget v0, Lcom/baidu/location/g;->void:I

    return v0
.end method

.method static synthetic try()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/baidu/location/g;->int:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic void()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/location/g;->k:Ljava/lang/String;

    return-object v0
.end method
