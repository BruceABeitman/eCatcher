.class public Lcom/google/android/gms/internal/hd;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/jc;
.field private final a:I
.field private final b:Ljava/lang/String;
.field private final c:J
.field private final d:S
.field private final e:D
.field private final f:D
.field private final g:F
.field private final h:I
.field private final i:I
.field private final j:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/jc;
invoke-direct {v0}, Lcom/google/android/gms/internal/jc;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/hd;->CREATOR:Lcom/google/android/gms/internal/jc;
return-void
.end method
.method public constructor <init>(ILjava/lang/String;ISDDFJII)V
.registers 18
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p2, :cond_d
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
const/16 v2, 0x64
if-le v1, v2, :cond_22
:cond_d
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "requestId is null or too long: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_22
const/4 v1, 0x0
cmpg-float v1, p9, v1
if-gtz v1, :cond_3c
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "invalid radius: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_3c
const-wide v1, 0x4056800000000000L
cmpl-double v1, p5, v1
if-gtz v1, :cond_4e
const-wide v1, -0x3fa9800000000000L
cmpg-double v1, p5, v1
if-gez v1, :cond_63
:cond_4e
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "invalid latitude: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_63
const-wide v1, 0x4066800000000000L
cmpl-double v1, p7, v1
if-gtz v1, :cond_75
const-wide v1, -0x3f99800000000000L
cmpg-double v1, p7, v1
if-gez v1, :cond_8a
:cond_75
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "invalid longitude: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_8a
and-int/lit8 v1, p3, 0x7
if-nez v1, :cond_a3
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "No supported transition specified: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a3
iput p1, p0, Lcom/google/android/gms/internal/hd;->a:I
iput-short p4, p0, Lcom/google/android/gms/internal/hd;->d:S
iput-object p2, p0, Lcom/google/android/gms/internal/hd;->b:Ljava/lang/String;
iput-wide p5, p0, Lcom/google/android/gms/internal/hd;->e:D
iput-wide p7, p0, Lcom/google/android/gms/internal/hd;->f:D
iput p9, p0, Lcom/google/android/gms/internal/hd;->g:F
iput-wide p10, p0, Lcom/google/android/gms/internal/hd;->c:J
iput v1, p0, Lcom/google/android/gms/internal/hd;->h:I
move/from16 v0, p12
iput v0, p0, Lcom/google/android/gms/internal/hd;->i:I
move/from16 v0, p13
iput v0, p0, Lcom/google/android/gms/internal/hd;->j:I
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/hd;->a:I
return v0
.end method
.method public final b()S
.registers 2
iget-short v0, p0, Lcom/google/android/gms/internal/hd;->d:S
return v0
.end method
.method public final c()D
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/internal/hd;->e:D
return-wide v0
.end method
.method public final d()D
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/internal/hd;->f:D
return-wide v0
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/hd;->CREATOR:Lcom/google/android/gms/internal/jc;
const/4 v0, 0x0
return v0
.end method
.method public final e()F
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/hd;->g:F
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
instance-of v2, p1, Lcom/google/android/gms/internal/hd;
if-nez v2, :cond_f
move v0, v1
goto :goto_4
:cond_f
check-cast p1, Lcom/google/android/gms/internal/hd;
iget v2, p0, Lcom/google/android/gms/internal/hd;->g:F
iget v3, p1, Lcom/google/android/gms/internal/hd;->g:F
cmpl-float v2, v2, v3
if-eqz v2, :cond_1b
move v0, v1
goto :goto_4
:cond_1b
iget-wide v2, p0, Lcom/google/android/gms/internal/hd;->e:D
iget-wide v4, p1, Lcom/google/android/gms/internal/hd;->e:D
cmpl-double v2, v2, v4
if-eqz v2, :cond_25
move v0, v1
goto :goto_4
:cond_25
iget-wide v2, p0, Lcom/google/android/gms/internal/hd;->f:D
iget-wide v4, p1, Lcom/google/android/gms/internal/hd;->f:D
cmpl-double v2, v2, v4
if-eqz v2, :cond_2f
move v0, v1
goto :goto_4
:cond_2f
iget-short v2, p0, Lcom/google/android/gms/internal/hd;->d:S
iget-short v3, p1, Lcom/google/android/gms/internal/hd;->d:S
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hd;->b:Ljava/lang/String;
return-object v0
.end method
.method public final g()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/internal/hd;->c:J
return-wide v0
.end method
.method public final h()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/hd;->h:I
return v0
.end method
.method public hashCode()I
.registers 6
const/16 v4, 0x20
iget-wide v0, p0, Lcom/google/android/gms/internal/hd;->e:D
invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v0
ushr-long v2, v0, v4
xor-long/2addr v0, v2
long-to-int v0, v0
add-int/lit8 v0, v0, 0x1f
iget-wide v1, p0, Lcom/google/android/gms/internal/hd;->f:D
invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v1
mul-int/lit8 v0, v0, 0x1f
ushr-long v3, v1, v4
xor-long/2addr v1, v3
long-to-int v1, v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/android/gms/internal/hd;->g:F
invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-short v1, p0, Lcom/google/android/gms/internal/hd;->d:S
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/google/android/gms/internal/hd;->h:I
add-int/2addr v0, v1
return v0
.end method
.method public final i()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/hd;->i:I
return v0
.end method
.method public final j()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/hd;->j:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 7
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v2, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]"
const/16 v0, 0x9
new-array v3, v0, [Ljava/lang/Object;
const/4 v4, 0x0
iget-short v0, p0, Lcom/google/android/gms/internal/hd;->d:S
packed-switch v0, :pswitch_data_60
const/4 v0, 0x0
:goto_f
aput-object v0, v3, v4
const/4 v0, 0x1
iget-object v4, p0, Lcom/google/android/gms/internal/hd;->b:Ljava/lang/String;
aput-object v4, v3, v0
const/4 v0, 0x2
iget v4, p0, Lcom/google/android/gms/internal/hd;->h:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v0
const/4 v0, 0x3
iget-wide v4, p0, Lcom/google/android/gms/internal/hd;->e:D
invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v4
aput-object v4, v3, v0
const/4 v0, 0x4
iget-wide v4, p0, Lcom/google/android/gms/internal/hd;->f:D
invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v4
aput-object v4, v3, v0
const/4 v0, 0x5
iget v4, p0, Lcom/google/android/gms/internal/hd;->g:F
invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v4
aput-object v4, v3, v0
const/4 v0, 0x6
iget v4, p0, Lcom/google/android/gms/internal/hd;->i:I
div-int/lit16 v4, v4, 0x3e8
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v0
const/4 v0, 0x7
iget v4, p0, Lcom/google/android/gms/internal/hd;->j:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v0
const/16 v0, 0x8
iget-wide v4, p0, Lcom/google/android/gms/internal/hd;->c:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
aput-object v4, v3, v0
invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:pswitch_5d
const-string v0, "CIRCLE"
goto :goto_f
:pswitch_data_60
.packed-switch 0x1
:pswitch_5d
.end packed-switch
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/hd;->CREATOR:Lcom/google/android/gms/internal/jc;
invoke-static {p0, p1}, Lcom/google/android/gms/internal/jc;->a(Lcom/google/android/gms/internal/hd;Landroid/os/Parcel;)V
return-void
.end method