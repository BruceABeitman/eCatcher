.class  Lcom/millennialmedia/android/InterstitialAd;
.super Lcom/millennialmedia/android/ai;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field static final k:J = 0x47973e3dff4c4b9dL
.field static final o:Ljava/lang/String; = "EXTRA_CONTENT"
.field static final p:Ljava/lang/String; = "EXTRA_AD_URL"
.field private static final q:Ljava/lang/String;
.field  l:Ljava/lang/String;
.field  m:Ljava/lang/String;
.field  n:Lcom/millennialmedia/android/HttpMMHeaders;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/millennialmedia/android/InterstitialAd;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/millennialmedia/android/InterstitialAd;->q:Ljava/lang/String;
new-instance v0, Lcom/millennialmedia/android/InterstitialAd$1;
invoke-direct {v0}, Lcom/millennialmedia/android/InterstitialAd$1;-><init>()V
sput-object v0, Lcom/millennialmedia/android/InterstitialAd;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/android/ai;-><init>()V
return-void
.end method
.method constructor <init>(Landroid/os/Parcel;)V
.registers 5
invoke-direct {p0, p1}, Lcom/millennialmedia/android/ai;-><init>(Landroid/os/Parcel;)V
:try_start_3
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->l:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->m:Ljava/lang/String;
const-class v0, Lcom/millennialmedia/android/HttpMMHeaders;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/HttpMMHeaders;
iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->n:Lcom/millennialmedia/android/HttpMMHeaders;
:goto_1d
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1e
return-void
:catch_1e
move-exception v0
sget-object v1, Lcom/millennialmedia/android/InterstitialAd;->q:Ljava/lang/String;
const-string v2, "Interstitial problem reading parcel: "
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1d
.end method
.method private b(Landroid/content/Context;J)Landroid/content/Intent;
.registers 7
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
new-instance v1, Lcom/millennialmedia/android/OverlaySettings;
invoke-direct {v1}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V
iput-wide p2, v1, Lcom/millennialmedia/android/OverlaySettings;->z:J
iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->l:Ljava/lang/String;
iput-object v2, v1, Lcom/millennialmedia/android/OverlaySettings;->u:Ljava/lang/String;
iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->m:Ljava/lang/String;
iput-object v2, v1, Lcom/millennialmedia/android/OverlaySettings;->v:Ljava/lang/String;
iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->n:Lcom/millennialmedia/android/HttpMMHeaders;
invoke-virtual {v1, v2}, Lcom/millennialmedia/android/OverlaySettings;->a(Lcom/millennialmedia/android/HttpMMHeaders;)V
const/4 v2, 0x1
iput-boolean v2, v1, Lcom/millennialmedia/android/OverlaySettings;->y:Z
const-string v2, "settings"
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v1, "internalId"
invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
return-object v0
.end method
.method  a(Landroid/content/Context;J)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/InterstitialAd;->b(Landroid/content/Context;J)Landroid/content/Intent;
move-result-object v0
invoke-static {p1, v0}, Lcom/millennialmedia/android/dj;->a(Landroid/content/Context;Landroid/content/Intent;)V
return-void
.end method
.method  a(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method  a(Landroid/content/Context;Lcom/millennialmedia/android/bp;Z)Z
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
if-eqz p3, :cond_2d
iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->l:Ljava/lang/String;
if-eqz v2, :cond_2b
iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->l:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_2b
iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->m:Ljava/lang/String;
if-eqz v2, :cond_2b
iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->m:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_2b
invoke-static {p1}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
move-result-object v2
iget-object v3, p2, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
iget-wide v4, p0, Lcom/millennialmedia/android/InterstitialAd;->g:J
invoke-virtual {v2, v3, v4, v5}, Lcom/millennialmedia/android/as;->a(Ljava/lang/String;J)Z
move-result v2
if-eqz v2, :cond_2b
:cond_2a
:goto_2a
return v0
:cond_2b
move v0, v1
goto :goto_2a
:cond_2d
iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->l:Ljava/lang/String;
if-eqz v2, :cond_45
iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->l:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_45
iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->m:Ljava/lang/String;
if-eqz v2, :cond_45
iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->m:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-gtz v2, :cond_2a
:cond_45
move v0, v1
goto :goto_2a
.end method
.method  b(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method  c()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method  d()Ljava/lang/String;
.registers 2
const-string v0, "Interstitial"
return-object v0
.end method
.method  d(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public readExternal(Ljava/io/ObjectInput;)V
.registers 3
invoke-super {p0, p1}, Lcom/millennialmedia/android/ai;->readExternal(Ljava/io/ObjectInput;)V
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->l:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->m:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/HttpMMHeaders;
iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->n:Lcom/millennialmedia/android/HttpMMHeaders;
return-void
.end method
.method public writeExternal(Ljava/io/ObjectOutput;)V
.registers 3
invoke-super {p0, p1}, Lcom/millennialmedia/android/ai;->writeExternal(Ljava/io/ObjectOutput;)V
iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->l:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->m:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->n:Lcom/millennialmedia/android/HttpMMHeaders;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/ai;->writeToParcel(Landroid/os/Parcel;I)V
iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->l:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->m:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->n:Lcom/millennialmedia/android/HttpMMHeaders;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
return-void
.end method