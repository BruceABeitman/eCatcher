.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = null
.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0
.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1
.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2
.field public static final ERROR_CODE_NO_FILL:I = 0x3
.field public static final GENDER_FEMALE:I = 0x2
.field public static final GENDER_MALE:I = 0x1
.field public static final GENDER_UNKNOWN:I = 0x0
.field public static final MAX_CONTENT_URL_LENGTH:I = 0x200
.field private final kq:Lcom/google/android/gms/internal/au;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/au;->DEVICE_ID_EMULATOR:Ljava/lang/String;
sput-object v0, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/au;
invoke-static {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->a(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/au$a;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/au;-><init>(Lcom/google/android/gms/internal/au$a;)V
iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kq:Lcom/google/android/gms/internal/au;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/AdRequest$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
return-void
.end method
.method  O()Lcom/google/android/gms/internal/au;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kq:Lcom/google/android/gms/internal/au;
return-object v0
.end method
.method public getBirthday()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getBirthday()Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getContentUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getContentUrl()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method public getGender()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getGender()I
move-result v0
return v0
.end method
.method public getKeywords()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getKeywords()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public getLocation()Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getLocation()Landroid/location/Location;
move-result-object v0
return-object v0
.end method
.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
move-result-object v0
return-object v0
.end method
.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method public isTestDevice(Landroid/content/Context;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->isTestDevice(Landroid/content/Context;)Z
move-result v0
return v0
.end method