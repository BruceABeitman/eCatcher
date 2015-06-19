.class public abstract Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.super Lcom/google/android/gms/internal/fe;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/fe;-><init>()V
return-void
.end method
.method protected static b(Ljava/lang/Integer;)Z
.registers 4
const/4 v0, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return v0
:cond_4
invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
move-result v1
const v2, 0x30d400
if-lt v1, v2, :cond_3
const/4 v0, 0x1
goto :goto_3
.end method