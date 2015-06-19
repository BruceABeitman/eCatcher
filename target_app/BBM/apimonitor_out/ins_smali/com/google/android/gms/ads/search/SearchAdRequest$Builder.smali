.class public final Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.super Ljava/lang/Object;
.field private final kB:Lcom/google/android/gms/internal/aj$a;
.field private qA:I
.field private qB:I
.field private qC:Ljava/lang/String;
.field private qD:I
.field private qE:Ljava/lang/String;
.field private qF:I
.field private qG:I
.field private qH:Ljava/lang/String;
.field private qu:I
.field private qv:I
.field private qw:I
.field private qx:I
.field private qy:I
.field private qz:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/aj$a;
invoke-direct {v0}, Lcom/google/android/gms/internal/aj$a;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qA:I
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qu:I
return v0
.end method
.method static synthetic b(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qv:I
return v0
.end method
.method static synthetic c(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qw:I
return v0
.end method
.method static synthetic d(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qx:I
return v0
.end method
.method static synthetic e(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qy:I
return v0
.end method
.method static synthetic f(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qz:I
return v0
.end method
.method static synthetic g(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qA:I
return v0
.end method
.method static synthetic h(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qB:I
return v0
.end method
.method static synthetic i(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qC:Ljava/lang/String;
return-object v0
.end method
.method static synthetic j(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qD:I
return v0
.end method
.method static synthetic k(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qE:Ljava/lang/String;
return-object v0
.end method
.method static synthetic l(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qF:I
return v0
.end method
.method static synthetic m(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qG:I
return v0
.end method
.method static synthetic n(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qH:Ljava/lang/String;
return-object v0
.end method
.method static synthetic o(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/aj$a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;
return-object v0
.end method
.method public final addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->a(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V
return-object p0
.end method
.method public final addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->h(Ljava/lang/String;)V
return-object p0
.end method
.method public final build()Lcom/google/android/gms/ads/search/SearchAdRequest;
.registers 3
new-instance v0, Lcom/google/android/gms/ads/search/SearchAdRequest;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/SearchAdRequest$1;)V
return-object v0
.end method
.method public final setAnchorTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qu:I
return-object p0
.end method
.method public final setBackgroundColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 4
const/4 v1, 0x0
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qv:I
invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qw:I
invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qx:I
return-object p0
.end method
.method public final setBackgroundGradient(II)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 4
const/4 v0, 0x0
invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qv:I
iput p2, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qw:I
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qx:I
return-object p0
.end method
.method public final setBorderColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qy:I
return-object p0
.end method
.method public final setBorderThickness(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qz:I
return-object p0
.end method
.method public final setBorderType(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qA:I
return-object p0
.end method
.method public final setCallButtonColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qB:I
return-object p0
.end method
.method public final setCustomChannels(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qC:Ljava/lang/String;
return-object p0
.end method
.method public final setDescriptionTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qD:I
return-object p0
.end method
.method public final setFontFace(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qE:Ljava/lang/String;
return-object p0
.end method
.method public final setHeaderTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qF:I
return-object p0
.end method
.method public final setHeaderTextSize(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qG:I
return-object p0
.end method
.method public final setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->a(Landroid/location/Location;)V
return-object p0
.end method
.method public final setQuery(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->qH:Ljava/lang/String;
return-object p0
.end method
.method public final tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->e(Z)V
return-object p0
.end method