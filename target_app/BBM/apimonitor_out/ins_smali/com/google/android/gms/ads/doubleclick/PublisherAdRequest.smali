.class public final Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
.super Ljava/lang/Object;
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = null
.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0
.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1
.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2
.field public static final ERROR_CODE_NO_FILL:I = 0x3
.field public static final GENDER_FEMALE:I = 0x2
.field public static final GENDER_MALE:I = 0x1
.field public static final GENDER_UNKNOWN:I
.field private final kA:Lcom/google/android/gms/internal/aj;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/aj;->DEVICE_ID_EMULATOR:Ljava/lang/String;
sput-object v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/aj;
invoke-static {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)Lcom/google/android/gms/internal/aj$a;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aj;-><init>(Lcom/google/android/gms/internal/aj$a;)V
iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->kA:Lcom/google/android/gms/internal/aj;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;-><init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)V
return-void
.end method
.method final N()Lcom/google/android/gms/internal/aj;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->kA:Lcom/google/android/gms/internal/aj;
return-object v0
.end method
.method public final getBirthday()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->kA:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getBirthday()Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public final getContentUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->kA:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getContentUrl()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getGender()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->kA:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getGender()I
move-result v0
return v0
.end method
.method public final getKeywords()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->kA:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getKeywords()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public final getLocation()Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->kA:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getLocation()Landroid/location/Location;
move-result-object v0
return-object v0
.end method
.method public final getManualImpressionsEnabled()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->kA:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getManualImpressionsEnabled()Z
move-result v0
return v0
.end method
.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->kA:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
move-result-object v0
return-object v0
.end method
.method public final getPublisherProvidedId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->kA:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getPublisherProvidedId()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final isTestDevice(Landroid/content/Context;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->kA:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj;->isTestDevice(Landroid/content/Context;)Z
move-result v0
return v0
.end method