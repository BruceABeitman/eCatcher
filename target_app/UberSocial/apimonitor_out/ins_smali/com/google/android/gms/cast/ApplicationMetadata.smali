.class public final Lcom/google/android/gms/cast/ApplicationMetadata;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:Ljava/util/List;
.field  d:Ljava/util/List;
.field  e:Ljava/lang/String;
.field  f:Landroid/net/Uri;
.field private final g:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/cast/aa;
invoke-direct {v0}, Lcom/google/android/gms/cast/aa;-><init>()V
sput-object v0, Lcom/google/android/gms/cast/ApplicationMetadata;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->g:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->c:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->d:Ljava/util/List;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->g:I
iput-object p2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->c:Ljava/util/List;
iput-object p5, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->d:Ljava/util/List;
iput-object p6, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->e:Ljava/lang/String;
iput-object p7, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->f:Landroid/net/Uri;
return-void
.end method
.method  a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->g:I
return v0
.end method
.method public a(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->d:Ljava/util/List;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->d:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public a(Ljava/util/List;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->d:Ljava/util/List;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->d:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->a:Ljava/lang/String;
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->b:Ljava/lang/String;
return-object v0
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->e:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->f:Landroid/net/Uri;
return-object v0
.end method
.method public f()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->c:Ljava/util/List;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->b:Ljava/lang/String;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/aa;->a(Lcom/google/android/gms/cast/ApplicationMetadata;Landroid/os/Parcel;I)V
return-void
.end method