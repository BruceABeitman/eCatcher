.class public final Lcom/google/android/gms/internal/dh;
.super Lcom/google/android/gms/internal/dg;
.field private final a:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/df;)V
.registers 4
invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/dg;-><init>(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/df;)V
iput-object p1, p0, Lcom/google/android/gms/internal/dh;->a:Landroid/content/Context;
return-void
.end method
.method public final c()V
.registers 1
return-void
.end method
.method public final d()Lcom/google/android/gms/internal/dp;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/ai;
invoke-direct {v0}, Lcom/google/android/gms/internal/ai;-><init>()V
iget-object v1, p0, Lcom/google/android/gms/internal/dh;->a:Landroid/content/Context;
new-instance v2, Lcom/google/android/gms/internal/at;
invoke-direct {v2}, Lcom/google/android/gms/internal/at;-><init>()V
invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ds;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/as;)Lcom/google/android/gms/internal/ds;
move-result-object v0
return-object v0
.end method