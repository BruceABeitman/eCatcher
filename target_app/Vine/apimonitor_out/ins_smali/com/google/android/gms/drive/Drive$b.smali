.class public Lcom/google/android/gms/drive/Drive$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;
.field private final HJ:Landroid/os/Bundle;
.method private constructor <init>()V
.registers 2
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-direct {p0, v0}, Lcom/google/android/gms/drive/Drive$b;-><init>(Landroid/os/Bundle;)V
return-void
.end method
.method private constructor <init>(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/drive/Drive$b;->HJ:Landroid/os/Bundle;
return-void
.end method
.method public ge()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/Drive$b;->HJ:Landroid/os/Bundle;
return-object v0
.end method