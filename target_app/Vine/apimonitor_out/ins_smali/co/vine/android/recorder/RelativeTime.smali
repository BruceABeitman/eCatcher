.class public Lco/vine/android/recorder/RelativeTime;
.super Ljava/lang/Object;
.source "RelativeTime.java"
.field private end:J
.field public final start:J
.method public constructor <init>(J)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lco/vine/android/recorder/RelativeTime;->start:J
return-void
.end method
.method public getDuration(I)J
.registers 9
const/16 v3, 0x3e8
div-int v2, v3, p1
iget-wide v3, p0, Lco/vine/android/recorder/RelativeTime;->end:J
iget-wide v5, p0, Lco/vine/android/recorder/RelativeTime;->start:J
sub-long v0, v3, v5
int-to-long v3, v2
cmp-long v3, v0, v3
if-gez v3, :cond_12
add-int/lit8 v3, v2, 0x1
int-to-long v0, v3
:cond_12
return-wide v0
.end method
.method public getEnd()J
.registers 3
iget-wide v0, p0, Lco/vine/android/recorder/RelativeTime;->end:J
return-wide v0
.end method
.method public setEnd(J)V
.registers 3
iput-wide p1, p0, Lco/vine/android/recorder/RelativeTime;->end:J
return-void
.end method