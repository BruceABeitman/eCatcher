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
.field private final kq:Lcom/google/android/gms/internal/au;
.field private final sZ:I
.field private final ta:I
.field private final tb:I
.field private final tc:I
.field private final td:I
.field private final te:I
.field private final tf:I
.field private final tg:I
.field private final th:Ljava/lang/String;
.field private final ti:I
.field private final tj:Ljava/lang/String;
.field private final tk:I
.field private final tl:I
.field private final tm:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/au;->DEVICE_ID_EMULATOR:Ljava/lang/String;
sput-object v0, Lcom/google/android/gms/ads/search/SearchAdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->a(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->sZ:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->b(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ta:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->c(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tb:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->d(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tc:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->e(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->td:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->f(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->te:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->g(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tf:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->h(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tg:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->i(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->th:Ljava/lang/String;
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->j(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ti:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->k(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tj:Ljava/lang/String;
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->l(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tk:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->m(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tl:I
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->n(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tm:Ljava/lang/String;
new-instance v0, Lcom/google/android/gms/internal/au;
invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->o(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/au$a;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/au;-><init>(Lcom/google/android/gms/internal/au$a;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->kq:Lcom/google/android/gms/internal/au;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/SearchAdRequest$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V
return-void
.end method
.method  O()Lcom/google/android/gms/internal/au;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->kq:Lcom/google/android/gms/internal/au;
return-object v0
.end method
.method public getAnchorTextColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->sZ:I
return v0
.end method
.method public getBackgroundColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ta:I
return v0
.end method
.method public getBackgroundGradientBottom()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tb:I
return v0
.end method
.method public getBackgroundGradientTop()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tc:I
return v0
.end method
.method public getBorderColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->td:I
return v0
.end method
.method public getBorderThickness()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->te:I
return v0
.end method
.method public getBorderType()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tf:I
return v0
.end method
.method public getCallButtonColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tg:I
return v0
.end method
.method public getCustomChannels()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->th:Ljava/lang/String;
return-object v0
.end method
.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method public getDescriptionTextColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ti:I
return v0
.end method
.method public getFontFace()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tj:Ljava/lang/String;
return-object v0
.end method
.method public getHeaderTextColor()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tk:I
return v0
.end method
.method public getHeaderTextSize()I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tl:I
return v0
.end method
.method public getLocation()Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getLocation()Landroid/location/Location;
move-result-object v0
return-object v0
.end method
.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
move-result-object v0
return-object v0
.end method
.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method public getQuery()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->tm:Ljava/lang/String;
return-object v0
.end method
.method public isTestDevice(Landroid/content/Context;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->kq:Lcom/google/android/gms/internal/au;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->isTestDevice(Landroid/content/Context;)Z
move-result v0
return v0
.end method