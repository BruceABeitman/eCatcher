.class public final Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;
.super Ljava/lang/Object;
.source "AuthHelper.java"
.field static final ENCRYPT_KEY:Ljava/lang/String; = "&-*)Wb5_U,[^!9\'+"
.field static final ERROR_WEIBO_INSTALL_NEEDED:I = -0x2
.field static final ERROR_WEIBO_UPGRADE_NEEDED:I = -0x1
.field static final SDK_VERSION:B = 0x1t
.field static final SUPPORT_WEIBO_MIN_VERSION:I = 0x2c
.field static final WEIBO_AUTH_URL:Ljava/lang/String; = "TencentAuth://weibo"
.field static final WEIBO_PACKAGE:Ljava/lang/String; = "com.tencent.WBlog"
.field static final WEIBO_VALIDATE_OK:I
.field protected static appSecret:Ljava/lang/String;
.field protected static appid:J
.field protected static listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;
.field private static mReceiver:Lcom/tencent/weibo/sdk/android/component/sso/AuthReceiver;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/tencent/weibo/sdk/android/component/sso/AuthReceiver;
invoke-direct {v0}, Lcom/tencent/weibo/sdk/android/component/sso/AuthReceiver;-><init>()V
sput-object v0, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->mReceiver:Lcom/tencent/weibo/sdk/android/component/sso/AuthReceiver;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final auth(Landroid/content/Context;Ljava/lang/String;)Z
.registers 20
invoke-static/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->validateWeiboApp(Landroid/content/Context;)I
move-result v9
if-nez v9, :cond_a6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
const-wide/16 v16, 0x3e8
div-long v4, v1, v16
new-instance v1, Ljava/util/Random;
invoke-direct {v1}, Ljava/util/Random;-><init>()V
invoke-virtual {v1}, Ljava/util/Random;->nextInt()I
move-result v1
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v1
int-to-long v6, v1
invoke-static/range {p0 .. p0}, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->getApkSignature(Landroid/content/Context;)Ljava/lang/String;
move-result-object v8
sget-wide v1, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->appid:J
sget-object v3, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->appSecret:Ljava/lang/String;
invoke-static/range {v1 .. v7}, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->generateSignature(JLjava/lang/String;JJ)[B
move-result-object v13
if-nez v13, :cond_39
sget-object v1, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;
if-eqz v1, :cond_37
sget-object v1, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;
const/4 v2, -0x1
const-string/jumbo v3, ""
invoke-interface {v1, v2, v3}, Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;->onAuthFail(ILjava/lang/String;)V
:cond_37
const/4 v1, 0x0
:goto_38
return v1
:cond_39
invoke-static {v13}, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->encypt([B)[B
move-result-object v13
invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v12
invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v11
const-string/jumbo v15, ""
const/4 v1, 0x0
:try_start_49
invoke-virtual {v11, v12, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v14
invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
:try_end_54
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_54} :catch_c6
move-result-object v15
:goto_55
new-instance v10, Landroid/content/Intent;
const-string/jumbo v1, "android.intent.action.VIEW"
const-string/jumbo v2, "TencentAuth://weibo"
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v10, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const-string/jumbo v1, "com.tencent.sso.APP_ID"
sget-wide v2, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->appid:J
invoke-virtual {v10, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string/jumbo v1, "com.tencent.sso.TIMESTAMP"
invoke-virtual {v10, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string/jumbo v1, "com.tencent.sso.NONCE"
invoke-virtual {v10, v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string/jumbo v1, "com.tencent.sso.SDK_VERSION"
const/4 v2, 0x1
invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;
const-string/jumbo v1, "com.tencent.sso.PACKAGE_NAME"
invoke-virtual {v10, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "com.tencent.sso.ICON_MD5"
invoke-virtual {v10, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "com.tencent.sso.APP_NAME"
invoke-virtual {v10, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "com.tencent.sso.SIGNATURE"
invoke-virtual {v10, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
const-string/jumbo v1, "com.tencent.sso.RESERVER"
move-object/from16 v0, p1
invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-object/from16 v0, p0
invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const/4 v1, 0x1
goto :goto_38
:cond_a6
const/4 v1, -0x1
if-ne v9, v1, :cond_b4
sget-object v1, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;
if-eqz v1, :cond_b2
sget-object v1, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;
invoke-interface {v1}, Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;->onWeiboVersionMisMatch()V
:cond_b2
const/4 v1, 0x0
goto :goto_38
:cond_b4
const/4 v1, -0x2
if-ne v9, v1, :cond_c3
sget-object v1, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;
if-eqz v1, :cond_c0
sget-object v1, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;
invoke-interface {v1}, Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;->onWeiBoNotInstalled()V
:cond_c0
const/4 v1, 0x0
goto/16 :goto_38
:cond_c3
const/4 v1, 0x0
goto/16 :goto_38
:catch_c6
move-exception v1
goto :goto_55
.end method
.method private static encypt([B)[B
.registers 3
new-instance v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;
invoke-direct {v0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;-><init>()V
const-string/jumbo v1, "&-*)Wb5_U,[^!9\'+"
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, p0, v1}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->encrypt([B[B)[B
move-result-object v0
return-object v0
.end method
.method private static generateSignature(JLjava/lang/String;JJ)[B
.registers 13
const/4 v3, 0x0
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
const/4 v4, 0x1
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
:try_start_13
const-string/jumbo v4, "HmacSHA1"
invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
move-result-object v0
new-instance v2, Ljavax/crypto/spec/SecretKeySpec;
const-string/jumbo v4, "UTF-8"
invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v4
invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;
move-result-object v5
invoke-direct {v2, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "UTF-8"
invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v4
invoke-virtual {v0, v4}, Ljavax/crypto/Mac;->doFinal([B)[B
:try_end_3b
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3b} :catch_45
move-result-object v3
:goto_3c
invoke-static {v3}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Base64;->encode([B)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
move-result-object v3
return-object v3
:catch_45
move-exception v4
goto :goto_3c
.end method
.method private static getApkSignature(Landroid/content/Context;)Ljava/lang/String;
.registers 11
:try_start_0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v7
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v8
const/16 v9, 0x40
invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v3
iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
const/4 v7, 0x0
aget-object v5, v6, v7
const-string/jumbo v7, "X.509"
invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
move-result-object v1
new-instance v7, Ljava/io/ByteArrayInputStream;
invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
move-result-object v0
check-cast v0, Ljava/security/cert/X509Certificate;
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;
move-result-object v7
invoke-virtual {v7}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/tencent/weibo/sdk/android/component/sso/tools/MD5Tools;->toMD5(Ljava/lang/String;)Ljava/lang/String;
:try_end_4b
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4b} :catch_4d
.catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_4b} :catch_55
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_5a
move-result-object v7
:goto_4c
return-object v7
:catch_4d
move-exception v2
invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
:goto_51
const-string/jumbo v7, ""
goto :goto_4c
:catch_55
move-exception v2
invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V
goto :goto_51
:catch_5a
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_51
.end method
.method public static final register(Landroid/content/Context;JLjava/lang/String;Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;)V
.registers 7
sput-wide p1, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->appid:J
sput-object p3, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->appSecret:Ljava/lang/String;
sput-object p4, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->listener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;
new-instance v0, Landroid/content/IntentFilter;
const-string/jumbo v1, "com.tencent.sso.AUTH"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "android.intent.category.DEFAULT"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V
sget-object v1, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->mReceiver:Lcom/tencent/weibo/sdk/android/component/sso/AuthReceiver;
invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method public static final unregister(Landroid/content/Context;)V
.registers 2
sget-object v0, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->mReceiver:Lcom/tencent/weibo/sdk/android/component/sso/AuthReceiver;
invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method private static validateWeiboApp(Landroid/content/Context;)I
.registers 8
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
:try_start_4
const-string/jumbo v5, "com.tencent.WBlog"
const/16 v6, 0x10
invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v4
if-eqz v4, :cond_32
iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I
const/16 v6, 0x2c
if-lt v5, v6, :cond_32
new-instance v1, Landroid/content/Intent;
const-string/jumbo v5, "android.intent.action.VIEW"
const-string/jumbo v6, "TencentAuth://weibo"
invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v6
invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v5, 0x1
invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->size()I
:try_end_2d
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_2d} :catch_34
move-result v5
if-lez v5, :cond_32
const/4 v5, 0x0
:goto_31
return v5
:cond_32
const/4 v5, -0x1
goto :goto_31
:catch_34
move-exception v0
const/4 v5, -0x2
goto :goto_31
.end method