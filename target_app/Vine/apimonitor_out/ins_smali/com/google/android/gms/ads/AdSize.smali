.class public final Lcom/google/android/gms/ads/AdSize;
.super Ljava/lang/Object;
.field public static final AUTO_HEIGHT:I = -0x2
.field public static final BANNER:Lcom/google/android/gms/ads/AdSize; = null
.field public static final FULL_BANNER:Lcom/google/android/gms/ads/AdSize; = null
.field public static final FULL_WIDTH:I = -0x1
.field public static final LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;
.field public static final LEADERBOARD:Lcom/google/android/gms/ads/AdSize;
.field public static final MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;
.field public static final SMART_BANNER:Lcom/google/android/gms/ads/AdSize;
.field public static final WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;
.field private final ks:I
.field private final kt:I
.field private final ku:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 5
const/16 v4, 0x140
new-instance v0, Lcom/google/android/gms/ads/AdSize;
const/16 v1, 0x32
const-string v2, "320x50_mb"
invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;
new-instance v0, Lcom/google/android/gms/ads/AdSize;
const/16 v1, 0x1d4
const/16 v2, 0x3c
const-string v3, "468x60_as"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;
new-instance v0, Lcom/google/android/gms/ads/AdSize;
const/16 v1, 0x64
const-string v2, "320x100_as"
invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;
new-instance v0, Lcom/google/android/gms/ads/AdSize;
const/16 v1, 0x2d8
const/16 v2, 0x5a
const-string v3, "728x90_as"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;
new-instance v0, Lcom/google/android/gms/ads/AdSize;
const/16 v1, 0x12c
const/16 v2, 0xfa
const-string v3, "300x250_as"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;
new-instance v0, Lcom/google/android/gms/ads/AdSize;
const/16 v1, 0xa0
const/16 v2, 0x258
const-string v3, "160x600_as"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;
new-instance v0, Lcom/google/android/gms/ads/AdSize;
const/4 v1, -0x1
const/4 v2, -0x2
const-string v3, "smart_banner"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;
return-void
.end method
.method public constructor <init>(II)V
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, -0x1
if-ne p1, v0, :cond_2b
const-string v0, "FULL"
:goto_a
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/4 v0, -0x2
if-ne p2, v0, :cond_30
const-string v0, "AUTO"
:goto_19
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_as"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V
return-void
:cond_2b
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
goto :goto_a
:cond_30
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
goto :goto_19
.end method
.method constructor <init>(IILjava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-gez p1, :cond_21
const/4 v0, -0x1
if-eq p1, v0, :cond_21
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid width for AdSize: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
if-gez p2, :cond_3f
const/4 v0, -0x2
if-eq p2, v0, :cond_3f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid height for AdSize: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3f
iput p1, p0, Lcom/google/android/gms/ads/AdSize;->ks:I
iput p2, p0, Lcom/google/android/gms/ads/AdSize;->kt:I
iput-object p3, p0, Lcom/google/android/gms/ads/AdSize;->ku:Ljava/lang/String;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:cond_4
:goto_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/android/gms/ads/AdSize;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/ads/AdSize;
iget v2, p0, Lcom/google/android/gms/ads/AdSize;->ks:I
iget v3, p1, Lcom/google/android/gms/ads/AdSize;->ks:I
if-ne v2, v3, :cond_23
iget v2, p0, Lcom/google/android/gms/ads/AdSize;->kt:I
iget v3, p1, Lcom/google/android/gms/ads/AdSize;->kt:I
if-ne v2, v3, :cond_23
iget-object v2, p0, Lcom/google/android/gms/ads/AdSize;->ku:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/ads/AdSize;->ku:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_23
move v0, v1
goto :goto_4
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/AdSize;->kt:I
return v0
.end method
.method public getHeightInPixels(Landroid/content/Context;)I
.registers 4
iget v0, p0, Lcom/google/android/gms/ads/AdSize;->kt:I
const/4 v1, -0x2
if-ne v0, v1, :cond_12
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/am;->b(Landroid/util/DisplayMetrics;)I
move-result v0
:goto_11
return v0
:cond_12
iget v0, p0, Lcom/google/android/gms/ads/AdSize;->kt:I
invoke-static {p1, v0}, Lcom/google/android/gms/internal/eu;->a(Landroid/content/Context;I)I
move-result v0
goto :goto_11
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/AdSize;->ks:I
return v0
.end method
.method public getWidthInPixels(Landroid/content/Context;)I
.registers 4
iget v0, p0, Lcom/google/android/gms/ads/AdSize;->ks:I
const/4 v1, -0x1
if-ne v0, v1, :cond_12
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/am;->a(Landroid/util/DisplayMetrics;)I
move-result v0
:goto_11
return v0
:cond_12
iget v0, p0, Lcom/google/android/gms/ads/AdSize;->ks:I
invoke-static {p1, v0}, Lcom/google/android/gms/internal/eu;->a(Landroid/content/Context;I)I
move-result v0
goto :goto_11
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/AdSize;->ku:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public isAutoHeight()Z
.registers 3
iget v0, p0, Lcom/google/android/gms/ads/AdSize;->kt:I
const/4 v1, -0x2
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public isFullWidth()Z
.registers 3
iget v0, p0, Lcom/google/android/gms/ads/AdSize;->ks:I
const/4 v1, -0x1
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/AdSize;->ku:Ljava/lang/String;
return-object v0
.end method