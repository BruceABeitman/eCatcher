.class public Lcom/twidroid/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Z = false

.field public static final B:Z = true

.field public static final C:J = 0x6ddd00L

.field public static D:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final E:I = 0x0

.field public static final F:Z = false

.field public static final G:Ljava/lang/String; = "http://api.tweetmixx.com"

.field public static final H:Ljava/lang/String; = "https://sapi.postup.com/users/v1"

.field public static final I:Ljava/lang/String; = "http://ubersocial.uservoice.com"

.field public static final J:Ljava/lang/String; = "http://support.ubersocial.com"

.field public static final K:Ljava/lang/String; = "http://bit.ly/1nbk4Iw"

.field public static final L:Ljava/lang/String; = "http://bit.ly/1eUZcRo"

.field public static final M:Ljava/lang/String; = "http://www.amazon.com/gp/mas/dl/android?p=com.twidroid"

.field public static final N:Z = true

.field public static final O:I = 0x64

.field public static final P:Z = true

.field public static final Q:J = 0x7530L

.field public static final R:J = 0x1388L

.field public static final S:Ljava/lang/String; = "AIzaSyA7bdZQxsXBEl25nWIJXFEAwxknyLHeRP0"

.field public static final T:Ljava/lang/String; = "http://serve.uberads.com/request/json"

.field public static final U:Ljava/lang/String; = "0a281266-2c5a-11e3-bbbe-22000abc132c"

.field public static a:Z = false

.field public static final b:Z = false

#the value of this static final field might be set in the static constructor
.field public static final c:Z = false

.field public static final d:Z = false

.field public static final e:Z = false

.field public static final f:Z = false

.field public static final g:Z = true

.field public static final h:Ljava/lang/String; = "07/20/2014"

.field public static final i:Ljava/lang/String; = "799a979405bbb74b"

.field public static final j:Ljava/lang/String; = "21815"

.field public static final k:Ljava/lang/String; = "28262"

.field public static final l:Ljava/lang/String; = "0f8a85cf13dc7639fb193cd1c225d7cf2d93daa7"

.field public static final m:Ljava/lang/String; = "YES"

.field public static final n:Z = false

.field public static final o:Ljava/lang/String; = null

.field public static final p:Z = false

.field public static final q:Ljava/lang/String; = "149588628439275"

.field public static r:[Ljava/lang/String; = null

.field public static s:Ljava/lang/String; = null

.field public static final t:Z = false

.field public static final u:Z = true

.field public static final v:Z = true

.field public static final w:Z = false

.field public static final x:Z = false

.field public static y:Z = false

.field public static final z:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "com.twidroid"

    const-string v3, "com.ubersocialpro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/twidroid/y;->a:Z

    sget-boolean v0, Lcom/twidroid/y;->a:Z

    if-nez v0, :cond_5e

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "4.0.2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/twidroid/y;->c:Z

    sget-boolean v0, Lcom/twidroid/y;->a:Z

    if-eqz v0, :cond_60

    const-string v0, "9785785b0c5ad4bf2b88f0f554e3d09e"

    :goto_23
    sput-object v0, Lcom/twidroid/y;->o:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "offline_access"

    aput-object v3, v0, v1

    const-string v3, "publish_stream"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "read_stream"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "user_photos"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "friends_photos"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "user_checkins"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "friends_checkins"

    aput-object v3, v0, v2

    sput-object v0, Lcom/twidroid/y;->r:[Ljava/lang/String;

    sget-boolean v0, Lcom/twidroid/y;->a:Z

    if-eqz v0, :cond_63

    const-string v0, "TPMRSMS384V6YP9NJSDT"

    :goto_51
    sput-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;

    sput-boolean v1, Lcom/twidroid/y;->y:Z

    const-string v0, "ubersoc"

    sput-object v0, Lcom/twidroid/y;->D:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/twidroid/y;->E:I

    return-void

    :cond_5e
    move v0, v2

    goto :goto_1b

    :cond_60
    const-string v0, "f1df2f1f22714e72b6d82d5452973935"

    goto :goto_23

    :cond_63
    const-string v0, "RBCZQPBG1DVUXM24G99N"

    goto :goto_51
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
