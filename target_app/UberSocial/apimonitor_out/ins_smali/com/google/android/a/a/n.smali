.class  Lcom/google/android/a/a/n;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "LicenseValidator"
.field private static final b:I = 0x0
.field private static final c:I = 0x1
.field private static final d:I = 0x2
.field private static final e:I = 0x3
.field private static final f:I = 0x4
.field private static final g:I = 0x5
.field private static final h:I = 0x101
.field private static final i:I = 0x102
.field private static final j:I = 0x103
.field private static final q:Ljava/lang/String; = "SHA1withRSA"
.field private final k:Lcom/google/android/a/a/q;
.field private final l:Lcom/google/android/a/a/m;
.field private final m:I
.field private final n:Ljava/lang/String;
.field private final o:Ljava/lang/String;
.field private final p:Lcom/google/android/a/a/d;
.method constructor <init>(Lcom/google/android/a/a/q;Lcom/google/android/a/a/d;Lcom/google/android/a/a/m;ILjava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/a/a/n;->k:Lcom/google/android/a/a/q;
iput-object p2, p0, Lcom/google/android/a/a/n;->p:Lcom/google/android/a/a/d;
iput-object p3, p0, Lcom/google/android/a/a/n;->l:Lcom/google/android/a/a/m;
iput p4, p0, Lcom/google/android/a/a/n;->m:I
iput-object p5, p0, Lcom/google/android/a/a/n;->n:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/a/a/n;->o:Ljava/lang/String;
return-void
.end method
.method private a(I)V
.registers 3
iget-object v0, p0, Lcom/google/android/a/a/n;->l:Lcom/google/android/a/a/m;
invoke-interface {v0, p1}, Lcom/google/android/a/a/m;->c(I)V
return-void
.end method
.method private a(ILcom/google/android/a/a/s;)V
.registers 4
iget-object v0, p0, Lcom/google/android/a/a/n;->k:Lcom/google/android/a/a/q;
invoke-interface {v0, p1, p2}, Lcom/google/android/a/a/q;->a(ILcom/google/android/a/a/s;)V
iget-object v0, p0, Lcom/google/android/a/a/n;->k:Lcom/google/android/a/a/q;
invoke-interface {v0}, Lcom/google/android/a/a/q;->g()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/google/android/a/a/n;->l:Lcom/google/android/a/a/m;
invoke-interface {v0, p1}, Lcom/google/android/a/a/m;->a(I)V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/google/android/a/a/n;->l:Lcom/google/android/a/a/m;
invoke-interface {v0, p1}, Lcom/google/android/a/a/m;->b(I)V
goto :goto_12
.end method
.method private d()V
.registers 3
iget-object v0, p0, Lcom/google/android/a/a/n;->l:Lcom/google/android/a/a/m;
const/16 v1, 0x231
invoke-interface {v0, v1}, Lcom/google/android/a/a/m;->b(I)V
return-void
.end method
.method public a()Lcom/google/android/a/a/m;
.registers 2
iget-object v0, p0, Lcom/google/android/a/a/n;->l:Lcom/google/android/a/a/m;
return-object v0
.end method
.method public a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
.registers 11
const/4 v0, 0x0
const/4 v5, 0x2
const/4 v4, 0x1
const/16 v3, 0x123
if-eqz p2, :cond_b
if-eq p2, v4, :cond_b
if-ne p2, v5, :cond_be
:try_start_b
:cond_b
const-string v0, "SHA1withRSA"
invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V
invoke-static {p4}, Lcom/google/android/a/a/a/a;->a(Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z
move-result v0
if-nez v0, :cond_50
const-string v0, "LicenseValidator"
const-string v1, "Signature verification failed."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V
:goto_2f
:try_end_2f
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_2f} :catch_30
.catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_2f} :catch_37
.catch Ljava/security/SignatureException; {:try_start_b .. :try_end_2f} :catch_3d
.catch Lcom/google/android/a/a/a/b; {:try_start_b .. :try_end_2f} :catch_44
return-void
:catch_30
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_37
move-exception v0
const/4 v0, 0x5
invoke-direct {p0, v0}, Lcom/google/android/a/a/n;->a(I)V
goto :goto_2f
:catch_3d
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_44
move-exception v0
const-string v0, "LicenseValidator"
const-string v1, "Could not Base64-decode signature."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V
goto :goto_2f
:cond_50
:try_start_50
invoke-static {p3}, Lcom/google/android/a/a/s;->a(Ljava/lang/String;)Lcom/google/android/a/a/s;
:try_end_53
.catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_53} :catch_63
move-result-object v0
iget v1, v0, Lcom/google/android/a/a/s;->a:I
if-eq v1, p2, :cond_6f
const-string v0, "LicenseValidator"
const-string v1, "Response codes don\'t match."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V
goto :goto_2f
:catch_63
move-exception v0
const-string v0, "LicenseValidator"
const-string v1, "Could not parse response."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V
goto :goto_2f
:cond_6f
iget v1, v0, Lcom/google/android/a/a/s;->b:I
iget v2, p0, Lcom/google/android/a/a/n;->m:I
if-eq v1, v2, :cond_80
const-string v0, "LicenseValidator"
const-string v1, "Nonce doesn\'t match."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V
goto :goto_2f
:cond_80
iget-object v1, v0, Lcom/google/android/a/a/s;->c:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/a/a/n;->n:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_95
const-string v0, "LicenseValidator"
const-string v1, "Package name doesn\'t match."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V
goto :goto_2f
:cond_95
iget-object v1, v0, Lcom/google/android/a/a/s;->d:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/a/a/n;->o:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_aa
const-string v0, "LicenseValidator"
const-string v1, "Version codes don\'t match."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V
goto :goto_2f
:cond_aa
iget-object v1, v0, Lcom/google/android/a/a/s;->e:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_bf
const-string v0, "LicenseValidator"
const-string v1, "User identifier is empty."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V
goto/16 :goto_2f
:cond_be
move-object v1, v0
:cond_bf
sparse-switch p2, :sswitch_data_114
const-string v0, "LicenseValidator"
const-string v1, "Unknown response code for license check."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/google/android/a/a/n;->d()V
goto/16 :goto_2f
:sswitch_ce
iget-object v2, p0, Lcom/google/android/a/a/n;->p:Lcom/google/android/a/a/d;
invoke-interface {v2, v1}, Lcom/google/android/a/a/d;->a(Ljava/lang/String;)I
move-result v1
invoke-direct {p0, v1, v0}, Lcom/google/android/a/a/n;->a(ILcom/google/android/a/a/s;)V
goto/16 :goto_2f
:sswitch_d9
const/16 v1, 0x231
invoke-direct {p0, v1, v0}, Lcom/google/android/a/a/n;->a(ILcom/google/android/a/a/s;)V
goto/16 :goto_2f
:sswitch_e0
const-string v1, "LicenseValidator"
const-string v2, "Error contacting licensing server."
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0, v3, v0}, Lcom/google/android/a/a/n;->a(ILcom/google/android/a/a/s;)V
goto/16 :goto_2f
:sswitch_ec
const-string v1, "LicenseValidator"
const-string v2, "An error has occurred on the licensing server."
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0, v3, v0}, Lcom/google/android/a/a/n;->a(ILcom/google/android/a/a/s;)V
goto/16 :goto_2f
:sswitch_f8
const-string v1, "LicenseValidator"
const-string v2, "Licensing server is refusing to talk to this device, over quota."
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0, v3, v0}, Lcom/google/android/a/a/n;->a(ILcom/google/android/a/a/s;)V
goto/16 :goto_2f
:sswitch_104
invoke-direct {p0, v4}, Lcom/google/android/a/a/n;->a(I)V
goto/16 :goto_2f
:sswitch_109
invoke-direct {p0, v5}, Lcom/google/android/a/a/n;->a(I)V
goto/16 :goto_2f
:sswitch_10e
const/4 v0, 0x3
invoke-direct {p0, v0}, Lcom/google/android/a/a/n;->a(I)V
goto/16 :goto_2f
:sswitch_data_114
.sparse-switch
0x0 -> :sswitch_ce
0x1 -> :sswitch_d9
0x2 -> :sswitch_ce
0x3 -> :sswitch_10e
0x4 -> :sswitch_ec
0x5 -> :sswitch_f8
0x101 -> :sswitch_e0
0x102 -> :sswitch_104
0x103 -> :sswitch_109
.end sparse-switch
.end method
.method public b()I
.registers 2
iget v0, p0, Lcom/google/android/a/a/n;->m:I
return v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/a/a/n;->n:Ljava/lang/String;
return-object v0
.end method