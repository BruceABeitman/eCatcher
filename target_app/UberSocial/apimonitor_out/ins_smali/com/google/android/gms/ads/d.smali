.class public final Lcom/google/android/gms/ads/d;
.super Ljava/lang/Object;
.field public static final a:I = -0x1
.field public static final b:I = -0x2
.field public static final c:Lcom/google/android/gms/ads/d;
.field public static final d:Lcom/google/android/gms/ads/d;
.field public static final e:Lcom/google/android/gms/ads/d;
.field public static final f:Lcom/google/android/gms/ads/d;
.field public static final g:Lcom/google/android/gms/ads/d;
.field public static final h:Lcom/google/android/gms/ads/d;
.field private final i:I
.field private final j:I
.field private final k:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Lcom/google/android/gms/ads/d;
const/16 v1, 0x140
const/16 v2, 0x32
const-string v3, "320x50_mb"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/d;->c:Lcom/google/android/gms/ads/d;
new-instance v0, Lcom/google/android/gms/ads/d;
const/16 v1, 0x1d4
const/16 v2, 0x3c
const-string v3, "468x60_as"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/d;->d:Lcom/google/android/gms/ads/d;
new-instance v0, Lcom/google/android/gms/ads/d;
const/16 v1, 0x2d8
const/16 v2, 0x5a
const-string v3, "728x90_as"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/d;->e:Lcom/google/android/gms/ads/d;
new-instance v0, Lcom/google/android/gms/ads/d;
const/16 v1, 0x12c
const/16 v2, 0xfa
const-string v3, "300x250_as"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/d;->f:Lcom/google/android/gms/ads/d;
new-instance v0, Lcom/google/android/gms/ads/d;
const/16 v1, 0xa0
const/16 v2, 0x258
const-string v3, "160x600_as"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/d;->g:Lcom/google/android/gms/ads/d;
new-instance v0, Lcom/google/android/gms/ads/d;
const/4 v1, -0x1
const/4 v2, -0x2
const-string v3, "smart_banner"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V
sput-object v0, Lcom/google/android/gms/ads/d;->h:Lcom/google/android/gms/ads/d;
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
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/d;-><init>(IILjava/lang/String;)V
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
iput p1, p0, Lcom/google/android/gms/ads/d;->i:I
iput p2, p0, Lcom/google/android/gms/ads/d;->j:I
iput-object p3, p0, Lcom/google/android/gms/ads/d;->k:Ljava/lang/String;
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/d;->j:I
return v0
.end method
.method public a(Landroid/content/Context;)I
.registers 4
iget v0, p0, Lcom/google/android/gms/ads/d;->j:I
const/4 v1, -0x2
if-ne v0, v1, :cond_12
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ab;->b(Landroid/util/DisplayMetrics;)I
move-result v0
:goto_11
return v0
:cond_12
iget v0, p0, Lcom/google/android/gms/ads/d;->j:I
invoke-static {p1, v0}, Lcom/google/android/gms/internal/dx;->a(Landroid/content/Context;I)I
move-result v0
goto :goto_11
.end method
.method public b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/d;->i:I
return v0
.end method
.method public b(Landroid/content/Context;)I
.registers 4
iget v0, p0, Lcom/google/android/gms/ads/d;->i:I
const/4 v1, -0x1
if-ne v0, v1, :cond_12
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ab;->a(Landroid/util/DisplayMetrics;)I
move-result v0
:goto_11
return v0
:cond_12
iget v0, p0, Lcom/google/android/gms/ads/d;->i:I
invoke-static {p1, v0}, Lcom/google/android/gms/internal/dx;->a(Landroid/content/Context;I)I
move-result v0
goto :goto_11
.end method
.method public c()Z
.registers 3
iget v0, p0, Lcom/google/android/gms/ads/d;->j:I
const/4 v1, -0x2
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public d()Z
.registers 3
iget v0, p0, Lcom/google/android/gms/ads/d;->i:I
const/4 v1, -0x1
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
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
instance-of v2, p1, Lcom/google/android/gms/ads/d;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/ads/d;
iget v2, p0, Lcom/google/android/gms/ads/d;->i:I
iget v3, p1, Lcom/google/android/gms/ads/d;->i:I
if-ne v2, v3, :cond_23
iget v2, p0, Lcom/google/android/gms/ads/d;->j:I
iget v3, p1, Lcom/google/android/gms/ads/d;->j:I
if-ne v2, v3, :cond_23
iget-object v2, p0, Lcom/google/android/gms/ads/d;->k:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/ads/d;->k:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_23
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/d;->k:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/d;->k:Ljava/lang/String;
return-object v0
.end method