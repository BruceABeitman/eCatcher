.class public Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;
.super Lcom/google/android/gms/auth/UserRecoverableAuthException;
.field private final yV:I
.method constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
.registers 4
invoke-direct {p0, p2, p3}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V
iput p1, p0, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->yV:I
return-void
.end method
.method public getConnectionStatusCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->yV:I
return v0
.end method