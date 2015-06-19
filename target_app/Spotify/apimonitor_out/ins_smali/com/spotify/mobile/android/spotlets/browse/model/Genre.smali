.class public Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->c:Ljava/lang/String;
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1b
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d:Ljava/lang/String;
:goto_12
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->e:Ljava/lang/String;
iput-object p6, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->f:Ljava/lang/String;
iput-object p7, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->g:Ljava/lang/String;
iput-object p8, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->h:Ljava/lang/String;
return-void
:cond_1b
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d:Ljava/lang/String;
goto :goto_12
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d:Ljava/lang/String;
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->c:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d:Ljava/lang/String;
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->e:Ljava/lang/String;
return-object v0
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->f:Ljava/lang/String;
return-object v0
.end method
.method public final h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->g:Ljava/lang/String;
return-object v0
.end method
.method public final i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->h:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->c:Ljava/lang/String;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->c:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->e:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->f:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->g:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->h:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method