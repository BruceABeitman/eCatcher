.class public final Lcom/google/android/gms/internal/hx;
.super Lcom/google/android/gms/internal/pq;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/qa;
.field final a:I
.field private final b:Ljava/lang/String;
.field private final c:Landroid/os/Bundle;
.field private final d:Lcom/google/android/gms/internal/hz;
.field private final e:Lcom/google/android/gms/maps/model/LatLng;
.field private final f:F
.field private final g:Lcom/google/android/gms/maps/model/LatLngBounds;
.field private final h:Ljava/lang/String;
.field private final i:Landroid/net/Uri;
.field private final j:Z
.field private final k:F
.field private final l:I
.field private final m:J
.field private final n:Ljava/util/List;
.field private final o:Ljava/util/Map;
.field private final p:Ljava/util/TimeZone;
.field private q:Ljava/util/Locale;
.field private r:Lcom/google/android/gms/internal/qe;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/qa;
invoke-direct {v0}, Lcom/google/android/gms/internal/qa;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/hx;->CREATOR:Lcom/google/android/gms/internal/qa;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJ)V
.registers 22
invoke-direct {p0}, Lcom/google/android/gms/internal/pq;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/hx;->a:I
iput-object p2, p0, Lcom/google/android/gms/internal/hx;->b:Ljava/lang/String;
invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v2
iput-object v2, p0, Lcom/google/android/gms/internal/hx;->n:Ljava/util/List;
iput-object p4, p0, Lcom/google/android/gms/internal/hx;->c:Landroid/os/Bundle;
iput-object p5, p0, Lcom/google/android/gms/internal/hx;->d:Lcom/google/android/gms/internal/hz;
iput-object p6, p0, Lcom/google/android/gms/internal/hx;->e:Lcom/google/android/gms/maps/model/LatLng;
iput p7, p0, Lcom/google/android/gms/internal/hx;->f:F
iput-object p8, p0, Lcom/google/android/gms/internal/hx;->g:Lcom/google/android/gms/maps/model/LatLngBounds;
iput-object p9, p0, Lcom/google/android/gms/internal/hx;->h:Ljava/lang/String;
move-object/from16 v0, p10
iput-object v0, p0, Lcom/google/android/gms/internal/hx;->i:Landroid/net/Uri;
move/from16 v0, p11
iput-boolean v0, p0, Lcom/google/android/gms/internal/hx;->j:Z
move/from16 v0, p12
iput v0, p0, Lcom/google/android/gms/internal/hx;->k:F
move/from16 v0, p13
iput v0, p0, Lcom/google/android/gms/internal/hx;->l:I
move-wide/from16 v0, p14
iput-wide v0, p0, Lcom/google/android/gms/internal/hx;->m:J
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_3a
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_52
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-static {v2}, Lcom/google/android/gms/internal/ht;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ht;
move-result-object v5
invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_3a
:cond_52
invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v2
iput-object v2, p0, Lcom/google/android/gms/internal/hx;->o:Ljava/util/Map;
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->h:Ljava/lang/String;
invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v2
iput-object v2, p0, Lcom/google/android/gms/internal/hx;->p:Ljava/util/TimeZone;
const/4 v2, 0x0
iput-object v2, p0, Lcom/google/android/gms/internal/hx;->q:Ljava/util/Locale;
const/4 v2, 0x0
iput-object v2, p0, Lcom/google/android/gms/internal/hx;->r:Lcom/google/android/gms/internal/qe;
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/hx;->r:Lcom/google/android/gms/internal/qe;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/hx;->r:Lcom/google/android/gms/internal/qe;
new-instance v1, Lcom/google/android/gms/internal/pz;
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->b:Ljava/lang/String;
invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/pz;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qe;->a(Lcom/google/android/gms/internal/pz;)V
:cond_10
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
const-string v0, "getId"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/hx;->b:Ljava/lang/String;
return-object v0
.end method
.method public b()Ljava/util/List;
.registers 2
const-string v0, "getTypes"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/hx;->n:Ljava/util/List;
return-object v0
.end method
.method public c()Lcom/google/android/gms/maps/model/LatLng;
.registers 2
const-string v0, "getLatLng"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/hx;->e:Lcom/google/android/gms/maps/model/LatLng;
return-object v0
.end method
.method public d()F
.registers 2
const-string v0, "getLevelNumber"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->a(Ljava/lang/String;)V
iget v0, p0, Lcom/google/android/gms/internal/hx;->f:F
return v0
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/hx;->CREATOR:Lcom/google/android/gms/internal/qa;
const/4 v0, 0x0
return v0
.end method
.method public e()Lcom/google/android/gms/maps/model/LatLngBounds;
.registers 2
const-string v0, "getViewport"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/hx;->g:Lcom/google/android/gms/maps/model/LatLngBounds;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/android/gms/internal/hx;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/google/android/gms/internal/hx;
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/internal/hx;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_29
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->q:Ljava/util/Locale;
iget-object v3, p1, Lcom/google/android/gms/internal/hx;->q:Ljava/util/Locale;
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_29
iget-wide v2, p0, Lcom/google/android/gms/internal/hx;->m:J
iget-wide v4, p1, Lcom/google/android/gms/internal/hx;->m:J
cmp-long v2, v2, v4
if-eqz v2, :cond_4
:cond_29
move v0, v1
goto :goto_4
.end method
.method public f()Landroid/net/Uri;
.registers 2
const-string v0, "getWebsiteUri"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/hx;->i:Landroid/net/Uri;
return-object v0
.end method
.method public g()Z
.registers 2
const-string v0, "isPermanentlyClosed"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->a(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/google/android/gms/internal/hx;->j:Z
return v0
.end method
.method public h()F
.registers 2
const-string v0, "getRating"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->a(Ljava/lang/String;)V
iget v0, p0, Lcom/google/android/gms/internal/hx;->k:F
return v0
.end method
.method public hashCode()I
.registers 5
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->b:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->q:Ljava/util/Locale;
aput-object v2, v0, v1
const/4 v1, 0x2
iget-wide v2, p0, Lcom/google/android/gms/internal/hx;->m:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public i()I
.registers 2
const-string v0, "getPriceLevel"
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->a(Ljava/lang/String;)V
iget v0, p0, Lcom/google/android/gms/internal/hx;->l:I
return v0
.end method
.method public j()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/internal/hx;->m:J
return-wide v0
.end method
.method public k()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hx;->c:Landroid/os/Bundle;
return-object v0
.end method
.method public l()Lcom/google/android/gms/internal/hz;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hx;->d:Lcom/google/android/gms/internal/hz;
return-object v0
.end method
.method public m()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hx;->h:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "id"
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "localization"
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->d:Lcom/google/android/gms/internal/hz;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "locale"
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->q:Ljava/util/Locale;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "latlng"
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->e:Lcom/google/android/gms/maps/model/LatLng;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "levelNumber"
iget v2, p0, Lcom/google/android/gms/internal/hx;->f:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "viewport"
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->g:Lcom/google/android/gms/maps/model/LatLngBounds;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "timeZone"
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->h:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "websiteUri"
iget-object v2, p0, Lcom/google/android/gms/internal/hx;->i:Landroid/net/Uri;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "isPermanentlyClosed"
iget-boolean v2, p0, Lcom/google/android/gms/internal/hx;->j:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "priceLevel"
iget v2, p0, Lcom/google/android/gms/internal/hx;->l:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "timestampSecs"
iget-wide v2, p0, Lcom/google/android/gms/internal/hx;->m:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/hx;->CREATOR:Lcom/google/android/gms/internal/qa;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/qa;->a(Lcom/google/android/gms/internal/hx;Landroid/os/Parcel;I)V
return-void
.end method