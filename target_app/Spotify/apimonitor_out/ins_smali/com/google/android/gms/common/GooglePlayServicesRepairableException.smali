.class public Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
.super Lcom/google/android/gms/common/UserRecoverableException;
.field private final wQ:I
.method constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
.registers 4
invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/UserRecoverableException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V
iput p1, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->wQ:I
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->wQ:I
return v0
.end method