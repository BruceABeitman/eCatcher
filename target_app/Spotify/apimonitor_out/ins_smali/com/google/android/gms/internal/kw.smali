.class public final Lcom/google/android/gms/internal/kw;
.super Lcom/google/android/gms/internal/j;
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/li;Lcom/google/android/gms/internal/lj;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/li;Lcom/google/android/gms/internal/lj;)V
return-void
.end method
.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/kw;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/et;
invoke-direct {v0}, Lcom/google/android/gms/internal/et;-><init>()V
invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/kw;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/li;)V
new-instance v1, Lcom/google/android/gms/internal/kw;
new-instance v2, Lcom/google/android/gms/internal/lk;
invoke-direct {v2}, Lcom/google/android/gms/internal/lk;-><init>()V
invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/internal/kw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/li;Lcom/google/android/gms/internal/lj;)V
return-object v1
.end method
.method private d(Landroid/content/Context;)Lcom/google/android/gms/internal/kx;
.registers 10
const/4 v0, 0x0
const/16 v7, 0x10
:try_start_3
invoke-static {p1}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;
:try_end_6
.catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_3 .. :try_end_6} :catch_4d
move-result-object v3
invoke-virtual {v3}, Lcom/google/android/gms/ads/a/b;->a()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_64
const-string v1, "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"
invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_64
new-array v4, v7, [B
move v1, v0
:goto_18
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v5
if-ge v0, v5, :cond_54
const/16 v5, 0x8
if-eq v0, v5, :cond_2e
const/16 v5, 0xd
if-eq v0, v5, :cond_2e
const/16 v5, 0x12
if-eq v0, v5, :cond_2e
const/16 v5, 0x17
if-ne v0, v5, :cond_30
:cond_2e
add-int/lit8 v0, v0, 0x1
:cond_30
invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I
move-result v5
shl-int/lit8 v5, v5, 0x4
add-int/lit8 v6, v0, 0x1
invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C
move-result v6
invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I
move-result v6
add-int/2addr v5, v6
int-to-byte v5, v5
aput-byte v5, v4, v1
add-int/lit8 v1, v1, 0x1
add-int/lit8 v0, v0, 0x2
goto :goto_18
:catch_4d
move-exception v0
new-instance v1, Ljava/io/IOException;
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_54
iget-object v0, p0, Lcom/google/android/gms/internal/kw;->c:Lcom/google/android/gms/internal/li;
invoke-interface {v0, v4}, Lcom/google/android/gms/internal/li;->a([B)Ljava/lang/String;
move-result-object v0
:goto_5a
new-instance v1, Lcom/google/android/gms/internal/kx;
invoke-virtual {v3}, Lcom/google/android/gms/ads/a/b;->b()Z
move-result v2
invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/kx;-><init>(Lcom/google/android/gms/internal/kw;Ljava/lang/String;Z)V
return-object v1
:cond_64
move-object v0, v2
goto :goto_5a
.end method
.method protected final b(Landroid/content/Context;)V
.registers 7
const-wide/16 v0, 0x1
invoke-super {p0, p1}, Lcom/google/android/gms/internal/j;->b(Landroid/content/Context;)V
:try_start_5
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/kw;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/kx;
:try_end_8
.catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_5 .. :try_end_8} :catch_2e
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_20
move-result-object v2
const/16 v3, 0x1c
:try_start_b
invoke-virtual {v2}, Lcom/google/android/gms/internal/kx;->b()Z
move-result v4
if-eqz v4, :cond_2b
:goto_11
invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/kw;->a(IJ)V
invoke-virtual {v2}, Lcom/google/android/gms/internal/kx;->a()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1f
const/16 v1, 0x1e
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/kw;->a(ILjava/lang/String;)V
:goto_1f
:cond_1f
return-void
:catch_20
move-exception v0
const/16 v0, 0x1c
const-wide/16 v1, 0x1
invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/kw;->a(IJ)V
:try_end_28
.catch Ljava/io/IOException; {:try_start_b .. :try_end_28} :catch_29
goto :goto_1f
:catch_29
move-exception v0
goto :goto_1f
:cond_2b
const-wide/16 v0, 0x0
goto :goto_11
:catch_2e
move-exception v0
goto :goto_1f
.end method