.class public final Lcom/facebook/ac;
.super Ljava/lang/Object;
.source "FacebookRequestError.java"
.field private static final a:Lcom/facebook/ae;
.field private static final b:Lcom/facebook/ae;
.field private static final c:Lcom/facebook/ae;
.field private static final d:Lcom/facebook/ae;
.field private final e:I
.field private final f:Z
.field private final g:I
.field private final h:I
.field private final i:I
.field private final j:I
.field private final k:Ljava/lang/String;
.field private final l:Ljava/lang/String;
.field private final m:Lorg/json/JSONObject;
.field private final n:Lorg/json/JSONObject;
.field private final o:Ljava/lang/Object;
.field private final p:Ljava/net/HttpURLConnection;
.field private final q:Lcom/facebook/z;
.method static constructor <clinit>()V
.registers 4
const/16 v2, 0x12b
const/16 v1, 0xc8
const/4 v3, 0x0
new-instance v0, Lcom/facebook/ae;
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ae;-><init>(IIB)V
sput-object v0, Lcom/facebook/ac;->a:Lcom/facebook/ae;
new-instance v0, Lcom/facebook/ae;
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ae;-><init>(IIB)V
sput-object v0, Lcom/facebook/ac;->b:Lcom/facebook/ae;
new-instance v0, Lcom/facebook/ae;
const/16 v1, 0x190
const/16 v2, 0x1f3
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ae;-><init>(IIB)V
sput-object v0, Lcom/facebook/ac;->c:Lcom/facebook/ae;
new-instance v0, Lcom/facebook/ae;
const/16 v1, 0x1f4
const/16 v2, 0x257
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ae;-><init>(IIB)V
sput-object v0, Lcom/facebook/ac;->d:Lcom/facebook/ae;
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
invoke-direct/range {v0 .. v10}, Lcom/facebook/ac;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/z;)V
return-void
.end method
.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/z;)V
.registers 16
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/facebook/ac;->h:I
iput p2, p0, Lcom/facebook/ac;->i:I
iput p3, p0, Lcom/facebook/ac;->j:I
iput-object p4, p0, Lcom/facebook/ac;->k:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/ac;->l:Ljava/lang/String;
iput-object p6, p0, Lcom/facebook/ac;->n:Lorg/json/JSONObject;
iput-object p7, p0, Lcom/facebook/ac;->m:Lorg/json/JSONObject;
iput-object p8, p0, Lcom/facebook/ac;->o:Ljava/lang/Object;
iput-object p9, p0, Lcom/facebook/ac;->p:Ljava/net/HttpURLConnection;
if-eqz p10, :cond_29
iput-object p10, p0, Lcom/facebook/ac;->q:Lcom/facebook/z;
move v2, v1
:goto_1c
if-eqz v2, :cond_32
sget v1, Lcom/facebook/ad;->h:I
move v2, v1
move v1, v0
:goto_22
:cond_22
iput v2, p0, Lcom/facebook/ac;->g:I
iput v1, p0, Lcom/facebook/ac;->e:I
iput-boolean v0, p0, Lcom/facebook/ac;->f:Z
return-void
:cond_29
new-instance v2, Lcom/facebook/af;
invoke-direct {v2, p0, p5}, Lcom/facebook/af;-><init>(Lcom/facebook/ac;Ljava/lang/String;)V
iput-object v2, p0, Lcom/facebook/ac;->q:Lcom/facebook/z;
move v2, v0
goto :goto_1c
:cond_32
if-eq p2, v1, :cond_37
const/4 v2, 0x2
if-ne p2, v2, :cond_47
:cond_37
sget v2, Lcom/facebook/ad;->d:I
move v1, v0
:goto_3a
if-nez v2, :cond_22
sget-object v2, Lcom/facebook/ac;->c:Lcom/facebook/ae;
invoke-virtual {v2, p1}, Lcom/facebook/ae;->a(I)Z
move-result v2
if-eqz v2, :cond_95
sget v2, Lcom/facebook/ad;->g:I
goto :goto_22
:cond_47
const/4 v2, 0x4
if-eq p2, v2, :cond_4e
const/16 v2, 0x11
if-ne p2, v2, :cond_52
:cond_4e
sget v2, Lcom/facebook/ad;->e:I
move v1, v0
goto :goto_3a
:cond_52
const/16 v2, 0xa
if-eq p2, v2, :cond_5e
sget-object v2, Lcom/facebook/ac;->a:Lcom/facebook/ae;
invoke-virtual {v2, p2}, Lcom/facebook/ae;->a(I)Z
move-result v2
if-eqz v2, :cond_63
:cond_5e
sget v2, Lcom/facebook/ad;->c:I
sget v1, Lcom/facebook/az;->com_facebook_requesterror_permissions:I
goto :goto_3a
:cond_63
const/16 v2, 0x66
if-eq p2, v2, :cond_6b
const/16 v2, 0xbe
if-ne p2, v2, :cond_a3
:cond_6b
const/16 v2, 0x1cb
if-eq p3, v2, :cond_73
const/16 v2, 0x1d0
if-ne p3, v2, :cond_7b
:cond_73
sget v2, Lcom/facebook/ad;->a:I
sget v0, Lcom/facebook/az;->com_facebook_requesterror_web_login:I
move v4, v1
move v1, v0
move v0, v4
goto :goto_3a
:cond_7b
sget v2, Lcom/facebook/ad;->b:I
const/16 v3, 0x1ca
if-eq p3, v3, :cond_85
const/16 v3, 0x1cf
if-ne p3, v3, :cond_88
:cond_85
sget v1, Lcom/facebook/az;->com_facebook_requesterror_relogin:I
goto :goto_3a
:cond_88
const/16 v3, 0x1cc
if-ne p3, v3, :cond_8f
sget v1, Lcom/facebook/az;->com_facebook_requesterror_password_changed:I
goto :goto_3a
:cond_8f
sget v0, Lcom/facebook/az;->com_facebook_requesterror_reconnect:I
move v4, v1
move v1, v0
move v0, v4
goto :goto_3a
:cond_95
sget-object v2, Lcom/facebook/ac;->d:Lcom/facebook/ae;
invoke-virtual {v2, p1}, Lcom/facebook/ae;->a(I)Z
move-result v2
if-eqz v2, :cond_a0
sget v2, Lcom/facebook/ad;->d:I
goto :goto_22
:cond_a0
sget v2, Lcom/facebook/ad;->f:I
goto :goto_22
:cond_a3
move v1, v0
move v2, v0
goto :goto_3a
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
invoke-direct/range {v0 .. v10}, Lcom/facebook/ac;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/z;)V
return-void
.end method
.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
.registers 14
const/4 v1, -0x1
const/4 v4, 0x0
instance-of v0, p2, Lcom/facebook/z;
if-eqz v0, :cond_15
check-cast p2, Lcom/facebook/z;
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
invoke-direct/range {v0 .. v10}, Lcom/facebook/ac;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/z;)V
return-void
:cond_15
new-instance v10, Lcom/facebook/z;
invoke-direct {v10, p2}, Lcom/facebook/z;-><init>(Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method static a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/ac;
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
invoke-static {p0, v3, v4}, Lcom/facebook/g/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
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
invoke-static {v6, v0, v3}, Lcom/facebook/g/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
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
new-instance v0, Lcom/facebook/ac;
move-object v7, p0
move-object v8, p1
move-object v9, p2
invoke-direct/range {v0 .. v9}, Lcom/facebook/ac;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
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
sget-object v0, Lcom/facebook/ac;->b:Lcom/facebook/ae;
invoke-virtual {v0, v1}, Lcom/facebook/ae;->a(I)Z
move-result v0
if-nez v0, :cond_bc
new-instance v0, Lcom/facebook/ac;
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
invoke-static {p0, v6, v7}, Lcom/facebook/g/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lorg/json/JSONObject;
:goto_b4
move-object v7, p0
move-object v8, p1
move-object v9, p2
invoke-direct/range {v0 .. v9}, Lcom/facebook/ac;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
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
.method public final a()I
.registers 2
iget v0, p0, Lcom/facebook/ac;->h:I
return v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/facebook/ac;->i:I
return v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/ac;->k:Ljava/lang/String;
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/ac;->l:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/facebook/ac;->l:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/facebook/ac;->q:Lcom/facebook/z;
invoke-virtual {v0}, Lcom/facebook/z;->getLocalizedMessage()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public final e()Lcom/facebook/z;
.registers 2
iget-object v0, p0, Lcom/facebook/ac;->q:Lcom/facebook/z;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "{HttpStatus: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/facebook/ac;->h:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", errorCode: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/facebook/ac;->i:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", errorType: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/ac;->k:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", errorMessage: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/ac;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method