.class  Lcom/google/android/gms/tagmanager/cc;
.super Ljava/lang/Object;
.field private static a:Lcom/google/android/gms/tagmanager/cc;
.field private volatile b:Lcom/google/android/gms/tagmanager/cd;
.field private volatile c:Ljava/lang/String;
.field private volatile d:Ljava/lang/String;
.field private volatile e:Ljava/lang/String;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cc;->e()V
return-void
.end method
.method static a()Lcom/google/android/gms/tagmanager/cc;
.registers 2
const-class v1, Lcom/google/android/gms/tagmanager/cc;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/tagmanager/cc;->a:Lcom/google/android/gms/tagmanager/cc;
if-nez v0, :cond_e
new-instance v0, Lcom/google/android/gms/tagmanager/cc;
invoke-direct {v0}, Lcom/google/android/gms/tagmanager/cc;-><init>()V
sput-object v0, Lcom/google/android/gms/tagmanager/cc;->a:Lcom/google/android/gms/tagmanager/cc;
:cond_e
sget-object v0, Lcom/google/android/gms/tagmanager/cc;->a:Lcom/google/android/gms/tagmanager/cc;
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v0
.end method
.method private a(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const-string v0, "&"
invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
aget-object v0, v0, v1
const-string v1, "="
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
aget-object v0, v0, v1
return-object v0
.end method
.method private b(Landroid/net/Uri;)Ljava/lang/String;
.registers 5
invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;
move-result-object v0
const-string v1, "&gtm_debug=x"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method declared-synchronized a(Landroid/net/Uri;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
monitor-enter p0
:try_start_3
invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "UTF-8"
invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_72
.catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_c} :catch_6a
move-result-object v2
:try_start_d
const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"
invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_75
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Container preview url: "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V
const-string v1, ".*?&gtm_debug=x$"
invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_6d
sget-object v1, Lcom/google/android/gms/tagmanager/cd;->c:Lcom/google/android/gms/tagmanager/cd;
iput-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->b:Lcom/google/android/gms/tagmanager/cd;
:goto_37
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/cc;->b(Landroid/net/Uri;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->e:Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->b:Lcom/google/android/gms/tagmanager/cd;
sget-object v2, Lcom/google/android/gms/tagmanager/cd;->b:Lcom/google/android/gms/tagmanager/cd;
if-eq v1, v2, :cond_49
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->b:Lcom/google/android/gms/tagmanager/cd;
sget-object v2, Lcom/google/android/gms/tagmanager/cd;->c:Lcom/google/android/gms/tagmanager/cd;
if-ne v1, v2, :cond_60
:cond_49
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "/r?"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/tagmanager/cc;->e:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->d:Ljava/lang/String;
:cond_60
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->e:Ljava/lang/String;
invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/cc;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->c:Ljava/lang/String;
:try_end_68
.catchall {:try_start_d .. :try_end_68} :catchall_72
:goto_68
monitor-exit p0
return v0
:catch_6a
move-exception v0
move v0, v1
goto :goto_68
:cond_6d
:try_start_6d
sget-object v1, Lcom/google/android/gms/tagmanager/cd;->b:Lcom/google/android/gms/tagmanager/cd;
iput-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->b:Lcom/google/android/gms/tagmanager/cd;
:try_end_71
.catchall {:try_start_6d .. :try_end_71} :catchall_72
goto :goto_37
:catchall_72
move-exception v0
monitor-exit p0
throw v0
:try_start_75
:cond_75
const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"
invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_af
invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/cc;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/tagmanager/cc;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_ad
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Exit preview mode for container: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/tagmanager/cc;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V
sget-object v1, Lcom/google/android/gms/tagmanager/cd;->a:Lcom/google/android/gms/tagmanager/cd;
iput-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->b:Lcom/google/android/gms/tagmanager/cd;
const/4 v1, 0x0
iput-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->d:Ljava/lang/String;
goto :goto_68
:cond_ad
move v0, v1
goto :goto_68
:cond_af
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Invalid preview uri: "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V
:try_end_c5
.catchall {:try_start_75 .. :try_end_c5} :catchall_72
move v0, v1
goto :goto_68
.end method
.method  b()Lcom/google/android/gms/tagmanager/cd;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cc;->b:Lcom/google/android/gms/tagmanager/cd;
return-object v0
.end method
.method  c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cc;->d:Ljava/lang/String;
return-object v0
.end method
.method  d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cc;->c:Ljava/lang/String;
return-object v0
.end method
.method  e()V
.registers 3
const/4 v1, 0x0
sget-object v0, Lcom/google/android/gms/tagmanager/cd;->a:Lcom/google/android/gms/tagmanager/cd;
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cc;->b:Lcom/google/android/gms/tagmanager/cd;
iput-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->d:Ljava/lang/String;
iput-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->c:Ljava/lang/String;
iput-object v1, p0, Lcom/google/android/gms/tagmanager/cc;->e:Ljava/lang/String;
return-void
.end method