.class public abstract Lcom/google/android/gms/internal/fy;
.super Lcom/google/android/gms/internal/eg;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/eg;-><init>()V
return-void
.end method
.method public static c(Ljava/lang/Integer;)Z
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/internal/fo;->ab(I)Z
move-result v0
goto :goto_3
.end method