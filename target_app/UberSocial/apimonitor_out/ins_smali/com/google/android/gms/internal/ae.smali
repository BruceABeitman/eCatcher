.class public final Lcom/google/android/gms/internal/ae;
.super Ljava/lang/Object;
.field private final a:[Lcom/google/android/gms/ads/d;
.field private final b:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget-object v3, Lcom/google/android/gms/h;->AdsAttrs:[I
invoke-virtual {v0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_45
move v0, v1
:goto_1e
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_47
:goto_24
if-eqz v0, :cond_49
if-nez v1, :cond_49
invoke-static {v4}, Lcom/google/android/gms/internal/ae;->a(Ljava/lang/String;)[Lcom/google/android/gms/ads/d;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ae;->a:[Lcom/google/android/gms/ads/d;
:goto_2e
const/4 v0, 0x2
invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ae;->b:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->b:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_68
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Required XML attribute \"adUnitId\" was missing."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_45
move v0, v2
goto :goto_1e
:cond_47
move v1, v2
goto :goto_24
:cond_49
if-nez v0, :cond_54
if-eqz v1, :cond_54
invoke-static {v5}, Lcom/google/android/gms/internal/ae;->a(Ljava/lang/String;)[Lcom/google/android/gms/ads/d;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ae;->a:[Lcom/google/android/gms/ads/d;
goto :goto_2e
:cond_54
if-eqz v0, :cond_60
if-eqz v1, :cond_60
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_60
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Required XML attribute \"adSize\" was missing."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_68
return-void
.end method
.method private static a(Ljava/lang/String;)[Lcom/google/android/gms/ads/d;
.registers 11
const/4 v9, 0x1
const/4 v1, 0x0
const-string v0, "\\s*,\\s*"
invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
array-length v0, v4
new-array v5, v0, [Lcom/google/android/gms/ads/d;
move v0, v1
:goto_c
array-length v2, v4
if-ge v0, v2, :cond_e8
aget-object v2, v4, v0
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v6
const-string v2, "^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"
invoke-virtual {v6, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_81
const-string v2, "[xX]"
invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v7
aget-object v2, v7, v1
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
aput-object v2, v7, v1
aget-object v2, v7, v9
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
aput-object v2, v7, v9
:try_start_33
const-string v2, "FULL_WIDTH"
const/4 v3, 0x0
aget-object v3, v7, v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_56
const/4 v2, -0x1
move v3, v2
:goto_40
const-string v2, "AUTO_HEIGHT"
const/4 v8, 0x1
aget-object v8, v7, v8
invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_48
.catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_48} :catch_67
move-result v2
if-eqz v2, :cond_5f
const/4 v2, -0x2
:goto_4c
new-instance v6, Lcom/google/android/gms/ads/d;
invoke-direct {v6, v3, v2}, Lcom/google/android/gms/ads/d;-><init>(II)V
aput-object v6, v5, v0
:goto_53
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_56
const/4 v2, 0x0
:try_start_57
aget-object v2, v7, v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
move v3, v2
goto :goto_40
:cond_5f
const/4 v2, 0x1
aget-object v2, v7, v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_65
.catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_65} :catch_67
move-result v2
goto :goto_4c
:catch_67
move-exception v0
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not parse XML attribute \"adSize\": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_81
const-string v2, "BANNER"
invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_8e
sget-object v2, Lcom/google/android/gms/ads/d;->c:Lcom/google/android/gms/ads/d;
aput-object v2, v5, v0
goto :goto_53
:cond_8e
const-string v2, "FULL_BANNER"
invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_9b
sget-object v2, Lcom/google/android/gms/ads/d;->d:Lcom/google/android/gms/ads/d;
aput-object v2, v5, v0
goto :goto_53
:cond_9b
const-string v2, "LEADERBOARD"
invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_a8
sget-object v2, Lcom/google/android/gms/ads/d;->e:Lcom/google/android/gms/ads/d;
aput-object v2, v5, v0
goto :goto_53
:cond_a8
const-string v2, "MEDIUM_RECTANGLE"
invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b5
sget-object v2, Lcom/google/android/gms/ads/d;->f:Lcom/google/android/gms/ads/d;
aput-object v2, v5, v0
goto :goto_53
:cond_b5
const-string v2, "SMART_BANNER"
invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_c2
sget-object v2, Lcom/google/android/gms/ads/d;->h:Lcom/google/android/gms/ads/d;
aput-object v2, v5, v0
goto :goto_53
:cond_c2
const-string v2, "WIDE_SKYSCRAPER"
invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_cf
sget-object v2, Lcom/google/android/gms/ads/d;->g:Lcom/google/android/gms/ads/d;
aput-object v2, v5, v0
goto :goto_53
:cond_cf
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not parse XML attribute \"adSize\": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e8
array-length v0, v5
if-nez v0, :cond_104
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not parse XML attribute \"adSize\": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_104
return-object v5
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->b:Ljava/lang/String;
return-object v0
.end method
.method public a(Z)[Lcom/google/android/gms/ads/d;
.registers 4
if-nez p1, :cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->a:[Lcom/google/android/gms/ads/d;
array-length v0, v0
const/4 v1, 0x1
if-eq v0, v1, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The adSizes XML attribute is only allowed on PublisherAdViews."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->a:[Lcom/google/android/gms/ads/d;
return-object v0
.end method