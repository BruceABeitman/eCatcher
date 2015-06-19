.class public Lcom/pinguo/camera360/login/model/SinaSso;
.super Lcom/pinguo/camera360/login/model/Sso;
.source "SinaSso.java"
.field public static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0x80cd
.field public static final URL_USER_INFO:Ljava/lang/String; = "https://api.weibo.com/2/users/show.json"
.field private static final WEIBO_SIGNATURE:Ljava/lang/String; = "30820295308201fea00302010202044b4ef1bf300d06092a864886f70d010105050030818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c74643020170d3130303131343130323831355a180f32303630303130323130323831355a30818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c746430819f300d06092a864886f70d010101050003818d00308189028181009d367115bc206c86c237bb56c8e9033111889b5691f051b28d1aa8e42b66b7413657635b44786ea7e85d451a12a82a331fced99c48717922170b7fc9bc1040753c0d38b4cf2b22094b1df7c55705b0989441e75913a1a8bd2bc591aa729a1013c277c01c98cbec7da5ad7778b2fad62b85ac29ca28ced588638c98d6b7df5a130203010001300d06092a864886f70d0101050500038181000ad4b4c4dec800bd8fd2991adfd70676fce8ba9692ae50475f60ec468d1b758a665e961a3aedbece9fd4d7ce9295cd83f5f19dc441a065689d9820faedbb7c4a4c4635f5ba1293f6da4b72ed32fb8795f736a20c95cda776402099054fccefb4a1a558664ab8d637288feceba9508aa907fc1fe2b1ae5a0dec954ed831c0bea4"
.method public constructor <init>()V
.registers 2
const-string/jumbo v0, "sina"
invoke-direct {p0, v0}, Lcom/pinguo/camera360/login/model/Sso;-><init>(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/login/model/SinaSso;Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;)Z
.registers 10
invoke-direct/range {p0 .. p8}, Lcom/pinguo/camera360/login/model/SinaSso;->startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;)Z
move-result v0
return v0
.end method
.method private startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;)Z
.registers 14
const/4 v0, 0x1
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
invoke-virtual {v2, p5, p6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v3, "appKey"
invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v3, "redirectUri"
invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
array-length v3, p3
if-lez v3, :cond_25
const-string/jumbo v3, "scope"
const-string/jumbo v4, ","
invoke-static {v4, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_25
invoke-direct {p0, p1, v2}, Lcom/pinguo/camera360/login/model/SinaSso;->validateAppSignatureForIntent(Landroid/app/Activity;Landroid/content/Intent;)Z
move-result v3
if-nez v3, :cond_2d
const/4 v3, 0x0
:goto_2c
return v3
:try_start_2d
:cond_2d
invoke-virtual {p1, v2, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
:goto_30
:try_end_30
.catch Landroid/content/ActivityNotFoundException; {:try_start_2d .. :try_end_30} :catch_35
invoke-virtual {p1, p8}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
move v3, v0
goto :goto_2c
:catch_35
move-exception v1
const/4 v0, 0x0
goto :goto_30
.end method
.method private validateAppSignatureForIntent(Landroid/app/Activity;Landroid/content/Intent;)Z
.registers 14
const/4 v5, 0x0
invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v6
invoke-virtual {v6, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v3
if-nez v3, :cond_c
:cond_b
:goto_b
return v5
:cond_c
iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
:try_start_10
invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v6
const/16 v7, 0x40
invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v1
iget-object v7, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
array-length v8, v7
move v6, v5
:goto_1e
if-ge v6, v8, :cond_b
aget-object v4, v7, v6
const-string/jumbo v9, "30820295308201fea00302010202044b4ef1bf300d06092a864886f70d010105050030818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c74643020170d3130303131343130323831355a180f32303630303130323130323831355a30818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c746430819f300d06092a864886f70d010101050003818d00308189028181009d367115bc206c86c237bb56c8e9033111889b5691f051b28d1aa8e42b66b7413657635b44786ea7e85d451a12a82a331fced99c48717922170b7fc9bc1040753c0d38b4cf2b22094b1df7c55705b0989441e75913a1a8bd2bc591aa729a1013c277c01c98cbec7da5ad7778b2fad62b85ac29ca28ced588638c98d6b7df5a130203010001300d06092a864886f70d0101050500038181000ad4b4c4dec800bd8fd2991adfd70676fce8ba9692ae50475f60ec468d1b758a665e961a3aedbece9fd4d7ce9295cd83f5f19dc441a065689d9820faedbb7c4a4c4635f5ba1293f6da4b72ed32fb8795f736a20c95cda776402099054fccefb4a1a558664ab8d637288feceba9508aa907fc1fe2b1ae5a0dec954ed831c0bea4"
invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_2c
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_2c} :catch_34
move-result v9
if-eqz v9, :cond_31
const/4 v5, 0x1
goto :goto_b
:cond_31
add-int/lit8 v6, v6, 0x1
goto :goto_1e
:catch_34
move-exception v0
goto :goto_b
.end method
.method public bindRemoteSSOService(Landroid/app/Activity;Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;)V
.registers 7
new-instance v1, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;
invoke-direct {v1, p0, p1, p2}, Lcom/pinguo/camera360/login/model/SinaSso$SSOServerConnection;-><init>(Lcom/pinguo/camera360/login/model/SinaSso;Landroid/app/Activity;Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;)V
new-instance v2, Landroid/content/Intent;
const-string/jumbo v3, "com.sina.weibo.remotessoservice"
invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/4 v3, 0x1
invoke-virtual {p1, v2, v1, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v0
if-nez v0, :cond_17
invoke-interface {p2}, Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;->ssoFail()V
:cond_17
return-void
.end method