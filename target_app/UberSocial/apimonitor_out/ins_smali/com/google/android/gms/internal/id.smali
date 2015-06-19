.class public Lcom/google/android/gms/internal/id;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/qf;
.field public final a:I
.field public final b:Ljava/lang/String;
.field public final c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/qf;
invoke-direct {v0}, Lcom/google/android/gms/internal/qf;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/id;->CREATOR:Lcom/google/android/gms/internal/qf;
return-void
.end method
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/id;->a:I
iput-object p2, p0, Lcom/google/android/gms/internal/id;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/id;->c:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/internal/id;->a:I
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/id;->b:Ljava/lang/String;
invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/id;->c:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/id;->CREATOR:Lcom/google/android/gms/internal/qf;
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_b
instance-of v2, p1, Lcom/google/android/gms/internal/id;
if-nez v2, :cond_d
:cond_b
move v0, v1
goto :goto_4
:cond_d
check-cast p1, Lcom/google/android/gms/internal/id;
iget-object v2, p0, Lcom/google/android/gms/internal/id;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/internal/id;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_23
iget-object v2, p0, Lcom/google/android/gms/internal/id;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/internal/id;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_23
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 4
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/android/gms/internal/id;->b:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/android/gms/internal/id;->c:Ljava/lang/String;
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "clientPackageName"
iget-object v2, p0, Lcom/google/android/gms/internal/id;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "locale"
iget-object v2, p0, Lcom/google/android/gms/internal/id;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/id;->CREATOR:Lcom/google/android/gms/internal/qf;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/qf;->a(Lcom/google/android/gms/internal/id;Landroid/os/Parcel;I)V
return-void
.end method