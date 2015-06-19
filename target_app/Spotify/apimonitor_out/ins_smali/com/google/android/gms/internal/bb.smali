.class public final Lcom/google/android/gms/internal/bb;
.super Ljava/lang/Object;
.field public final a:I
.field public final b:Lcom/google/android/gms/internal/aw;
.field public final c:Lcom/google/android/gms/internal/bi;
.field public final d:Ljava/lang/String;
.field public final e:Lcom/google/android/gms/internal/az;
.method public constructor <init>(I)V
.registers 8
const/4 v1, 0x0
move-object v0, p0
move-object v2, v1
move-object v3, v1
move-object v4, v1
move v5, p1
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/bb;-><init>(Lcom/google/android/gms/internal/aw;Lcom/google/android/gms/internal/bi;Ljava/lang/String;Lcom/google/android/gms/internal/az;I)V
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/internal/aw;Lcom/google/android/gms/internal/bi;Ljava/lang/String;Lcom/google/android/gms/internal/az;I)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/bb;->b:Lcom/google/android/gms/internal/aw;
iput-object p2, p0, Lcom/google/android/gms/internal/bb;->c:Lcom/google/android/gms/internal/bi;
iput-object p3, p0, Lcom/google/android/gms/internal/bb;->d:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/internal/bb;->e:Lcom/google/android/gms/internal/az;
iput p5, p0, Lcom/google/android/gms/internal/bb;->a:I
return-void
.end method