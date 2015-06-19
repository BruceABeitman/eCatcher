.class public final Lcom/google/android/gms/ads/search/SearchAdRequest;
.super Ljava/lang/Object;
.field public static final BORDER_TYPE_DASHED:I = 0x1
.field public static final BORDER_TYPE_DOTTED:I = 0x2
.field public static final BORDER_TYPE_NONE:I = 0x0
.field public static final BORDER_TYPE_SOLID:I = 0x3
.field public static final CALL_BUTTON_COLOR_DARK:I = 0x2
.field public static final CALL_BUTTON_COLOR_LIGHT:I = 0x0
.field public static final CALL_BUTTON_COLOR_MEDIUM:I = 0x1
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = null
.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0
.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1
.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2
.field public static final ERROR_CODE_NO_FILL:I = 0x3
.field private final kA:Lcom/google/android/gms/internal/aj;
.field private final qA:I
.field private final qB:I
.field private final qC:Ljava/lang/String;
.field private final qD:I
.field private final qE:Ljava/lang/String;
.field private final qF:I
.field private final qG:I
.field private final qH:Ljava/lang/String;
.field private final qu:I
.field private final qv:I
.field private final qw:I
.field private final qx:I
.field private final qy:I
.field private final qz:I
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/aj;->DEVICE_ID_EMULATOR:Ljava/lang/String;
sput-object v0, Lcom/google/android/gms/ads/search/SearchAdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->a(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qu:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->b(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qv:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->c(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qw:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->d(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qx:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->e(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qy:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->f(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qz:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->g(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qA:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->h(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qB:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->i(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qC:Ljava/lang/String;
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->j(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qD:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->k(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qE:Ljava/lang/String;
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->l(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qF:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->m(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qG:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->n(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qH:Ljava/lang/String;
new-instance v0, Lcom/google/android/gms/internal/aj;
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->o(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/aj$a;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/aj;-><init>(Lcom/google/android/gms/internal/aj$a;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->kA:Lcom/google/android/gms/internal/aj;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/SearchAdRequest$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V
return-void
.end method
.method final N()Lcom/google/android/gms/internal/aj;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->kA:Lcom/google/android/gms/internal/aj;
return-object v0
.end method
.method public final getAnchorTextColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qu:I
return v0
.end method
.method public final getBackgroundColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qv:I
return v0
.end method
.method public final getBackgroundGradientBottom()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qw:I
return v0
.end method
.method public final getBackgroundGradientTop()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qx:I
return v0
.end method
.method public final getBorderColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qy:I
return v0
.end method
.method public final getBorderThickness()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qz:I
return v0
.end method
.method public final getBorderType()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qA:I
return v0
.end method
.method public final getCallButtonColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qB:I
return v0
.end method
.method public final getCustomChannels()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qC:Ljava/lang/String;
return-object v0
.end method
.method public final getDescriptionTextColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qD:I
return v0
.end method
.method public final getFontFace()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qE:Ljava/lang/String;
return-object v0
.end method
.method public final getHeaderTextColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qF:I
return v0
.end method
.method public final getHeaderTextSize()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qG:I
return v0
.end method
.method public final getLocation()Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->kA:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getLocation()Landroid/location/Location;
move-result-object v0
return-object v0
.end method
.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->kA:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
move-result-object v0
return-object v0
.end method
.method public final getQuery()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->qH:Ljava/lang/String;
return-object v0
.end method
.method public final isTestDevice(Landroid/content/Context;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->kA:Lcom/google/android/gms/internal/aj;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj;->isTestDevice(Landroid/content/Context;)Z
move-result v0
return v0
.end method