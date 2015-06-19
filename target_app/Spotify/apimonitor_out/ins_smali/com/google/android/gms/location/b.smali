.class public Lcom/google/android/gms/location/b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/location/e;
.field  a:I
.field  b:I
.field  c:J
.field private final d:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/location/e;
invoke-direct {v0}, Lcom/google/android/gms/location/e;-><init>()V
sput-object v0, Lcom/google/android/gms/location/b;->CREATOR:Lcom/google/android/gms/location/e;
return-void
.end method
.method constructor <init>(IIIJ)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/location/b;->d:I
iput p2, p0, Lcom/google/android/gms/location/b;->a:I
iput p3, p0, Lcom/google/android/gms/location/b;->b:I
iput-wide p4, p0, Lcom/google/android/gms/location/b;->c:J
return-void
.end method
.method private static a(I)Ljava/lang/String;
.registers 2
packed-switch p0, :pswitch_data_1e
:pswitch_3
const-string v0, "STATUS_UNKNOWN"
:goto_5
return-object v0
:pswitch_6
const-string v0, "STATUS_SUCCESSFUL"
goto :goto_5
:pswitch_9
const-string v0, "STATUS_TIMED_OUT_ON_SCAN"
goto :goto_5
:pswitch_c
const-string v0, "STATUS_NO_INFO_IN_DATABASE"
goto :goto_5
:pswitch_f
const-string v0, "STATUS_INVALID_SCAN"
goto :goto_5
:pswitch_12
const-string v0, "STATUS_UNABLE_TO_QUERY_DATABASE"
goto :goto_5
:pswitch_15
const-string v0, "STATUS_SCANS_DISABLED_IN_SETTINGS"
goto :goto_5
:pswitch_18
const-string v0, "STATUS_LOCATION_DISABLED_IN_SETTINGS"
goto :goto_5
:pswitch_1b
const-string v0, "STATUS_IN_PROGRESS"
goto :goto_5
:pswitch_data_1e
.packed-switch 0x0
:pswitch_6
:pswitch_3
:pswitch_9
:pswitch_c
:pswitch_f
:pswitch_12
:pswitch_15
:pswitch_18
:pswitch_1b
.end packed-switch
.end method
.method final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/location/b;->d:I
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x0
instance-of v1, p1, Lcom/google/android/gms/location/b;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
check-cast p1, Lcom/google/android/gms/location/b;
iget v1, p0, Lcom/google/android/gms/location/b;->a:I
iget v2, p1, Lcom/google/android/gms/location/b;->a:I
if-ne v1, v2, :cond_5
iget v1, p0, Lcom/google/android/gms/location/b;->b:I
iget v2, p1, Lcom/google/android/gms/location/b;->b:I
if-ne v1, v2, :cond_5
iget-wide v1, p0, Lcom/google/android/gms/location/b;->c:J
iget-wide v3, p1, Lcom/google/android/gms/location/b;->c:J
cmp-long v1, v1, v3
if-nez v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public hashCode()I
.registers 5
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget v2, p0, Lcom/google/android/gms/location/b;->a:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/location/b;->b:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
iget-wide v2, p0, Lcom/google/android/gms/location/b;->c:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "LocationStatus[cell status: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/google/android/gms/location/b;->a:I
invoke-static {v2}, Lcom/google/android/gms/location/b;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, ", wifi status: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/google/android/gms/location/b;->b:I
invoke-static {v2}, Lcom/google/android/gms/location/b;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, ", elapsed realtime ns: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/google/android/gms/location/b;->c:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const/16 v1, 0x5d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/location/e;->a(Lcom/google/android/gms/location/b;Landroid/os/Parcel;)V
return-void
.end method