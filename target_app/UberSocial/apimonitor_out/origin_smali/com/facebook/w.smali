.class public final Lcom/facebook/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Lcom/facebook/y; = null

.field private static final B:Lcom/facebook/y; = null

.field public static final a:I = -0x1

.field public static final b:I = -0x1

.field private static final c:I = 0x0

.field private static final d:Ljava/lang/String; = "code"

.field private static final e:Ljava/lang/String; = "body"

.field private static final f:Ljava/lang/String; = "error"

.field private static final g:Ljava/lang/String; = "type"

.field private static final h:Ljava/lang/String; = "code"

.field private static final i:Ljava/lang/String; = "message"

.field private static final j:Ljava/lang/String; = "error_code"

.field private static final k:Ljava/lang/String; = "error_subcode"

.field private static final l:Ljava/lang/String; = "error_msg"

.field private static final m:Ljava/lang/String; = "error_reason"

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:I = 0x4

.field private static final q:I = 0x11

.field private static final r:I = 0xa

.field private static final s:I = 0x66

.field private static final t:I = 0xbe

.field private static final u:Lcom/facebook/y; = null

.field private static final v:I = 0x1ca

.field private static final w:I = 0x1cb

.field private static final x:I = 0x1cc

.field private static final y:I = 0x1d0

.field private static final z:Lcom/facebook/y;


# instance fields
.field private final C:I

.field private final D:Z

.field private final E:Lcom/facebook/x;

.field private final F:I

.field private final G:I

.field private final H:I

.field private final I:Ljava/lang/String;

.field private final J:Ljava/lang/String;

.field private final K:Lorg/json/JSONObject;

.field private final L:Lorg/json/JSONObject;

.field private final M:Ljava/lang/Object;

.field private final N:Ljava/net/HttpURLConnection;

