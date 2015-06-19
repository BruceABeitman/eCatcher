.class public Lco/vine/android/api/VineTypeAhead;
.super Ljava/lang/Object;
.source "VineTypeAhead.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public id:J
.field public final token:Ljava/lang/String;
.field public final type:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VineTypeAhead$1;
invoke-direct {v0}, Lco/vine/android/api/VineTypeAhead$1;-><init>()V
sput-object v0, Lco/vine/android/api/VineTypeAhead;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineTypeAhead;->id:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineTypeAhead;->token:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineTypeAhead;->type:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p3, p0, Lco/vine/android/api/VineTypeAhead;->id:J
iput-object p2, p0, Lco/vine/android/api/VineTypeAhead;->token:Ljava/lang/String;
iput-object p1, p0, Lco/vine/android/api/VineTypeAhead;->type:Ljava/lang/String;
return-void
.end method
.method public static getPlainTag(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-wide v0, p0, Lco/vine/android/api/VineTypeAhead;->id:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VineTypeAhead;->token:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineTypeAhead;->type:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method