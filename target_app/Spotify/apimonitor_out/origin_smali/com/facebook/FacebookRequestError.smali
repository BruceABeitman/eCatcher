.class public final Lcom/facebook/FacebookRequestError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/facebook/i;

.field private static final b:Lcom/facebook/i;

.field private static final c:Lcom/facebook/i;

.field private static final d:Lcom/facebook/i;


# instance fields
.field private final e:I

.field private final f:Z

.field private final g:Lcom/facebook/FacebookRequestError$Category;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Lorg/json/JSONObject;

.field private final n:Lorg/json/JSONObject;

.field private final o:Ljava/lang/Object;

.field private final p:Ljava/net/HttpURLConnection;

.field private final q:Lcom/facebook/FacebookException;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v2, 0x12b

    const/16 v1, 0xc8

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/i;-><init>(IIB)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->a:Lcom/facebook/i;

    new-instance v0, Lcom/facebook/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/i;-><init>(IIB)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->b:Lcom/facebook/i;

    new-instance v0, Lcom/facebook/i;

    const/16 v1, 0x190

    const/16 v2, 0x1f3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/i;-><init>(IIB)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->c:Lcom/facebook/i;

    new-instance v0, Lcom/facebook/i;

    const/16 v1, 0x1f4

    const/16 v2, 0x257

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/i;-><init>(IIB)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->d:Lcom/facebook/i;

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

    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V
    .registers 16

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/FacebookRequestError;->h:I

    iput p2, p0, Lcom/facebook/FacebookRequestError;->i:I

    iput p3, p0, Lcom/facebook/FacebookRequestError;->j:I

    iput-object p4, p0, Lcom/facebook/FacebookRequestError;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/FacebookRequestError;->l:Ljava/lang/String;

    iput-object p6, p0, Lcom/facebook/FacebookRequestError;->n:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/facebook/FacebookRequestError;->m:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/facebook/FacebookRequestError;->o:Ljava/lang/Object;

    iput-object p9, p0, Lcom/facebook/FacebookRequestError;->p:Ljava/net/HttpURLConnection;

    if-eqz p10, :cond_2a

    iput-object p10, p0, Lcom/facebook/FacebookRequestError;->q:Lcom/facebook/FacebookException;

    move v3, v1

    :goto_1c
    const/4 v2, 0x0

    if-eqz v3, :cond_33

    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->h:Lcom/facebook/FacebookRequestError$Category;

    move-object v2, v1

    move v1, v0

    :cond_23
    :goto_23
    iput-object v2, p0, Lcom/facebook/FacebookRequestError;->g:Lcom/facebook/FacebookRequestError$Category;

    iput v1, p0, Lcom/facebook/FacebookRequestError;->e:I

    iput-boolean v0, p0, Lcom/facebook/FacebookRequestError;->f:Z

    return-void

    :cond_2a
    new-instance v2, Lcom/facebook/FacebookServiceException;

    invoke-direct {v2, p0, p5}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/facebook/FacebookRequestError;->q:Lcom/facebook/FacebookException;

    move v3, v0

    goto :goto_1c

    :cond_33
    if-eq p2, v1, :cond_38

    const/4 v3, 0x2

    if-ne p2, v3, :cond_48

    :cond_38
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->d:Lcom/facebook/FacebookRequestError$Category;

    move v1, v0

    :goto_3b
    if-nez v2, :cond_23

    sget-object v2, Lcom/facebook/FacebookRequestError;->c:Lcom/facebook/i;

    invoke-virtual {v2, p1}, Lcom/facebook/i;->a(I)Z

    move-result v2

    if-eqz v2, :cond_96

    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->g:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_23

    :cond_48
    const/4 v3, 0x4

    if-eq p2, v3, :cond_4f

    const/16 v3, 0x11

    if-ne p2, v3, :cond_53

    :cond_4f
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->e:Lcom/facebook/FacebookRequestError$Category;

    move v1, v0

    goto :goto_3b

    :cond_53
    const/16 v3, 0xa

    if-eq p2, v3, :cond_5f

    sget-object v3, Lcom/facebook/FacebookRequestError;->a:Lcom/facebook/i;

    invoke-virtual {v3, p2}, Lcom/facebook/i;->a(I)Z

    move-result v3

    if-eqz v3, :cond_64

    :cond_5f
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->c:Lcom/facebook/FacebookRequestError$Category;

    sget v1, Lcom/facebook/a/g;->k:I

    goto :goto_3b

    :cond_64
    const/16 v3, 0x66

    if-eq p2, v3, :cond_6c

    const/16 v3, 0xbe

    if-ne p2, v3, :cond_a4

    :cond_6c
    const/16 v2, 0x1cb

    if-eq p3, v2, :cond_74

    const/16 v2, 0x1d0

    if-ne p3, v2, :cond_7c

    :cond_74
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->a:Lcom/facebook/FacebookRequestError$Category;

    sget v0, Lcom/facebook/a/g;->n:I

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_3b

    :cond_7c
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->b:Lcom/facebook/FacebookRequestError$Category;

    const/16 v3, 0x1ca

    if-eq p3, v3, :cond_86

    const/16 v3, 0x1cf

    if-ne p3, v3, :cond_89

    :cond_86
    sget v1, Lcom/facebook/a/g;->m:I

    goto :goto_3b

    :cond_89
    const/16 v3, 0x1cc

    if-ne p3, v3, :cond_90

    sget v1, Lcom/facebook/a/g;->j:I

    goto :goto_3b

    :cond_90
    sget v0, Lcom/facebook/a/g;->l:I

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_3b

    :cond_96
    sget-object v2, Lcom/facebook/FacebookRequestError;->d:Lcom/facebook/i;

    invoke-virtual {v2, p1}, Lcom/facebook/i;->a(I)Z

    move-result v2

    if-eqz v2, :cond_a1

    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->d:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_23

    :cond_a1
    sget-object v2, Lcom/facebook/FacebookRequestError$Category;->f:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_23

    :cond_a4
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

    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .registers 14

    const/4 v1, -0x1

    const/4 v4, 0x0

    instance-of v0, p2, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_15

    check-cast p2, Lcom/facebook/FacebookException;

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

    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    return-void

    :cond_15
    new-instance v10, Lcom/facebook/FacebookException;

    invoke-direct {v10, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;
    .registers 15

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    :try_start_3
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bc

    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "body"

    const-string v4, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v3, v4}, Lcom/facebook/internal/ai;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_94

    instance-of v3, v6, Lorg/json/JSONObject;

    if-eqz v3, :cond_94

    check-cast v6, Lorg/json/JSONObject;

    const-string v3, "error"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    const-string v0, "error"

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/facebook/internal/ai;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

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

    :goto_51
    if-eqz v0, :cond_94

    new-instance v0, Lcom/facebook/FacebookRequestError;

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V

    :goto_5b
    return-object v0

    :cond_5c
    const-string v3, "error_code"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_74

    const-string v3, "error_msg"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_74

    const-string v3, "error_reason"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c0

    :cond_74
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

    goto :goto_51

    :cond_94
    sget-object v0, Lcom/facebook/FacebookRequestError;->b:Lcom/facebook/i;

    invoke-virtual {v0, v1}, Lcom/facebook/i;->a(I)Z

    move-result v0

    if-nez v0, :cond_bc

    new-instance v0, Lcom/facebook/FacebookRequestError;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "body"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_be

    const-string v6, "body"

    const-string v7, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v6, v7}, Lcom/facebook/internal/ai;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    :goto_b4
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    :try_end_ba
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_ba} :catch_bb

    goto :goto_5b

    :catch_bb
    move-exception v0

    :cond_bc
    move-object v0, v10

    goto :goto_5b

    :cond_be
    move-object v6, v10

    goto :goto_b4

    :cond_c0
    move v3, v0

    move v2, v0

    move-object v5, v10

    move-object v4, v10

    goto :goto_51
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/facebook/FacebookRequestError;->h:I

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/facebook/FacebookRequestError;->i:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->l:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->l:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->q:Lcom/facebook/FacebookException;

    invoke-virtual {v0}, Lcom/facebook/FacebookException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public final e()Lcom/facebook/FacebookException;
    .registers 2

    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->q:Lcom/facebook/FacebookException;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{HttpStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/facebook/FacebookRequestError;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/FacebookRequestError;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/FacebookRequestError;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/FacebookRequestError;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
