.class public final Lcom/google/android/gms/internal/lh;
.super Ljava/lang/Object;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:[Ljava/lang/String;
.field private d:Lcom/google/android/gms/internal/jb;
.field private final e:Lcom/google/android/gms/internal/ht;
.method public constructor <init>(Lcom/google/android/gms/internal/jb;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "googleads.g.doubleclick.net"
iput-object v0, p0, Lcom/google/android/gms/internal/lh;->a:Ljava/lang/String;
const-string v0, "/pagead/ads"
iput-object v0, p0, Lcom/google/android/gms/internal/lh;->b:Ljava/lang/String;
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, ".doubleclick.net"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, ".googleadservices.com"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, ".googlesyndication.com"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/google/android/gms/internal/lh;->c:[Ljava/lang/String;
new-instance v0, Lcom/google/android/gms/internal/ht;
invoke-direct {v0}, Lcom/google/android/gms/internal/ht;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/lh;->e:Lcom/google/android/gms/internal/ht;
iput-object p1, p0, Lcom/google/android/gms/internal/lh;->d:Lcom/google/android/gms/internal/jb;
return-void
.end method
.method private a(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
.registers 11
const/4 v4, -0x1
:try_start_1
const-string v0, "ms"
invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1a
new-instance v0, Lcom/google/android/gms/internal/m;
const-string v1, "Query parameter already exists: ms"
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/m;-><init>(Ljava/lang/String;)V
throw v0
:catch_11
:try_end_11
.catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_11} :catch_11
move-exception v0
new-instance v0, Lcom/google/android/gms/internal/m;
const-string v1, "Provided Uri is not in a valid state"
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/m;-><init>(Ljava/lang/String;)V
throw v0
:try_start_1a
:cond_1a
iget-object v0, p0, Lcom/google/android/gms/internal/lh;->d:Lcom/google/android/gms/internal/jb;
invoke-interface {v0, p2, p3}, Lcom/google/android/gms/internal/jb;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "ms"
invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v3
const-string v0, "&adurl"
invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-ne v0, v4, :cond_34
const-string v0, "?adurl"
invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
:cond_34
if-eq v0, v4, :cond_69
new-instance v4, Ljava/lang/StringBuilder;
const/4 v5, 0x0
add-int/lit8 v6, v0, 0x1
invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, "="
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "&"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
add-int/lit8 v0, v0, 0x1
invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
:goto_68
return-object v0
:cond_69
invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
:try_end_74
.catch Ljava/lang/UnsupportedOperationException; {:try_start_1a .. :try_end_74} :catch_11
move-result-object v0
goto :goto_68
.end method
.method public final a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
.registers 5
:try_start_0
const-string v0, "ai"
invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/lh;->a(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
:try_end_9
.catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
return-object v0
:catch_b
move-exception v0
new-instance v0, Lcom/google/android/gms/internal/m;
const-string v1, "Provided Uri is not in a valid state"
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/m;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final a()Lcom/google/android/gms/internal/jb;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/lh;->d:Lcom/google/android/gms/internal/jb;
return-object v0
.end method
.method public final a(Landroid/view/MotionEvent;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/lh;->d:Lcom/google/android/gms/internal/jb;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/jb;->a(Landroid/view/MotionEvent;)V
return-void
.end method
.method public final a(Landroid/net/Uri;)Z
.registers 8
const/4 v0, 0x0
if-nez p1, :cond_9
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:try_start_9
:cond_9
invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/lh;->c:[Ljava/lang/String;
array-length v4, v3
move v1, v0
:goto_11
if-ge v1, v4, :cond_1c
aget-object v5, v3, v1
invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
:try_end_18
.catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_18} :catch_20
move-result v5
if-eqz v5, :cond_1d
const/4 v0, 0x1
:goto_1c
:cond_1c
return v0
:cond_1d
add-int/lit8 v1, v1, 0x1
goto :goto_11
:catch_20
move-exception v1
goto :goto_1c
.end method