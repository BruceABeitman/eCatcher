.class public final Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.super Ljava/lang/Object;
.field private final kr:Lcom/google/android/gms/internal/au$a;
.field private sZ:I
.field private ta:I
.field private tb:I
.field private tc:I
.field private td:I
.field private te:I
.field private tf:I
.field private tg:I
.field private th:Ljava/lang/String;
.field private ti:I
.field private tj:Ljava/lang/String;
.field private tk:I
.field private tl:I
.field private tm:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/au$a;
invoke-direct {v0}, Lcom/google/android/gms/internal/au$a;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tf:I
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->sZ:I
return v0
.end method
.method static synthetic b(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->ta:I
return v0
.end method
.method static synthetic c(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tb:I
return v0
.end method
.method static synthetic d(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tc:I
return v0
.end method
.method static synthetic e(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->td:I
return v0
.end method
.method static synthetic f(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->te:I
return v0
.end method
.method static synthetic g(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tf:I
return v0
.end method
.method static synthetic h(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tg:I
return v0
.end method
.method static synthetic i(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->th:Ljava/lang/String;
return-object v0
.end method
.method static synthetic j(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->ti:I
return v0
.end method
.method static synthetic k(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tj:Ljava/lang/String;
return-object v0
.end method
.method static synthetic l(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tk:I
return v0
.end method
.method static synthetic m(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tl:I
return v0
.end method
.method static synthetic n(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tm:Ljava/lang/String;
return-object v0
.end method
.method static synthetic o(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/au$a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;
return-object v0
.end method
.method public addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)V
return-object p0
.end method
.method public addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au$a;->a(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V
return-object p0
.end method
.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au$a;->a(Ljava/lang/Class;Landroid/os/Bundle;)V
return-object p0
.end method
.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au$a;->h(Ljava/lang/String;)V
return-object p0
.end method
.method public build()Lcom/google/android/gms/ads/search/SearchAdRequest;
.registers 3
new-instance v0, Lcom/google/android/gms/ads/search/SearchAdRequest;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/SearchAdRequest$1;)V
return-object v0
.end method
.method public setAnchorTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->sZ:I
return-object p0
.end method
.method public setBackgroundColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 4
const/4 v1, 0x0
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->ta:I
invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tb:I
invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tc:I
return-object p0
.end method
.method public setBackgroundGradient(II)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 4
const/4 v0, 0x0
invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->ta:I
iput p2, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tb:I
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tc:I
return-object p0
.end method
.method public setBorderColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->td:I
return-object p0
.end method
.method public setBorderThickness(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->te:I
return-object p0
.end method
.method public setBorderType(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tf:I
return-object p0
.end method
.method public setCallButtonColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tg:I
return-object p0
.end method
.method public setCustomChannels(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->th:Ljava/lang/String;
return-object p0
.end method
.method public setDescriptionTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->ti:I
return-object p0
.end method
.method public setFontFace(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tj:Ljava/lang/String;
return-object p0
.end method
.method public setHeaderTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tk:I
return-object p0
.end method
.method public setHeaderTextSize(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tl:I
return-object p0
.end method
.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au$a;->a(Landroid/location/Location;)V
return-object p0
.end method
.method public setQuery(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->tm:Ljava/lang/String;
return-object p0
.end method
.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au$a;->h(Z)V
return-object p0
.end method