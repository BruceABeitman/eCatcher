.class public Lcom/twidroid/billing/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Security"

.field private static final b:Ljava/lang/String; = "RSA"

.field private static final c:Ljava/lang/String; = "SHA1withRSA"

.field private static final d:Ljava/security/SecureRandom;

.field private static e:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/twidroid/billing/l;->d:Ljava/security/SecureRandom;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/twidroid/billing/l;->e:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .registers 4

    sget-object v0, Lcom/twidroid/billing/l;->d:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    sget-object v2, Lcom/twidroid/billing/l;->e:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-wide v0
.end method

.method public static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/ubermedia/b/a/d;->d(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_12} :catch_1b

    move-result-object v0

    return-object v0

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1b
    move-exception v0

    const-string v1, "Security"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 20

    if-nez p0, :cond_b

    const-string v2, "Security"

    const-string v3, "data is null"

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_a
    return-object v2

    :cond_b
    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_dc

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhNpPxQPHcJHd9h0B+H2hwDWwAlZnHb304cNbaUC1EzobD68poF4STMo2G6tIBqf6HMczHB535mTTjEc2bYC71p021Aw5sl5Gd6ECuClUXwqMl/73NCF7kZM34BRx4dFpTtuuagVLlQcE5usN7NKjhXcNc46aIhyjBoGnRAdBtnWK/W2gfZi+9+jo2LDBWURnxN4owuFppFe9ycrne56E0VE1omx7cE7uIdfTcyrResymYnTfc/GP6Imkzixc+Xd6aAGflE0s67aq0uMTxIfztK7BrF+XIZNmDabc0sEvQpicupnuOtYaI7QCx8T7AytOVjQapOfBMUuYbHz3SRFf7wIDAQAB"

    invoke-static {v2}, Lcom/twidroid/billing/l;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/twidroid/billing/l;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "Security"

    const-string v3, "signature does not match data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_a

    :cond_2b
    move v10, v2

    :goto_2c
    const/4 v2, 0x0

    :try_start_2d
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "nonce"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v4, "orders"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    if-eqz v16, :cond_d9

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_45} :catch_67

    move-result v2

    move v11, v2

    :goto_47
    invoke-static {v14, v15}, Lcom/twidroid/billing/l;->b(J)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "Security"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nonce not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_a

    :catch_67
    move-exception v2

    const/4 v2, 0x0

    goto :goto_a

    :cond_6a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v13, v2

    :goto_71
    if-ge v13, v11, :cond_d3

    :try_start_73
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "purchaseState"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/twidroid/billing/h;->a(I)Lcom/twidroid/billing/h;

    move-result-object v3

    const-string v4, "productId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "packageName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "purchaseTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v4, "orderId"

    const-string v6, ""

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const-string v9, "notificationId"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ab

    const-string v4, "notificationId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_ab
    const-string v9, "developerPayload"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lcom/twidroid/billing/h;->a:Lcom/twidroid/billing/h;

    if-ne v3, v2, :cond_bf

    if-nez v10, :cond_bf

    :goto_bb
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_71

    :cond_bf
    new-instance v2, Lcom/twidroid/billing/m;

    invoke-direct/range {v2 .. v9}, Lcom/twidroid/billing/m;-><init>(Lcom/twidroid/billing/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c7
    .catch Lorg/json/JSONException; {:try_start_73 .. :try_end_c7} :catch_c8

    goto :goto_bb

    :catch_c8
    move-exception v2

    const-string v3, "Security"

    const-string v4, "JSON exception: "

    invoke-static {v3, v4, v2}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_d3
    invoke-static {v14, v15}, Lcom/twidroid/billing/l;->a(J)V

    move-object v2, v12

    goto/16 :goto_a

    :cond_d9
    move v11, v2

    goto/16 :goto_47

    :cond_dc
    move v10, v2

    goto/16 :goto_2c
.end method

.method public static a(J)V
    .registers 4

    sget-object v0, Lcom/twidroid/billing/l;->e:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    invoke-static {p2}, Lcom/ubermedia/b/a/d;->d(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "Security"

    const-string v2, "Signature verification failed."

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_22} :catch_25
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_22} :catch_2e
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_22} :catch_37

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x1

    goto :goto_22

    :catch_25
    move-exception v1

    const-string v1, "Security"

    const-string v2, "NoSuchAlgorithmException."

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :catch_2e
    move-exception v1

    const-string v1, "Security"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :catch_37
    move-exception v1

    const-string v1, "Security"

    const-string v2, "Signature exception."

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public static b(J)Z
    .registers 4

    sget-object v0, Lcom/twidroid/billing/l;->e:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
