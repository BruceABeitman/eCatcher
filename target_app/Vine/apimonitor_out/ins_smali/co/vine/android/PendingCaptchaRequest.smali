.class public Lco/vine/android/PendingCaptchaRequest;
.super Ljava/lang/Object;
.source "PendingCaptchaRequest.java"
.implements Landroid/os/Parcelable;
.field public static final CAPTCHA_STATE_FAIL_REQUEST:I = 0x3
.field public static final CAPTCHA_STATE_RETRY_REQUEST:I = 0x2
.field public static final CAPTCHA_STATE_UNHANDLED:I = 0x1
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final actionCode:I
.field public final bundle:Landroid/os/Bundle;
.field public final reqId:Ljava/lang/String;
.field public state:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/PendingCaptchaRequest$1;
invoke-direct {v0}, Lco/vine/android/PendingCaptchaRequest$1;-><init>()V
sput-object v0, Lco/vine/android/PendingCaptchaRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/PendingCaptchaRequest;->reqId:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/PendingCaptchaRequest;->actionCode:I
invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
move-result-object v0
iput-object v0, p0, Lco/vine/android/PendingCaptchaRequest;->bundle:Landroid/os/Bundle;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/PendingCaptchaRequest;->state:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/PendingCaptchaRequest;->reqId:Ljava/lang/String;
iput p2, p0, Lco/vine/android/PendingCaptchaRequest;->actionCode:I
iput-object p3, p0, Lco/vine/android/PendingCaptchaRequest;->bundle:Landroid/os/Bundle;
const/4 v0, 0x1
iput v0, p0, Lco/vine/android/PendingCaptchaRequest;->state:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lco/vine/android/PendingCaptchaRequest;->reqId:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lco/vine/android/PendingCaptchaRequest;->actionCode:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lco/vine/android/PendingCaptchaRequest;->bundle:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
iget v0, p0, Lco/vine/android/PendingCaptchaRequest;->state:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method