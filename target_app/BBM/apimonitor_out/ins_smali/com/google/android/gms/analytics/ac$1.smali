.class  Lcom/google/android/gms/analytics/ac$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/analytics/i;
.field final synthetic uh:Lcom/google/android/gms/analytics/ac;
.method constructor <init>(Lcom/google/android/gms/analytics/ac;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/ac$1;->uh:Lcom/google/android/gms/analytics/ac;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public currentTimeMillis()J
.registers 3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
return-wide v0
.end method