.field private final O:Lcom/facebook/t;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v2, 0x12b

    const/16 v1, 0xc8

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/y;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/y;-><init>(IILcom/facebook/w$1;)V

    sput-object v0, Lcom/facebook/w;->u:Lcom/facebook/y;

    new-instance v0, Lcom/facebook/y;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/y;-><init>(IILcom/facebook/w$1;)V

    sput-object v0, Lcom/facebook/w;->z:Lcom/facebook/y;

    new-instance v0, Lcom/facebook/y;

    const/16 v1, 0x190

    const/16 v2, 0x1f3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/y;-><init>(IILcom/facebook/w$1;)V

    sput-object v0, Lcom/facebook/w;->A:Lcom/facebook/y;

    new-instance v0, Lcom/facebook/y;

    const/16 v1, 0x1f4

    const/16 v2, 0x257

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/y;-><init>(IILcom/facebook/w$1;)V

    sput-object v0, Lcom/facebook/w;->B:Lcom/facebook/y;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    .registers 21

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/facebook/w;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/t;)V

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/t;)V
    .registers 16

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/w;->F:I

    iput p2, p0, Lcom/facebook/w;->G:I

    iput p3, p0, Lcom/facebook/w;->H:I

    iput-object p4, p0, Lcom/facebook/w;->I:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/w;->J:Ljava/lang/String;

    iput-object p6, p0, Lcom/facebook/w;->L:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/facebook/w;->K:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/facebook/w;->M:Ljava/lang/Object;

    iput-object p9, p0, Lcom/facebook/w;->N:Ljava/net/HttpURLConnection;

    if-eqz p10, :cond_2a

    iput-object p10, p0, Lcom/facebook/w;->O:Lcom/facebook/t;

    move v3, v1

    :goto_1c
    const/4 v2, 0x0

    if-eqz v3, :cond_33

    sget-object v1, Lcom/facebook/x;->h:Lcom/facebook/x;

    move-object v2, v1

    move v1, v0

    :cond_23
    :goto_23
    iput-object v2, p0, Lcom/facebook/w;->E:Lcom/facebook/x;

    iput v1, p0, Lcom/facebook/w;->C:I

    iput-boolean v0, p0, Lcom/facebook/w;->D:Z

    return-void

    :cond_2a
    new-instance v2, Lcom/facebook/aa;

    invoke-direct {v2, p0, p5}, Lcom/facebook/aa;-><init>(Lcom/facebook/w;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/facebook/w;->O:Lcom/facebook/t;

    move v3, v0

    goto :goto_1c

    :cond_33
    if-eq p2, v1, :cond_38

    const/4 v3, 0x2

    if-ne p2, v3, :cond_48

    :cond_38
    sget-object v2, Lcom/facebook/x;->d:Lcom/facebook/x;

    move v1, v0

    :goto_3b
    if-nez v2, :cond_23

    sget-object v2, Lcom/facebook/w;->A:Lcom/facebook/y;

    invoke-virtual {v2, p1}, Lcom/facebook/y;->a(I)Z

    move-result v2

    if-eqz v2, :cond_8f

    sget-object v2, Lcom/facebook/x;->g:Lcom/facebook/x;

    goto :goto_23

    :cond_48
    const/4 v3, 0x4

    if-eq p2, v3, :cond_4f

    const/16 v3, 0x11

    if-ne p2, v3, :cond_53

    :cond_4f
    sget-object v2, Lcom/facebook/x;->e:Lcom/facebook/x;

    move v1, v0

    goto :goto_3b

    :cond_53
    const/16 v3, 0xa

    if-eq p2, v3, :cond_5f

    sget-object v3, Lcom/facebook/w;->u:Lcom/facebook/y;

    invoke-virtual {v3, p2}, Lcom/facebook/y;->a(I)Z

    move-result v3

    if-eqz v3, :cond_64

    :cond_5f
    sget-object v2, Lcom/facebook/x;->c:Lcom/facebook/x;

    sget v1, Lcom/facebook/a/t;->com_facebook_requesterror_permissions:I

    goto :goto_3b

    :cond_64
    const/16 v3, 0x66

    if-eq p2, v3, :cond_6c

    const/16 v3, 0xbe

    if-ne p2, v3, :cond_9d

    :cond_6c
    const/16 v2, 0x1cb

    if-eq p3, v2, :cond_74

    const/16 v2, 0x1d0

    if-ne p3, v2, :cond_7c

    :cond_74
    sget-object v2, Lcom/facebook/x;->a:Lcom/facebook/x;

    sget v0, Lcom/facebook/a/t;->com_facebook_requesterror_web_login:I

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_3b

    :cond_7c
    sget-object v2, Lcom/facebook/x;->b:Lcom/facebook/x;

    const/16 v1, 0x1ca

    if-ne p3, v1, :cond_85

    sget v1, Lcom/facebook/a/t;->com_facebook_requesterror_relogin:I

    goto :goto_3b

    :cond_85
    const/16 v1, 0x1cc

    if-ne p3, v1, :cond_8c

    sget v1, Lcom/facebook/a/t;->com_facebook_requesterror_password_changed:I

    goto :goto_3b

    :cond_8c
    sget v1, Lcom/facebook/a/t;->com_facebook_requesterror_reconnect:I

    goto :goto_3b

    :cond_8f
    sget-object v2, Lcom/facebook/w;->B:Lcom/facebook/y;

    invoke-virtual {v2, p1}, Lcom/facebook/y;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9a

    sget-object v2, Lcom/facebook/x;->d:Lcom/facebook/x;

    goto :goto_23

    :cond_9a
    sget-object v2, Lcom/facebook/x;->f:Lcom/facebook/x;

    goto :goto_23

    :cond_9d
    move v1, v0

    goto :goto_3b
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move-object v10, v6

    invoke-direct/range {v0 .. v10}, Lcom/facebook/w;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/t;)V

    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .registers 14

    const/4 v1, -0x1

    const/4 v4, 0x0

    instance-of v0, p2, Lcom/facebook/t;

    if-eqz v0, :cond_15

    check-cast p2, Lcom/facebook/t;

    move-object v10, p2

    :goto_9
    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Lcom/facebook/w;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/t;)V

    return-void

    :cond_15
    new-instance v10, Lcom/facebook/t;

    invoke-direct {v10, p2}, Lcom/facebook/t;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/w;
    .registers 15

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v10, 0x0

    :try_start_3
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "body"

    const-string v4, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v0, v4}, Lcom/facebook/b/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_95

    instance-of v0, v6, Lorg/json/JSONObject;

    if-eqz v0, :cond_95

    check-cast v6, Lorg/json/JSONObject;

    const/4 v0, 0x0

    const-string v4, "error"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    const-string v0, "error"

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/facebook/b/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "message"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "code"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v3, "error_subcode"

    const/4 v8, -0x1

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v0, v2

    move v2, v4

    move-object v4, v7

    :goto_52
    if-eqz v0, :cond_95

    new-instance v0, Lcom/facebook/w;

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/w;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V

    :goto_5c
    return-object v0

    :cond_5d
    const-string v4, "error_code"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_75

    const-string v4, "error_msg"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_75

    const-string v4, "error_reason"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c1

    :cond_75
    const-string v0, "error_reason"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "error_msg"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "error_code"

    const/4 v3, -0x1

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "error_subcode"

    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v11, v2

    move v2, v0

    move v0, v11

    goto :goto_52

    :cond_95
    sget-object v0, Lcom/facebook/w;->z:Lcom/facebook/y;

    invoke-virtual {v0, v1}, Lcom/facebook/y;->a(I)Z

    move-result v0

    if-nez v0, :cond_bd

    new-instance v0, Lcom/facebook/w;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "body"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bf

    const-string v6, "body"

    const-string v7, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v6, v7}, Lcom/facebook/b/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    :goto_b5
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/w;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_bb} :catch_bc

    goto :goto_5c

    :catch_bc
    move-exception v0

    :cond_bd
    move-object v0, v10

    goto :goto_5c

    :cond_bf
    move-object v6, v10

    goto :goto_b5

    :cond_c1
    move v2, v3

    move-object v5, v10

    move-object v4, v10

    goto :goto_52
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/facebook/w;->C:I

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/w;->D:Z

    return v0
.end method

.method public c()Lcom/facebook/x;
    .registers 2

    iget-object v0, p0, Lcom/facebook/w;->E:Lcom/facebook/x;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/facebook/w;->F:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/facebook/w;->G:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/facebook/w;->H:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/w;->I:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/w;->J:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/w;->J:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/w;->O:Lcom/facebook/t;

    invoke-virtual {v0}, Lcom/facebook/t;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public i()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/facebook/w;->L:Lorg/json/JSONObject;

    return-object v0
.end method

.method public j()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/facebook/w;->K:Lorg/json/JSONObject;

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/facebook/w;->M:Ljava/lang/Object;

    return-object v0
.end method

.method public l()Ljava/net/HttpURLConnection;
    .registers 2

    iget-object v0, p0, Lcom/facebook/w;->N:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public m()Lcom/facebook/t;
    .registers 2

    iget-object v0, p0, Lcom/facebook/w;->O:Lcom/facebook/t;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{HttpStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/facebook/w;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/w;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/w;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/w;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
