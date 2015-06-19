.class public final Lcom/google/android/gms/internal/am;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/u;
.field public final a:I
.field public final b:I
.field public final c:I
.field public final d:I
.field public final e:I
.field public final f:I
.field public final g:I
.field public final h:I
.field public final i:I
.field public final j:Ljava/lang/String;
.field public final k:I
.field public final l:Ljava/lang/String;
.field public final m:I
.field public final n:I
.field public final o:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/u;
invoke-direct {v0}, Lcom/google/android/gms/internal/u;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/am;->CREATOR:Lcom/google/android/gms/internal/u;
return-void
.end method
.method constructor <init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
.registers 16
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/am;->a:I
iput p2, p0, Lcom/google/android/gms/internal/am;->b:I
iput p3, p0, Lcom/google/android/gms/internal/am;->c:I
iput p4, p0, Lcom/google/android/gms/internal/am;->d:I
iput p5, p0, Lcom/google/android/gms/internal/am;->e:I
iput p6, p0, Lcom/google/android/gms/internal/am;->f:I
iput p7, p0, Lcom/google/android/gms/internal/am;->g:I
iput p8, p0, Lcom/google/android/gms/internal/am;->h:I
iput p9, p0, Lcom/google/android/gms/internal/am;->i:I
iput-object p10, p0, Lcom/google/android/gms/internal/am;->j:Ljava/lang/String;
iput p11, p0, Lcom/google/android/gms/internal/am;->k:I
iput-object p12, p0, Lcom/google/android/gms/internal/am;->l:Ljava/lang/String;
iput p13, p0, Lcom/google/android/gms/internal/am;->m:I
iput p14, p0, Lcom/google/android/gms/internal/am;->n:I
iput-object p15, p0, Lcom/google/android/gms/internal/am;->o:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/ads/search/a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/am;->a:I
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->a()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/am;->b:I
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->b()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/am;->c:I
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->c()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/am;->d:I
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->d()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/am;->e:I
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->e()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/am;->f:I
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->f()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/am;->g:I
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->g()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/am;->h:I
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->h()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/am;->i:I
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->i()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/am;->j:Ljava/lang/String;
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->j()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/am;->k:I
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->k()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/am;->l:Ljava/lang/String;
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->l()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/am;->m:I
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->m()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/am;->n:I
invoke-virtual {p1}, Lcom/google/android/gms/ads/search/a;->o()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/am;->o:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/am;Landroid/os/Parcel;I)V
return-void
.end method