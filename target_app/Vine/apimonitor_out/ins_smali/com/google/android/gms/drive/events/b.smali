.class public Lcom/google/android/gms/drive/events/b;
.super Ljava/lang/Object;
.method public static a(ILcom/google/android/gms/drive/DriveId;)Z
.registers 3
if-nez p1, :cond_8
invoke-static {p0}, Lcom/google/android/gms/drive/events/b;->aK(I)Z
move-result v0
if-eqz v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static aK(I)Z
.registers 6
const/4 v0, 0x1
const-wide/16 v1, 0x6
shl-int v3, v0, p0
int-to-long v3, v3
and-long/2addr v1, v3
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-eqz v1, :cond_e
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method