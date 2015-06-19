.class final Lcom/google/android/gms/tagmanager/aq;
.super Ljava/lang/Object;
.method private static a(Lcom/google/android/gms/tagmanager/z;)Lcom/google/android/gms/tagmanager/z;
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dn;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->a(Lcom/google/android/gms/internal/dn;)Ljava/lang/String;
move-result-object v0
const-string v1, "UTF-8"
invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "\\+"
const-string v2, "%20"
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v0, Lcom/google/android/gms/tagmanager/z;
invoke-static {v1}, Lcom/google/android/gms/tagmanager/ao;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;
move-result-object v1
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/z;->b()Z
move-result v2
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V
:try_end_25
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_25} :catch_27
move-object p0, v0
:goto_26
return-object p0
:catch_27
move-exception v0
const-string v1, "Escape URI: unsupported encoding"
invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_26
.end method
.method static varargs a(Lcom/google/android/gms/tagmanager/z;[I)Lcom/google/android/gms/tagmanager/z;
.registers 8
array-length v3, p1
const/4 v0, 0x0
move v2, v0
move-object v1, p0
:goto_4
if-ge v2, v3, :cond_3d
aget v4, p1, v2
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dn;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->c(Lcom/google/android/gms/internal/dn;)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Ljava/lang/String;
if-nez v0, :cond_21
const-string v0, "Escaping can only be applied to strings."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
move-object v0, v1
:goto_1c
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_4
:cond_21
packed-switch v4, :pswitch_data_3e
new-instance v0, Ljava/lang/StringBuilder;
const-string v5, "Unsupported Value Escaping: "
invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
move-object v0, v1
goto :goto_1c
:pswitch_38
invoke-static {v1}, Lcom/google/android/gms/tagmanager/aq;->a(Lcom/google/android/gms/tagmanager/z;)Lcom/google/android/gms/tagmanager/z;
move-result-object v0
goto :goto_1c
:cond_3d
return-object v1
:pswitch_data_3e
.packed-switch 0xc
:pswitch_38
.end packed-switch
.end method