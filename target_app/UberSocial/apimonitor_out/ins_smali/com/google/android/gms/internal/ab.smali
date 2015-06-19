.class public final Lcom/google/android/gms/internal/ab;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/c;
.field public final a:I
.field public final b:Ljava/lang/String;
.field public final c:I
.field public final d:I
.field public final e:Z
.field public final f:I
.field public final g:I
.field public final h:[Lcom/google/android/gms/internal/ab;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/c;
invoke-direct {v0}, Lcom/google/android/gms/internal/c;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ab;->CREATOR:Lcom/google/android/gms/internal/c;
return-void
.end method
.method public constructor <init>()V
.registers 10
const/4 v3, 0x0
const/4 v1, 0x2
const-string v2, "interstitial_mb"
const/4 v5, 0x1
const/4 v8, 0x0
move-object v0, p0
move v4, v3
move v6, v3
move v7, v3
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ab;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/ab;)V
return-void
.end method
.method constructor <init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/ab;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/ab;->a:I
iput-object p2, p0, Lcom/google/android/gms/internal/ab;->b:Ljava/lang/String;
iput p3, p0, Lcom/google/android/gms/internal/ab;->c:I
iput p4, p0, Lcom/google/android/gms/internal/ab;->d:I
iput-boolean p5, p0, Lcom/google/android/gms/internal/ab;->e:Z
iput p6, p0, Lcom/google/android/gms/internal/ab;->f:I
iput p7, p0, Lcom/google/android/gms/internal/ab;->g:I
iput-object p8, p0, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V
.registers 5
const/4 v0, 0x1
new-array v0, v0, [Lcom/google/android/gms/ads/d;
const/4 v1, 0x0
aput-object p2, v0, v1
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V
.registers 11
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
aget-object v6, p2, v2
const/4 v0, 0x2
iput v0, p0, Lcom/google/android/gms/internal/ab;->a:I
iput-boolean v2, p0, Lcom/google/android/gms/internal/ab;->e:Z
invoke-virtual {v6}, Lcom/google/android/gms/ads/d;->b()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/ab;->f:I
invoke-virtual {v6}, Lcom/google/android/gms/ads/d;->a()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/ab;->c:I
iget v0, p0, Lcom/google/android/gms/internal/ab;->f:I
const/4 v3, -0x1
if-ne v0, v3, :cond_84
move v0, v1
:goto_1e
iget v3, p0, Lcom/google/android/gms/internal/ab;->c:I
const/4 v4, -0x2
if-ne v3, v4, :cond_86
move v3, v1
:goto_24
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v7
if-eqz v0, :cond_88
invoke-static {v7}, Lcom/google/android/gms/internal/ab;->a(Landroid/util/DisplayMetrics;)I
move-result v4
iput v4, p0, Lcom/google/android/gms/internal/ab;->g:I
iget v4, p0, Lcom/google/android/gms/internal/ab;->g:I
int-to-float v4, v4
iget v5, v7, Landroid/util/DisplayMetrics;->density:F
div-float/2addr v4, v5
float-to-int v4, v4
move v5, v4
:goto_3c
if-eqz v3, :cond_94
invoke-static {v7}, Lcom/google/android/gms/internal/ab;->c(Landroid/util/DisplayMetrics;)I
move-result v4
:goto_42
invoke-static {v7, v4}, Lcom/google/android/gms/internal/dx;->a(Landroid/util/DisplayMetrics;I)I
move-result v7
iput v7, p0, Lcom/google/android/gms/internal/ab;->d:I
if-nez v0, :cond_4c
if-eqz v3, :cond_97
:cond_4c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "x"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "_as"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ab;->b:Ljava/lang/String;
:goto_6b
array-length v0, p2
if-le v0, v1, :cond_9e
array-length v0, p2
new-array v0, v0, [Lcom/google/android/gms/internal/ab;
iput-object v0, p0, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;
:goto_73
array-length v0, p2
if-ge v2, v0, :cond_a1
iget-object v0, p0, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;
new-instance v1, Lcom/google/android/gms/internal/ab;
aget-object v3, p2, v2
invoke-direct {v1, p1, v3}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V
aput-object v1, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_73
:cond_84
move v0, v2
goto :goto_1e
:cond_86
move v3, v2
goto :goto_24
:cond_88
iget v4, p0, Lcom/google/android/gms/internal/ab;->f:I
iget v5, p0, Lcom/google/android/gms/internal/ab;->f:I
invoke-static {v7, v5}, Lcom/google/android/gms/internal/dx;->a(Landroid/util/DisplayMetrics;I)I
move-result v5
iput v5, p0, Lcom/google/android/gms/internal/ab;->g:I
move v5, v4
goto :goto_3c
:cond_94
iget v4, p0, Lcom/google/android/gms/internal/ab;->c:I
goto :goto_42
:cond_97
invoke-virtual {v6}, Lcom/google/android/gms/ads/d;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ab;->b:Ljava/lang/String;
goto :goto_6b
:cond_9e
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;
:cond_a1
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/internal/ab;[Lcom/google/android/gms/internal/ab;)V
.registers 12
const/4 v1, 0x2
iget-object v2, p1, Lcom/google/android/gms/internal/ab;->b:Ljava/lang/String;
iget v3, p1, Lcom/google/android/gms/internal/ab;->c:I
iget v4, p1, Lcom/google/android/gms/internal/ab;->d:I
iget-boolean v5, p1, Lcom/google/android/gms/internal/ab;->e:Z
iget v6, p1, Lcom/google/android/gms/internal/ab;->f:I
iget v7, p1, Lcom/google/android/gms/internal/ab;->g:I
move-object v0, p0
move-object v8, p2
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ab;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/ab;)V
return-void
.end method
.method public static a(Landroid/util/DisplayMetrics;)I
.registers 2
iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I
return v0
.end method
.method public static b(Landroid/util/DisplayMetrics;)I
.registers 3
invoke-static {p0}, Lcom/google/android/gms/internal/ab;->c(Landroid/util/DisplayMetrics;)I
move-result v0
int-to-float v0, v0
iget v1, p0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method private static c(Landroid/util/DisplayMetrics;)I
.registers 3
iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I
int-to-float v0, v0
iget v1, p0, Landroid/util/DisplayMetrics;->density:F
div-float/2addr v0, v1
float-to-int v0, v0
const/16 v1, 0x190
if-gt v0, v1, :cond_e
const/16 v0, 0x20
:goto_d
return v0
:cond_e
const/16 v1, 0x2d0
if-gt v0, v1, :cond_15
const/16 v0, 0x32
goto :goto_d
:cond_15
const/16 v0, 0x5a
goto :goto_d
.end method
.method public a()Lcom/google/android/gms/ads/d;
.registers 4
iget v0, p0, Lcom/google/android/gms/internal/ab;->f:I
iget v1, p0, Lcom/google/android/gms/internal/ab;->c:I
iget-object v2, p0, Lcom/google/android/gms/internal/ab;->b:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/f;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/d;
move-result-object v0
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/ab;Landroid/os/Parcel;I)V
return-void
.end method