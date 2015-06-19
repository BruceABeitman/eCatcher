.class public Lcom/google/android/gms/location/ActivityRecognitionResult;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/location/ActivityRecognitionResultCreator; = null
.field public static final EXTRA_ACTIVITY_RESULT:Ljava/lang/String; = "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"
.field  KP:Ljava/util/List;
.field  KQ:J
.field  KR:J
.field private final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResultCreator;
invoke-direct {v0}, Lcom/google/android/gms/location/ActivityRecognitionResultCreator;-><init>()V
sput-object v0, Lcom/google/android/gms/location/ActivityRecognitionResult;->CREATOR:Lcom/google/android/gms/location/ActivityRecognitionResultCreator;
return-void
.end method
.method public constructor <init>(ILjava/util/List;JJ)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->wj:I
iput-object p2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KP:Ljava/util/List;
iput-wide p3, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KQ:J
iput-wide p5, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KR:J
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/location/DetectedActivity;JJ)V
.registers 12
invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
move-object v0, p0
move-wide v2, p2
move-wide v4, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V
return-void
.end method
.method public constructor <init>(Ljava/util/List;JJ)V
.registers 9
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_1b
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_1b
move v0, v1
:goto_d
const-string v2, "Must have at least 1 detected activity"
invoke-static {v0, v2}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V
iput v1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->wj:I
iput-object p1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KP:Ljava/util/List;
iput-wide p2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KQ:J
iput-wide p4, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KR:J
return-void
:cond_1b
const/4 v0, 0x0
goto :goto_d
.end method
.method public static extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;
.registers 3
invoke-static {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->hasResult(Landroid/content/Intent;)Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;
goto :goto_7
.end method
.method public static hasResult(Landroid/content/Intent;)Z
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
const-string v0, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"
invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
goto :goto_3
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getActivityConfidence(I)I
.registers 5
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KP:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/location/DetectedActivity;
invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->getType()I
move-result v2
if-ne v2, p1, :cond_6
invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->getConfidence()I
move-result v0
:goto_1c
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method
.method public getElapsedRealtimeMillis()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KR:J
return-wide v0
.end method
.method public getMostProbableActivity()Lcom/google/android/gms/location/DetectedActivity;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KP:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/location/DetectedActivity;
return-object v0
.end method
.method public getProbableActivities()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KP:Ljava/util/List;
return-object v0
.end method
.method public getTime()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KQ:J
return-wide v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->wj:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "ActivityRecognitionResult [probableActivities="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KP:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", timeMillis="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KQ:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", elapsedRealtimeMillis="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->KR:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/ActivityRecognitionResultCreator;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;Landroid/os/Parcel;I)V
return-void
.end method